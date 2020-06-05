<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import ="javax.crypto.Cipher" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Enter Credit Card</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
.style3 {color: #333333}
.style10 {color: #CC3333}
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
						<h2 class="title"><a href="#">Enter Credit Card CVV..</a></h2>
						<div class="entry">
					
			
            <form action="U_BookTicket3.jsp" method="post" id="leavereply">
			<%
			String cardno="";
			try
{	
			
			String tname=request.getParameter("tname");	
			String user=request.getParameter("user");
			String from=request.getParameter("from");
			String to=request.getParameter("to");
			String price=request.getParameter("price");
			
			String bank=(String)application.getAttribute("ubank");
			
			String query="select a_no FROM creditcard where a_name='"+user+"' and b_name='"+bank+"'"; 
           	Statement st=connection.createStatement();
           	ResultSet rs=st.executeQuery(query);
          
	   		if ( rs.next()==true )
	   		{
	   
			 cardno=rs.getString(1);
			
			}
			%>
                    <p>&nbsp;</p>
                    <table align="center" style="margin:0 0 0 30px;">
                      <tr>
                        <td width="174"><div align="center" class="style3">
                            <div align="right" class="style12">
                              <div align="left" class="style82 style10"><strong>Credit Card No</strong></div>
                            </div>
                        </div></td>
                        <td width="152"><div align="left">
                            <input type="text" name="card" value="<%=cardno%>" readonly="readonly" />
                        </div></td>
						</tr>
						<tr>
						<td width="174"><div align="center" class="style3">
                            <div align="right" class="style12">
                              <div align="left" class="style82 style10"><strong>Enter  Credit Card CVV</strong></div>
                            </div>
                        </div></td>
						<td width="152"><div align="left">
                            <input type="text" name="cardcvv" />
                        </div></td>
						</tr>
						<tr>
                          <td width="200" align="center">
                            
                            <div align="right">
                              <input name="tname" type="hidden" value="<%=tname%>" readonly />
                              <input name="user" type="hidden" value="<%=user%>" readonly />
                              <input name="from" type="hidden" value="<%=from%>" readonly />
                              <input name="to" type="hidden" value="<%=to%>" readonly />
                              <input name="price" type="hidden" value="<%=price%>" readonly />
                              <input name="submit" type="submit" style="width:50px; height:25px;" value="Submit"/>
                            </div></td></tr>
                      
                    </table>
					
		              <%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
		            
			        
            </form>
                          
						
						
							
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
