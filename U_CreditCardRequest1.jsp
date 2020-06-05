<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import ="javax.crypto.Cipher" %>
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>CC Request Status</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
.style3 {color: #333333}
.style4 {color: #660000}
.style5 {color:#2C83B0}
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
						<h2 class="title"><a href="#">Credit Card Request Status..</a></h2>
						<div class="entry">
						<p>
		   <%
			       
					String uname=(String)application.getAttribute("uname");
				    ArrayList list = new ArrayList();
					ServletContext context = getServletContext();

					String dirName =context.getRealPath("Gallery/");
					
										
								
					String paramname=null,bank=null,aname=null,ncname=null,addr=null ,crlimit=null,cslimit=null;
					 //int initialamount=0;
					
					
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							
							paramname =  (String)params.nextElement();
							
							if(paramname.equalsIgnoreCase("bank"))
							{
								bank=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("aname"))
							{
								aname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("ncname"))
							{
								ncname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("address"))
							{
								addr=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("crlimit"))
							{
								crlimit=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("cslimit"))
							{
								cslimit=multi.getParameter(paramname);
							}
							
						
							
						}
									
								String query1="select * from creditcardrequest  where a_name='"+uname+"' "; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
									
								if ( rs1.next() )
							   {
							   
												   %>
  </p>
  
  <p>&nbsp;</p>
  <p class="style5 style6">You Already Have a Credit Card, Make Use of It.. </p>
  <br/>
  <p> <a href="UserMain.jsp" class="style16">Back</a></p>
  <%
							   }
							  
								   else
								   {
								   
									SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
									SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
									Date now = new Date();
												
									String strDate = sdfDate.format(now);
									String strTime = sdfTime.format(now);
									String dt = strDate + "   " + strTime;
								
								
								
								String aname1 = new String(Base64.encode(aname.getBytes()));
								String crlimit1= new String(Base64.encode(crlimit.getBytes()));
								String cslimit1= new String(Base64.encode(cslimit.getBytes()));
								
								
								
								String a_no="Requested";
								String crn="Requested";
								String cvv="Requested";
								
								int credit_taken=0;
								PreparedStatement ps1=connection.prepareStatement("insert into creditcard(a_no,crn,cvv,b_name,a_name,n_name,address,cr_limit,cs_limit,credit_taken) values(?,?,?,?,?,?,?,?,?,?)");
									
									ps1.setString(1,a_no);
									ps1.setString(2,crn);	
									ps1.setString(3,cvv); 
									ps1.setString(4,bank);
									ps1.setString(5,aname);
									ps1.setString(6,ncname);
									ps1.setString(7,addr);
									ps1.setString(8,crlimit);
									ps1.setString(9,cslimit);
									ps1.setInt(10,credit_taken);
												
									
								  	ps1.executeUpdate();
									
									
									
			PreparedStatement ps=connection.prepareStatement("insert into creditcardrequest(b_name,a_name,n_name,address,a_no,crn,cvv,cr_limit,cs_limit,date) values(?,?,?,?,?,?,?,?,?,?)");
									
									ps.setString(1,bank);
									ps.setString(2,aname1);	
									ps.setString(3,ncname);
									ps.setString(4,addr);
									ps.setString(5,a_no);
									ps.setString(6,crn);
									ps.setString(7,cvv);
									ps.setString(8,crlimit1);
									ps.setString(9,cslimit1);
									ps.setString(10,dt);			
									
								   
									
														
									
									int x=ps.executeUpdate();
									if(x>0)
									{
									%>
  </p>
  <p class="style7">Credit Card Request Sent Successfully.. </p>
  <p>
    <%	
										
						%>
  </p>
  <p align="left"><a href="UserMain.jsp" class="style16">Back</a></p>
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
						  <li><a href="UserMain.jsp">Home</a></li>
           				 <li><a href="UserMain.jsp">Logout </a></li>
						  
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
