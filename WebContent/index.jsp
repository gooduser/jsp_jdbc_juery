<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="StyleSheet.css" />
<title>Hotel management system</title>
</head>
<body>
<div class="header" style="" ><img src="pics/logo.jpg" width="100%"/></div>
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
              <form method="post" action="index.jsp">
						<p></p>
                                   <input type="submit" name="cmd" value="Submit"/>
                 </form>
                <hr/>
</div>
<div class="footer">
</div>
</body>
</html>