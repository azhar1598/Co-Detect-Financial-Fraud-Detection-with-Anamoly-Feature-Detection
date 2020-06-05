<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Ticket Booking History</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
.style3 {color: #333333}
.style4 {color:#000000}
.style5 {color:#2C83B0}

.style7 { color:#663300}
.style51 {color:#CC6600}
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
						<h2 class="title"><a href="#">User <span class="style6" style="color:#FF3300"><%=(String)application.getAttribute("uname")%></span>'s Ticket Booking History..</a></h2>
						<div class="entry">
						<p>&nbsp;</p>
          
	  	      <%
			  
			  String user=(String)application.getAttribute("uname");
 			  String s0="",s1="",s2="",s3="";
			  int s4=0,count=0;
	
			
			
			     
			 
			%>
            </p>
	  	    <table width="572" border="1">
				  <tr bgcolor="#FFFFFF">				 
              <td  width="139"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56"><strong>Transport Name</strong></div></td>      
              <td  width="139"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56"><strong>From Place</strong></div></td>
              <td  width="135" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>To Place</strong></div></td>
              <td  width="123" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>Price</strong></div></td>
			  <td  width="139"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56"><strong>Booked Date</strong></div></td>
                    </tr>
				 
				  <%
					  
					  	
						   	String query="select * from booking where user='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								s0=rs.getString(4);
								s1=rs.getString(5);
								s2=rs.getString(6);
								s3=rs.getString(8);
								s4=rs.getInt(7);				
						
							
						
						count++;
			   
					 %>
							   <tr>
							   <td height="0" align="center"  valign="middle"><div align="center" class="style51">
                <strong><%out.println(s0);%></strong>
              </div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                <%out.println(s1);%>
              </div></td>
              <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                <%out.println(s2);%>
              </div></td>
			  <td height="0" align="center"  valign="middle"><div align="center" class="style4">
                <strong><%out.println(s4);%></strong> Rs/-
              </div></td>
              <td height="0" align="center"  valign="middle"><div align="center" class="style4">
                <%out.println(s3);%>
              </div></td>
              </tr>
							
	     <%
					 }
			
			       %></table> 				   
	 				   
	<p>&nbsp;</p>
				<p>&nbsp;</p>
          
          <p align="right">&nbsp;</p>
          <p align="right">&nbsp;</p>
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
