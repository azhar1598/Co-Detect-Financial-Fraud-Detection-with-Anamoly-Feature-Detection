<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>User Account Details</title>
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
.style6 {color: #000000}
.style25 {color: #2C83B0}
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
Bank Account Details..</a></h2>
						<div class="entry">
						<p>&nbsp;</p>
		  <table width="500" border="1" align="center"  cellpadding="0" cellspacing="0"  >
                    
                    <%
						
						String user=(String )application.getAttribute("uname");
						
						String i,s1,s2,s3,s4,s5;
						int s6=0;;
						 
						try 
						{
						   	String query="select * from userbankaccount where user='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getString(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getInt(7);
								
								
					%>
                    <tr>
                      <td  width="176" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style9 style41 style4" style="margin-left:20px;"><strong>Bank Account Number </strong></div></td>
                      <td  width="221" valign="middle" height="40" style="color:#FF0000;"><div align="left" class="style18" style="margin-left:20px;">
                          <strong><%out.println(i);%></strong>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="176" valign="middle" height="50" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style9 style41 style4" style="margin-left:20px;"><strong>User Name </strong></div></td>
                      <td  width="221" valign="middle" height="50" style="color:#009999"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <strong><%out.println(s1);%></strong>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="176" align="left" valign="middle" height="50" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style9 style41 style4" style="margin-left:20px;"><strong>Address</strong></div></td>
                      <td  width="221" align="left" valign="middle" height="50" style="color: #000000;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <%out.println(s2);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="176" align="left" valign="middle" height="50" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style9 style41 style4" style="margin-left:20px;"><strong>Email</strong></div></td>
                      <td  width="221" align="left" valign="middle" height="50" style="color:#CC6600"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <%out.println(s3);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style9 style41 style4" style="margin-left:20px;"><strong>Mobile</strong></div></td>
                      <td align="left" valign="middle" height="51" style="color: #000000;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <%out.println(s4);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style9 style41 style4" style="margin-left:20px;"><strong>Bank</strong></div></td>
                      <td align="left" title="Click to View Bank Details" valign="middle" height="51" style="color: #2C83B0;"><div align="left" class="style10 style33 style42 style43 style44"><a href="U_ViewBankDetails.jsp?bname=<%=s5%>" class="style25" style="margin-left:20px;">
                          <strong><%out.println(s5);%></strong></a>
                      </div></td>
                    </tr>
                    <tr>
                      <td   width="176" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style4 style14 style7 style15 style9 style41" style="margin-left:20px;"><strong>Amount</strong></div></td>
                      <td  width="221" align="left" valign="middle" height="51" style="color: #000000;"><div align="left">
                        <div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <strong><%out.println(s6);%></strong>
                        <span class="style6">Rs/-</span>                      </div></td>
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

<p>&nbsp;</p>
		<div align="left" class="style22"><a href="U_ManageBankAccount.jsp" class="style11">Back</a></div>
          
          
         
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
