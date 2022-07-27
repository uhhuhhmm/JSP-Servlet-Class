package com.j.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.j.dao.BoardDAO;
import com.j.dto.BoardVO;

public class BoardListAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/board/boardList.jsp";
		
		BoardDAO bDao = BoardDAO.getInstance();
		
		// page start
		int page = 1;
		int limit = 10;
		
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));		
		}
		
		int listcount = bDao.getListCount(); // 총 리스트 수를 받아옴
		
		List<BoardVO> boardList = bDao.getBoardList(page, limit); // 페이지번에 해당하는 10개의 레코드
		
		int maxpage = (int)((double)listcount / limit + 0.95);
//		System.out.println(maxpage);
		int startpage =((int)((double)page/10 + 0.9) - 1) * 10 + 1; // 1, 11, 21 ,31 .....................
		int endpage = startpage + 10 -1;// 10, 20, 30, 40 ...............
		
		if(endpage > maxpage)
				endpage = maxpage;
		// END
		
		// List<BoardVO> boardList = bDao.selectAllBoards();
		
		request.setAttribute("page", page);
		request.setAttribute("maxpage", maxpage);
		request.setAttribute("startpage", startpage);
		request.setAttribute("endpage", endpage);
		request.setAttribute("listcount", listcount);
		
		request.setAttribute("boardList", boardList);
		
		RequestDispatcher rd =request.getRequestDispatcher(url);
		rd.forward(request, response);
		
	}
	
}
