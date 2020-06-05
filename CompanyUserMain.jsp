<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Company User Main Page</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
.style3 {color: #333333}
-->
</style>
</head>
<body>
<div id="wrapper">
	<div id="menu">
		<ul>
			<li class="current_page_item"><span><a href="index.html">Home</a></span></li>
			<li><a href="AdminLogin.jsp">Bank Admin</a></li>
			<li><a href="CompanyLogin.jsp">Transport Company</a></li>
			<li><a href="UserLogin.jsp">User</a></li>
			<li><a href="#"></a></li>
			<li><a href="#"></a></li>
		</ul>
	</div>
	<!-- end #menu -->
	<div id="header">
		<div id="logo">
			<h1><a href="#" class="style1">CoDetect: Financial Fraud Detection With Anomaly Feature Detection</a></h1>
	  </div>
		<div id="search">
			<form method="get" action="">
				<fieldset>
					<input type="text" name="s" id="search-text" size="15" value="enter keywords here..." />
					<input type="submit" id="search-submit" value="GO" />
				</fieldset>
			</form>
		</div>
	</div>
	<div id="splash">&nbsp;</div>
	<!-- end #header -->
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
				  <div class="post">
						<h2 class="title"><a href="#">Welcome <span class="style6" style="color:#009966"><%=(String)application.getAttribute("tname")%></span> Travels User <span class="style6" style="color:#006699"><%=(String)application.getAttribute("tuser")%></span>..</a></h2>
						<div class="entry">
						<%
	String tname =(String)application.getAttribute("tname");
         %>
						
						
							
					</div>
					    <p><img src="images/Company.jpg" alt="" width="511" height="326" /></p>
			      </div>
				  <div class="post"></div>
					<div style="clear: both;">&nbsp;</div>
				</div>
				<!-- end #content -->
				<div id="sidebar">
				  <ul><li><h2>Menu</h2>
					  <ul>
						  <li><a href="CompanyUserMain.jsp">Home</a></li>
						  <li><a href="C_AddTransport.jsp?tname=<%=tname%>">Add Transport Details</a></li>
						  <li><a href="C_ViewTransportDetails.jsp">View Transport Details</a></li>
						  <li><a href="C_FixTravelPrice.jsp?tname=<%=tname%>">Fix Travel Price Based On Location</a></li>
						  <li><a href="C_FareDetails.jsp">View All Travel Fare Details</a></li>
						  <li><a href="Company_BookedTickets.jsp">View All Booked Ticket Details</a></li>
						  <li><a href="Company_FraudUsers.jsp">Find Financial Fraud</a></li>
						  <li><a href="Company_FraudTypes.jsp">View Types of Financial Frauds</a></li>
						  <li><a href="CompanyLogin.jsp">Logout</a></li>
					  </ul>
						</li>
					  
					  <li>
						  <h2>&nbsp;</h2>
				    </li>
				  </ul>
			  </div>
				<!-- end #sidebar -->
				<div style="clear: both;">&nbsp;</div>
			</div>
		</div>
	</div>
	<!-- end #page -->
</div>
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
