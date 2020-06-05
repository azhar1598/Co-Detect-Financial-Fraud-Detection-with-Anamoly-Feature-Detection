<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Transport Fare Details</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
.style4 {color: #000000;
		font-size:12px}
.style5 {color:#2C83B0}
.style7 {color:#CC0066}
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
						<h2 class="title"><a href="#"><span class="style6" style="color:#009966"><%=(String)application.getAttribute("tname")%></span>  Transport Fare Details..</a></h2>
						<div class="entry">
						<p>&nbsp;</p>
          <table width="550" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="139"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56"><strong>From Place</strong></div></td>
              <td  width="135" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>To Place</strong></div></td>
              <td  width="123" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>Price</strong></div></td>
              
			   
            </tr>
            <%
					  String tname=(String)application.getAttribute("tname");
					  String s1,s2;
					  int s3=0;
						
						try 
						{
						   	String query="select * from transportprice where tname='"+tname+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getInt(4);
						
								
								
					%>
            <tr>
              <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                <%out.println(s1);%>
              </div></td>
              <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                <%out.println(s2);%>
              </div></td>
              <td height="0" align="center"  valign="middle"><div align="center" class="style4">
                <%out.println(s3);%>
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
          <p align="right">&nbsp;</p>
          <p align="right">&nbsp;</p>
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
