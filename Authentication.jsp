<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Authentication Page</title>
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
						<h2 class="title"><a href="#">Authentication.!</a></h2>
						<div class="entry">
            <%@ include file="connect.jsp" %>

<%
   	String type=request.getParameter("type");      
    try{
	
		
		
		if(type.equalsIgnoreCase("bankadmin"))
		{
		
			String name = request.getParameter("adminid");
			String pass = request.getParameter("pass");
			String bank = request.getParameter("bank");
			
			application.setAttribute("adname", name);
			application.setAttribute("adbank", bank);
			
			String sql="SELECT * FROM bankadmin where (username='"+name+"' and password='"+pass+"') and bank='"+bank+"' ";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next())
			{
				response.sendRedirect("AdminMain.jsp");
			}
			else
			{
				response.sendRedirect("AdminRe-Login.jsp");
			}
		}
		
		
		
		 else if(type.equalsIgnoreCase("user"))
		{
			String name = request.getParameter("userid");
			String pass = request.getParameter("pass");
			String bank = request.getParameter("bank");
			
			application.setAttribute("ubank", bank);
			application.setAttribute("uname", name);
			
			String sql="SELECT * FROM user where (username='"+name+"' and password='"+pass+"') and bank='"+bank+"' ";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			
			if(rs.next())
			{
				String sql1="SELECT * FROM user where  (username='"+name+"' and bank='"+bank+"') and loginstatus='Authorized' ";
				Statement stmt1 = connection.createStatement();
				ResultSet rs1 =stmt1.executeQuery(sql1);
			
				if(rs1.next())
			    {
				response.sendRedirect("UserMain.jsp");
				}
				else
				{
									%>
									<br/><h3><p align="left" class="style3">&nbsp;</p>
									  <p align="left" class="style4" style="color:#000000">You are not the Authorized User, Please wait!! </p>
									</h3>
									<br/><br/><a href="UserLogin.jsp">Back</a>
									<%
			    }
			}
			else
			{
				response.sendRedirect("UserRe-Login.jsp");
			}
		}
		else if(type.equalsIgnoreCase("tuser"))
		{
			
			String tname=request.getParameter("tname");
			String tusername=request.getParameter("tuserid");      
         	String Password=request.getParameter("pass");
			
			application.setAttribute("tname",tname);
			application.setAttribute("tuser",tusername);
			
			String sql="SELECT * FROM tuser where (username='"+tusername+"' and password='"+Password+"') and tname='"+tname+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			
			if(rs.next())
			{
			
					String sql1="SELECT * FROM tuser where username='"+tusername+"' and status='Authorized'";
					Statement stmt1 = connection.createStatement();
					ResultSet rs1 =stmt1.executeQuery(sql1);
			
					if(rs1.next())
					{
					response.sendRedirect("CompanyUserMain.jsp");
					}
					else
					{
									%>
									<br/><h3><p align="left" class="style3">&nbsp;</p>
									  <p align="left" class="style4" style="color:#000000">You are not the Authorized User, Please wait!! </p>
									</h3>
									<br/><br/><a href="CompanyLogin.jsp">Back</a>
									<%
			   		 }
			}		 
			else
			{
				response.sendRedirect("CompanyUserRe-Login.jsp");
			}
		}
		else{
		
			}
	}
	catch(Exception e)
	{
		out.print(e);
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
