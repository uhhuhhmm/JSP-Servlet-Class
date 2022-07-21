<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int age = Integer.parseInt(request.getParameter("age"));
	if(age<=19){
%>
	<script type="text/javascript">
		alert("under 19 can't enter")
		history.go(-1)
	</script>
<%
	}else{
		request.setAttribute("name", "Jino");
		RequestDispatcher dispatcher
			=request.getRequestDispatcher("forwardResult.jsp");
		dispatcher.forward(request, response);
	}
%>