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
<title>Account Creation Status</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
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
						<h2 class="title"><a href="#">Bank Account Creation Status..</a></h2>
						<div class="entry">
          				<p>
		   <%
			       
					String uname=(String)application.getAttribute("uname");
				    ArrayList list = new ArrayList();
					ServletContext context = getServletContext();

					String dirName =context.getRealPath("Gallery/");
					
										
								
					String paramname=null,bank=null,email=null,addr=null ,accno=null,mno=null,amount=null;
					 //int initialamount=0;
					
					
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							
							paramname =  (String)params.nextElement();
							
							if(paramname.equalsIgnoreCase("accno"))
							{
								accno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("bank"))
							{
								bank=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("email"))
							{
								email=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mobile"))
							{
								mno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("address"))
							{
								addr=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("amount"))
							{
								amount=multi.getParameter(paramname);
							}
							
						
							
						}
									
								String query1="select * from userbankaccount  where user='"+uname+"' "; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
									
								if ( rs1.next() )
							   {
							   
												   %>
  </p>
  
  <p>&nbsp;</p>
  <p class="style5 style6">You Have an Account Already, Make Use of It.. </p>
  <br/>
  <p> <a href="U_ManageBankAccount.jsp" class="style16">Back</a></p>
  <%
							   }
							   else{
				
						
									String query2="select * from userbankaccount  where acc_no='"+accno+"' "; 
									Statement st2=connection.createStatement();
									ResultSet rs2=st2.executeQuery(query2);
									
										
								if ( rs2.next() )
								   {
										%>
  
  
  <p>&nbsp;</p>
  <p class="style7 style5"> Account Number Already Exist.. </p>
  <p> </p>
  <p> <a href="U_BankAccountCreation.jsp" class="style16">Back</a>
      <%
							
								   }
								   else
								   {
								   
								
			PreparedStatement ps=connection.prepareStatement("insert into userbankaccount(acc_no,user,address,email,mobile,bank,amount) values(?,?,?,?,?,?,?)");
									ps.setString(1,accno);
									ps.setString(2,uname);
									ps.setString(3,addr);
									ps.setString(4,email);	
									ps.setString(5,mno);
									ps.setString(6,bank);
									ps.setString(7,amount);
								
									
								   
									
														
									
									int x=ps.executeUpdate();
									if(x>0)
									{
									%>
  </p>
  <p class="style7 style5">Bank Account Created Successfully.. </p>
  <p>
    <%	
										
						%>
  </p>
  <p align="left"><a href="U_ManageBankAccount.jsp" class="style16">Back</a></p>
  <%
						
								}}}}
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