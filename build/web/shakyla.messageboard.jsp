<%-- 
    Document   : shakyla.messageboard
    Created on : 29 Jun 2025, 14.07.20
    Author     : USER
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="jspproject1.Messager"%>
<%@page import="jspproject1.Message"%>
<%
    Messager messager = new Messager("Shakyla");
    
    if(request.getParameter("pengirim")!=null) {
        messager.addMessage(request.getParameter("pengirim"), request.getParameter("pesan"));
    }
    
    ArrayList<Message> list = messager.getList();

    request.setAttribute("list", list);
    
    RequestDispatcher dispatcher = request.getRequestDispatcher("shakyla.messageboard.view.jsp");
    dispatcher.forward(request, response);

%>

