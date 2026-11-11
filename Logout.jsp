   <%@page import="db.DB"%>
<%@page import="java.sql.*"%>
<%
    out.println("<script type=\"text/javascript\">");
    out.println("alert(\"Logout Successfully\")");
    out.println("</script>");
    RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
    rd.include(request, response);
%>
