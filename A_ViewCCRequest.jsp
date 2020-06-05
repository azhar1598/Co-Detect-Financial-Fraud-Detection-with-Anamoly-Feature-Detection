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
<title>Credit Card Request Process</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
.style3 {color: #333333}
.style4 {
	color: #660000;
	font-size: 24px;
}
.style5 {color: #2C83B0; 
		font-size:32px
		}
.style6 {
	color: #660000;
	font-weight: bold;
}
.style7 {color: #660000}
.style9 {color:#000000}

.style12 {color: #009999}
.style44 {color:#FF3300;
		font-size: 14px;}
.style45 {color: #2C83B0;
		font-size: 14px;}
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
						<h2 class="title"><a href="#">Credit Card Requests from <span class="style5"><%=(String)application.getAttribute("adbank")%></span>'s Users..</a></h2>
						<div class="entry">
						<p>&nbsp;</p>
          <p>&nbsp;</p>
          <table width="570" border="1" bgcolor="#FFFFFF" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="106"  valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style56 style57 style6">ID</div></td>
              
			  <td  width="250" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style7 style57 style56"><strong>Account Holder Name</strong></div></td>
			  <td  width="199" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style7 style57 style56"><strong>Credit Limit</strong></div></td>
			  <td  width="199" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style7 style57 style56"><strong>Cash Limit</strong></div></td>
              <td  width="217" valign="middle" style="color: #2c83b0;"><div align="center" class="style7 style57 style56"><strong>Requested Date</strong></div></td>
              <td  width="171" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style7 style57 style56"><strong>Credit Card Number </strong></div></td>
			  <td  width="171" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style57 style56 style7"><strong>CRN </strong></div></td>
			  <td  width="171" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style57 style56 style7"><strong>CVV </strong></div></td>
            </tr>
            <%
					  String bank=(String)application.getAttribute("adbank");
					  String s1,s2,s3,s4,s5,s6,s7,s8;
						int i=0,j=1;
						try 
						{
																					
						   	String query="select * from creditcardrequest where b_name='"+bank+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(9);
								s4=rs.getString(10);
								s5=rs.getString(11);
								s6=rs.getString(6);
								s7=rs.getString(7);
								s8=rs.getString(8);
								
								String an = new String(Base64.decode(s2.getBytes()));
								String cr = new String(Base64.decode(s3.getBytes()));
								String cs = new String(Base64.decode(s4.getBytes()));
								String cdnm= new String(Base64.decode(s6.getBytes()));
								String crn= new String(Base64.decode(s7.getBytes()));
								String cvv= new String(Base64.decode(s8.getBytes()));
								
					%>
            <tr>
              <td height="57" align="center"  valign="middle"><div align="center" class="style9">
                <%out.println(j);%>
              </div></td>
			  <td height="57" align="center"  valign="middle"><div align="center" class="style44">
                <strong><%out.println(an);%></strong>
              </div></td>
			  <td height="57" align="center"  valign="middle"><div align="center" class="style9">
                <%out.println(cr);%>
              </div></td>
              <td height="57" align="center"  valign="middle"><div align="center" class="style9">
                <%out.println(cs);%>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style9">
                <%out.println(s5);%>
              </div></td>
             
              <%
						if(s6.equalsIgnoreCase("Requested"))
						{
						
						%>
              <td valign="middle" height="57" title="Click to generate Credit Card Number" style="color:#000000;"align="center"><div align="center">
                  <div align="center" class="style20 style37 style46"><a href="GenerateCreditCardNm.jsp?typebank=<%=bank%>&amp;id=<%=i%>&accountname=<%=an%>" class="style87 style30 style96 style12"><strong>Generate CC No</strong></a></div>
              </div></td>
              <%
			  			}
						  else
						{
						%> <td width="17" align="center"  valign="middle"><div align="center" class="style12">
							
							<strong><%out.println(cdnm);%></strong>
						  </div></td>
            			 <%}%>
				<%
						if(s7.equalsIgnoreCase("Requested"))
						{
						
						%>
              <td valign="middle" height="57" title="Click to generate Customer Relation Number" style="color:#000000;"align="center"><div align="center">
                  <div align="center" class="style20 style37 style46"><a href="GenerateCRN.jsp?typebank=<%=bank%>&amp;id=<%=i%>&accountname=<%=an%>" class="style87 style30 style96 style12"><strong>Generate CRN</strong></a></div>
              </div></td>
              <%
			  			}
						  else
						{
						%> <td width="17" align="center"  valign="middle"><div align="center" class="style12">
							
							<strong><%out.println(crn);%></strong>
						  </div></td>
            			 <%}%>
				<%
						if(s8.equalsIgnoreCase("Requested"))
						{
						
						%>
              <td valign="middle" height="57" title="Click to generate Card CVV" style="color:#000000;"align="center"><div align="center">
                  <div align="center" class="style20 style37 style46"><a href="GenerateCVV.jsp?typebank=<%=bank%>&amp;id=<%=i%>&accountname=<%=an%>" class="style87 style30 style96 style12"><strong>Generate CVV</strong></a></div>
              </div></td>
              <%
			  			}
						  else
						{
						%> <td width="17" align="center"  valign="middle"><div align="center" class="style12">
							
							<strong><%out.println(cvv);%></strong>
						  </div></td>
            			 <%}%>
						  
            </tr>
            <%
						j+=1;}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
          <p align="left"><a href="AdminMain.jsp" class="style11"></a></p>
          <table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="left"><a href="AdminMain.jsp" class="style95">Back</a></div></td>
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
