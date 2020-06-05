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
<title>Transport Details</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
.style3 {color: #333333}
.style4 {color: #000000;
		font-size:12px}
.style5 {color:#2C83B0}
.style7 {color:#009966}
.style9 {color:#FF0066}
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
						<h2 class="title"><a href="#"><span class="style6" style="color:#009966"><%=(String)application.getAttribute("tname")%></span> Transport Details..</a></h2>
						<div class="entry">
						<p>&nbsp;</p>
          <table width="560" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              
			  
              <td  width="159" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>Transport Image</strong></div></td>              
              <td  width="154" valign="middle" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>Description</strong></div></td>
              <td  width="154" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>Contact No</strong></div></td>
			  <td  width="133" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>Email</strong></div></td>
              <td  width="133" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>Address</strong></div></td>
              
			   
            </tr>
            <%
					  String tname=(String)application.getAttribute("tname");
					  String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from transport where t_name='"+tname+"'"; 
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
            <tr>
              
			  
              <td width="140" rowspan="1" align="center" valign="middle" ><div style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="user_Pic.jsp?picture=<%="transportimage"%>&id=<%=i%>" style="width:100px; height:100px;" />
              </a></div></td>
              <td align="center"  valign="middle"><div align="center" class="style4">
                <%out.println(descr);%>
              </div></td>
              <td height="0" align="center"  valign="middle"><div align="center" class="style4">
                <%out.println(s3);%>
              </div></td>
              <td height="0" align="center"  valign="middle"><div align="center" class="style9">
                <%out.println(s4);%>
              </div></td>
              <td width="50" height="0" align="center"  valign="middle"><div align="center" class="style4">
                  <strong><%out.println(s5);%></strong>
              </div></td>
			 		    
            </tr>
            <%
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
          <p align="right"><a href="CompanyUserMain.jsp" class="style11"></a></p>
          <table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="left"><a href="CompanyUserMain.jsp" class="style95">Back</a></div></td>
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
						  <li><a href="CompanyUserMain.jsp">Home</a></li>
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
