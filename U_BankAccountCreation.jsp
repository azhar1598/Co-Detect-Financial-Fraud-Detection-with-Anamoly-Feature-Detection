<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Bank Account Creation</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
.style3 {color:#FF3300}
.style4 {color: #660000}
.style5 {color: #333333}
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
						<h2 class="title"><a href="#">User <span class="style3"><%=(String)application.getAttribute("uname")%></span>'s <br />
Bank Account Creation..</a></h2>
						<div class="entry">
          				<p>&nbsp;</p>
						<%
						
						String user=(String )application.getAttribute("uname");
						String bank=(String )application.getAttribute("ubank");
						
						String s1,s2,s3,s4,s5;
						
						 
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								
								
								s1=rs.getString(5);
								s2=rs.getString(6);
								s3=rs.getString(7);
								
								
								
								
					%>
            <form action="U_BankAccountAuthentication.jsp" method="post" id="" enctype="multipart/form-data">
  <label for="name"><span class="style43 style5">Account Number (required)</span></label>
  <p class="style43">
    <input id="name" name="accno" class="text" />
  </p>
  <span class="style43">
  <label for="bank"><span class="style5">Bank (required)</span></label>
  </span>
  <p class="style43">
    <input id="bank" name="bank" value="<%=bank%>" readonly />
  </p>
  <span class="style43 style5">
  <label for="email">Email Id</label>
  </span>
  <p class="style43">
    <input id="email" name="email"value="<%=s1%>" readonly />
  </p>
  <span class="style43">
  <label for="mobile"><span class="style5">Mobile Number</span></label>
  </span>
  <p class="style43">
    <input id="mobile" name="mobile" value="<%=s2%>" readonly />
  </p>
  <span class="style43">
  <label for="address"><span class="style5">Address</span></label>
  </span>
  <p class="style43">
     <input id="address" name="address" value="<%=s3%>" readonly />
  </p>
  <p class="style9">
    <span class="style42 style5">
    <label for="amount">Amount (required)</label>
    </span> </p>
  <p class="style9">
    <input id="amount" name="amount" class="text" />
  </p>
  <p align="left" class="style9"><br />
      <input name="submit" type="submit" value="Create Account" />
  </p>
  </form>
  <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
					<p class="style19">&nbsp;</p>
				  <p><a href="U_ManageBankAccount.jsp" class="style16">Back</a></p>
				  
	  				
					</div>
					  </div>
				  <div class="post"></div>
					<div style="clear: both;">&nbsp;</div>
				</div>
				<!-- end #content -->
				<div id="sidebar">
				  <ul><li><h2>Menu</h2>
					  <ul>
						  <li><a href="UserMain.jsp">Home</a></li>						  
          				  <li><a href="UserLogin.jsp">Logout </a></li>
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