<%-- 
    Document   : Mail
    Created on : May 9, 2018, 12:21:20 PM
    Author     : Gaurav Nagar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.EmailUtility" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ServletContext context = getServletContext();
       String host = context.getInitParameter("host");
        String port = context.getInitParameter("port");
        String user  = context.getInitParameter("user");
        String pass = context.getInitParameter("pass");
        
        System.out.println(host+" "+port+" "+user+" "+pass);
        
        
        String date = request.getParameter("date");
        String photo_id_type= request.getParameter("photo_id_type");
        String photo_id_no = request.getParameter("photo_id_no");
        String applicant_from = request.getParameter("applicant_from");
        String applicant_to = request.getParameter("applicant_to");
        String servant_name_first = request.getParameter("servant_name_first");
        String servant_name_middle = request.getParameter("servant_name_middle");
        String servant_name_last = request.getParameter("servant_name_last");
        String father_husband_name_first = request.getParameter("father_husband_name_first");
        String father_husband_name_middle = request.getParameter("father_husband_name_middle");
        String father_husband_name_last = request.getParameter("father_husband_name_last");
        String optradio = request.getParameter("optradio");
        String caste = request.getParameter("caste");
        String optradio1 = request.getParameter("optradio1");
        String date_of_birth = request.getParameter("date_of_birth");
        String age = request.getParameter("age");
        String servant_state = request.getParameter("servant_state");
        String servant_police_district = request.getParameter("servant_police_district");
        String servant_police_station = request.getParameter("servant_police_station");
        String permanent_address = request.getParameter("permanent_address");
        
                   String resultMessage = "";
        //PrintWriter out = response.getWriter();
        try {
            
            EmailUtility.sendEmail(host, port, user, pass, date,photo_id_type,photo_id_no,applicant_from, applicant_to,servant_name_first,servant_name_middle,servant_name_last,father_husband_name_first,father_husband_name_middle,father_husband_name_last,optradio,caste,optradio1,date_of_birth,age,servant_state,servant_police_district,servant_police_station, permanent_address);
            resultMessage = "The e-mail was sent successfully";
            
            /*
             * TODO output your page here. You may use following sample code.
             */
            
        }catch (Exception ex) {
            ex.printStackTrace();
            resultMessage = "There were an error: " + ex.getMessage();
        }
        
        finally { 
            RequestDispatcher rd = request.getRequestDispatcher("Result.jsp");
            request.setAttribute("msg",resultMessage);
            rd.forward(request, response);
             //request.setAttribute("Message", resultMessage);
            //getServletContext().getRequestDispatcher("/Result.jsp").forward(request, response);
            //response.sendRedirect("Result.jsp");
        }
        %>
    </body>
</html>
