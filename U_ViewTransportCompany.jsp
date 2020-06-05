<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Bank Details Page</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
.style2 {
	color: #FF6600;
	font-weight: bold;
}
.style9 {color:#009966}
.style11 {color:#FF3300}
.style12 {color:#FF9900}
.style13 {color:#660099}
.style14 {color:#333333}
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
						<h2 class="title"><a href="#">All Transport Companies..</a></h2>
						<div class="entry">
						<p>&nbsp;</p>
          
            <%
					  
					  String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from transport"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(6);
								s4=rs.getString(7);								
								s5=rs.getString(4);
								
								
								String descr = new String(Base64.decode(s2.getBytes()));
								
								
					%>
					
					<%
			
			
								out.print("<input type=\"radio\" name=\"t_task\" ");
			
								%><%
						if(s1.equalsIgnoreCase("vrl"))
						{
						
						%>
						<p class="style9"><span class="style9"><a href="U_ViewTransportDetails.jsp?id=<%=i%>&tname=<%=s1%>"></span><span class="style9"><b><%=""+s1%></b> <b><%="  "+"Travels"%></b></a></span> <span class="style26"></span></p>
            
             
              <%
						}
						else if(s1.equalsIgnoreCase("srs"))
						{
						%>
            <p class="style11"><span class="style11"><a href="U_ViewTransportDetails.jsp?id=<%=i%>&tname=<%=s1%>"></span><span class="style11"><b><%=""+s1%></b> <b><%="  "+"Travels"%></b></a></span> <span class="style26"></span></p>
            <%
						}
						else if(s1.equalsIgnoreCase("kesineni"))
						{
						%>
            <p class="style12"><span class="style12"><a href="U_ViewTransportDetails.jsp?id=<%=i%>&tname=<%=s1%>"></span><span class="style12"><b><%=""+s1%></b> <b><%="  "+"Travels"%></b></a></span> <span class="style26"></span></p>
            <%
						}
						else if(s1.equalsIgnoreCase("rajahamsa"))
						{
						%>
            <p class="style13"><span class="style13"><a href="U_ViewTransportDetails.jsp?id=<%=i%>&tname=<%=s1%>"></span><span class="style13"><b><%=""+s1%></b> <b><%="  "+"Travels"%></b></a></span> <span class="style26"></span></p>
            <%
						}
						else 
						{
						%>
		<p class="style14"><span class="style14"><a href="U_ViewTransportDetails.jsp?id=<%=i%>&tname=<%=s1%>"></span><span class="style14"><b><%=""+s1%></b> <b><%="  "+"Travels"%></b></a></span> <span class="style26"></span></p>
            <p>
              <%
						}
						
												
									}
									i++;
							  
									
									
	}
	

catch(Exception e)
{
	e.printStackTrace();
}
%>
</p>
            <p>&nbsp;</p>
            <table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="left"><a href="UserMain.jsp" class="style95">Back</a></div></td>
            </tr>
          </table>
						
						
							
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
