package unit05;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RadioServlet")
public class RadioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RadioServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		String name = request.getParameter("name");
		
		String ssnf = request.getParameter("ssnf");
		String ssnb = request.getParameter("ssnb");		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String gender = request.getParameter("gender");
		String chk_mail = request.getParameter("chk_mail");
		String content = request.getParameter("content");
		String[] items = request.getParameterValues("item");
		String job = request.getParameter("job");
		String[] interest = request.getParameterValues("intlabel forerest");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html><style>body{text-align:center;}");
		if(items == null) {
			out.print("#gunwoo{color:red}");
		}
		
		out.print("</style><body>");
		out.println("당신이 입력한 정보입니다.<hr>");
		out.println("이름  : <b>");
		out.println(name);
		
		out.println("</b><br> 주민번호 : <b>");	
		out.println(ssnf);
		out.println("-" + ssnb);
		out.println("</b><br> ID : <b>");
		out.println(id);
		
		out.println("</b><br> PASSWORD : <b>");
		out.println(pwd);
		
		out.println("</b><br> 성별 : <b>");
		out.println(gender);
		out.println("</b><br> 메일 정보 수신 여부 : <b>");
		out.println(chk_mail);
		out.println("</b><br> 당신이 선택한 악세사리 항목 : <b id='gunwoo'>");
		if (items == null) {
			out.print("선택한 항목이 없습니다.");
		} else {
			for (String item : items) {
				out.print(item + " ");
			}
		}
		
		out.println("</b><br> 당신이 선택한 직업 : <b>");
		if (job == "") {
			out.print("선택한 직업이 없습니다");
		}else {
			out.println(job);
		}
		
		out.println("</b><br> 당신이 선택한 관심분야 : <b>");
		if(interest == null) {
			out.print("선택한 관심분야가 없습니다");
		}else {
			for(String inter : interest) {
				out.print(inter + " ");
			}
		}
		
		
		out.println("</b><br> 가입 인사 : <b><pre>");
		out.println(content);

		out.println("</b></pre><a href='javascript:history.go(-1)'>다시</a>");
		out.print("</body></html>");
		out.close();
	}
}
