package unit06;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MemberServlet")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemberServlet() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html><body>");
		String name = request.getParameter("name");
		out.print("Name : <b>");
		out.print(name);
		
		String ssf = request.getParameter("ssf1") + "-" + request.getParameter("ssf2");
		out.print("</b><br> SSF  : <b>");
		out.print(ssf);
		
		String id = request.getParameter("id");
		out.print("</b><br> ID  : <b>");
		out.print(id);
		
		String pwd = request.getParameter("pwd");
		out.print("</b><br> PASSWORD  : <b>");
		out.print(pwd);
		
		String email = request.getParameter("email");
		if(request.getParameter("email_dns").trim() == "") {
			email += "@" + request.getParameter("emailaddr");
		}else {
			email += "@" + request.getParameter("email_dns");
		}
		out.print("</b><br> Email : <b>");
		out.print(email);
				
		
		String zip = request.getParameter("zip");
		out.print("</b><br> ZIP : <b>");
		out.print(zip);
		
		String addr = request.getParameter("addr1") + request.getParameter("addr2");
		out.println("</b><br>Address<b>");
		out.println(addr);
		
		String ph = request.getParameter("ph");
		out.println("</b><br>PH : <b>");
		out.println(ph);
		
		String job = request.getParameter("job");
		out.println("</b><br> job : <b>");
		out.println(job);
		
		String[] interest = request.getParameterValues("interest");
		out.println("</b><br> 당신이 선택한 관심분야 : <b>");
		if(interest == null) {
			out.print("선택한 관심분야가 없습니다");
		}else {
			for(String inter : interest) {
				out.print(inter + " ");
			}
		}
		
		out.println("</b><br><br><a href='javascript:history.go(-1)'>다시</a>");
		out.print("</body></html>");
	    out.close();

	}


}
