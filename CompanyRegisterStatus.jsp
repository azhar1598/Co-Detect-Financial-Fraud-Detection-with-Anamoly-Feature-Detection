<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.oreilly.servlet.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Company User Register Status</title>
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
						<h2 class="title"><a href="#">Transport Company User Registration Status</a></h2>
						<div class="entry">
						<%			
						
					String	tname=request.getParameter("tname");	
					String	uname=request.getParameter("tuserid");
					String	pass=request.getParameter("pass");
					String	email=request.getParameter("email");
					String	mno=request.getParameter("mobile");
					String	addr=request.getParameter("address");
					String	dob=request.getParameter("dob");
					String	gender=request.getParameter("gender");
					
					
					try {
								
														
						
		
						
			 			String query1="select * from tuser  where username='"+uname+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
                  </p>
                  </label>
            
		          <p class="style18 style24">&nbsp;</p>
		          <p class="style4" style="color:#000000">User Name Already Exist..</p>
		          <p align="left"><a href="CompanyRegister.jsp" class="style5 style16 style35">Back</a></p>
            <p>&nbsp;            </p>
		          <p>
		            <%
				
					   }
					   else
					   {
					   
					  String status = "Waiting";
					  
PreparedStatement ps=connection.prepareStatement("insert into tuser(tname,username,password,email,mobile,address,dob,gender,status) values(?,?,?,?,?,?,?,?,?)");
						ps.setString(1,tname);
						ps.setString(2,uname);
						ps.setString(3,pass);
						ps.setString(4,email);	
						ps.setString(5,mno);
						ps.setString(6,addr);
						ps.setString(7,dob);
						ps.setString(8,gender);
						ps.setString(9,status);
				
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                  </p>
		          <p class="style23">&nbsp;</p>
		          <p class="style4" style="color:#000000">Registration Successfull.</p>
		          <p class="style19">&nbsp;</p>
		          <p><a href="CompanyLogin.jsp" class="style16">Back</a></p>
		          <%
			
					}}}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
						
						
							
					</div>
					  </div>
				  <div class="post"></div>
					<div style="clear: both;">&nbsp;</div>
				</div>
				<!-- end #content -->
				<div id="sidebar">
				  <ul><li><h2>Menu</h2>
					  <ul>
						  <li><a href="index.html">Home</a></li>
						  
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
