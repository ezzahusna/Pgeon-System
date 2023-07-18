<%
	if(session.getAttribute("status") != null){
		session.removeAttribute("status");
		session.removeAttribute("role");
		response.sendRedirect("index.jsp");
		session.setAttribute("success", "You've successfully logged out.");
	}
%>