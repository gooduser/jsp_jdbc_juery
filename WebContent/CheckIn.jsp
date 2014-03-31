<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.lang.*"
       import ="java.sql.*"%>
<%@ taglib uri="taglib61.tld" prefix="cal" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.9.1.js"></script>
  <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script>
  $(function() {
    $( "#datepicker" ).datepicker();
  });
  </script>
   <style type="text/css">
    .container {
        width: 500px;
        clear: both;
    }
    .container input {
        width: 100%;
        clear: both;
    }
.hidden {
	opacity: 0;
	position: absolute;
}
.visible {
	opacity: 1;
}
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link rel="stylesheet" type="text/css" href="css/StyleSheet.css" />
<title>Insert title here</title>
 </head>




<body>
<div class="header" style="" >
<img src="pics/logo.jpg" width="100%"/>
</div>
<div class="left">
  <ul class="vertical_menu">
   <li>
        <a href="index.jsp">Home</a>
    </li>
    <li>
        <a href="CheckIn.jsp">Traveler CheckIn</a>
    </li>
    <li>
        <a href="CheckOut.jsp">Traveler Checkout</a>
    </li>
    <li>
        <a href="RoomManagement.jsp">Rooms management</a>
    </li>
    <li>
        <a href="Accounting.jsp">Accunting</a>
    </li>
    <li>
        <a href="Reservation.jsp">Reserveation</a>
    </li>
    <li>
        <a href="Reports.jsp">Reports</a>
    </li>
    <li>
        <a href="UserManagement.jsp">User Manegment</a>
    </li>
   </ul>
</div>
<div class="center" >
<%
    String cmd=request.getParameter("cmd");
    String nameInputp=request.getParameter("nameInput");
    String familyInputp=request.getParameter("familyInput");
    String nationalityp=request.getParameter("nationality");
    String nationalIdp=request.getParameter("nationalId");
    int IDType=0;
	String result ="enter data!";
    if(cmd==null) cmd="";
    if(cmd.equals("Insert")) 
    {
       		try
       		{	  String sql="INSERT INTO customers( Name, family, IDType, IDNumber, Nationality) "+
            	  "VALUES ('"+nameInputp+"','"+familyInputp+"',"+IDType+",'"+nationalIdp+"','"+nationalityp+"')";
                  String url="jdbc:mysql://localhost:3306/hustel_db";
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection cn = DriverManager.getConnection(url, "root", "beh5713"); ;
              	  Statement st=cn.createStatement();
                  int rs=st.executeUpdate(sql);
                  result = "Inserted successfully";
                  st.close();
                  cn.close();
       		} catch( Exception e){
       			e.printStackTrace();
       		}
    }
    
%>
              <form method="post" action="CheckIn.jsp">
                     <div class="container">
                     <label>Name:</label>
                     <input type="text" name="nameInput" value=""/><br/>
                     <label>Family:</label>
                     <input type="text" name="familyInput" value=""/><br/>
                     <label>Country:</label>
                     <input type="text" name="nationality" value=""/><br/>
					 <label>ID:</label>
                     <input type="text" name="nationalId" value=""/><br/>
                      <%
                       String sql="select * from rooms";
                       String url="jdbc:mysql://localhost:3306/hustel_db";
                       Class.forName("com.mysql.jdbc.Driver");
                      Connection cn = DriverManager.getConnection(url, "root", "beh5713"); ;
                       Statement st=cn.createStatement();
                       ResultSet re=st.executeQuery(sql);
          				%>
						<select name="searchlist" style="width: 100%">
		 				<%
						while(re.next())
						{
						String un=re.getString("RoomNumber");
						String un2=re.getString("idRooms");
						%>
						<option value="<%= un2%>"><%= un%></option>
						<% 
						}
						%>
						</select>
					<input id="datepicker" name="date" type="text" /> 
					<br/>
             </form>
                <p></p>
                 <%=result%>
 </div>
<div class="footer">
</div>
</body>
</html>