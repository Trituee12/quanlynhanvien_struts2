<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    </head>
    <body>
        <%
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/demodb", "root", "");
            PreparedStatement ps = con.prepareStatement("SELECT  email FROM nhanvien WHERE email = ?");
            ps.setString(1, request.getParameter("email"));
            ResultSet res = ps.executeQuery();
            if (res.next()) {
                out.print("<span style='color:red'>Email đã tồn tại!</span>");
            } else {
                out.print("<span style='color:green'>Email có thể sử dụng</span>");
            }
            
        } catch (Exception e) {
            System.out.println(e);
        }
        %>
    </body>
</html>