<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="javax.crypto.Cipher" %>
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Adding Bank Status</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
.style2 {color: #FF0000; font-size: 18px;}
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
						<h2 class="title"><a href="#">Adding Bank Details Status..</a></h2>
						<div class="entry">
						<%
			       
   				   		
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String bname=null,address=null,location=null,pin=null,contact=null,mail=null,image=null,bin = "",uses=null, paramname=null;
					
					FileInputStream fs=null;
					
					File file1 = null;	
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("bname"))
							{
								bname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("address"))
							{
								address=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("loc"))
							{
								location=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pin"))
							{
								pin=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("cno"))
							{
								contact=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mail"))
							{
								mail=multi.getParameter(paramname);
							}
							
							
							}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								
							}		
						}
						
					
						FileInputStream fs1 = null;
			 			String query1="select * from bank where b_name='"+bname+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
                  <p class=" style1" style="color:#660000">&nbsp;</p>
                  <p class=" style1" style="color:#000000">Bank Name Already Exist..</p>
                  <p class="style41"><a href="A_AddBank.jsp" class="style7 style46"><strong>Back</strong></a></p>
                    <span class="style41">
                    <%
				
					   }
					   else
					   {
					   
					   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		   	           SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			           Date now = new Date();

			           String strDate = sdfDate.format(now);
			           String strTime = sdfTime.format(now);
			           String date = strDate + "   " + strTime;
						
					   
					    int rank =0;
						

						 
					PreparedStatement ps=connection.prepareStatement("insert into bank(b_name,b_addr,b_loc,b_pin,b_cno,b_mail,b_image,date) values(?,?,?,?,?,?,?,?)");
						
						ps.setString(1,bname);
						ps.setString(2,address);	
						ps.setString(3,location);
						ps.setString(4,pin);	
				        ps.setString(5,contact);
						ps.setString(6,mail);	
						ps.setBinaryStream(7,(InputStream)fs, (int)(file1.length()));
						ps.setString(8,date);
						
						
						ps.executeUpdate();
					   
						%>
                    </span>
					 <p class="style1" style="color:#660000">&nbsp;</p>
					 <p class="style2" style="color:#000000">Bank Added Successfully..</p>
					 <span class="style41">
                    </p>
                    </span>
<p class="style41">&nbsp; </p>
                    <p class="style41"><a href="AdminMain.jsp" class="style7 style46"><strong>Back</strong></a><a href="A_AddBank.jsp" class="style7 style42"></a></p>
                    <span class="style41">
                    <%
			
					
					
					
					
						}
					}
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
						  <li><a href="AdminMain.jsp">Home</a></li>
           				 <li><a href="AdminLogin.jsp">Logout </a></li>
						  
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
