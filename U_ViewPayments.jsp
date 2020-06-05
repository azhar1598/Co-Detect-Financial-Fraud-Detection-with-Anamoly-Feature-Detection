<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>User Payment Details</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
.style3 {color: #660000}
.style4 {color: #000000}
.style5 {color: #FF3300;
		font-size: 24px;
		}
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
						<h2 class="title"><a href="#">User <span class="style6" style="color:#FF3300"><%=(String)application.getAttribute("uname")%></span>'s Payment Details..</a></h2>
						<div class="entry">
						<p>&nbsp;</p>
          <table width="570" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
			  <td  width="170"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style3 style57 style56"><strong>ID</strong></div></td>
              <td  width="170"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style3 style57 style56"><strong>Credit Card Number</strong></div></td>
              <td  width="146" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style3 style57 style56"><strong>User Name</strong></div></td>
              <td  width="152" valign="middle" style="color: #2c83b0;"><div align="center" class="style3 style57 style56"><strong>Bank</strong></div></td>             
              <td  width="150" valign="middle" style="color: #2c83b0;"><div align="center" class="style3 style57 style56"><strong>Payment Pending</strong></div></td>
              <td  width="130" valign="middle" height="34" style="color: #2c83b0;">&nbsp;</td>
            </tr>
           
            <%
					  String user=(String)application.getAttribute("uname");
					  String bank=(String)application.getAttribute("ubank");
					  String s1,s2,s3,s4,s5,s6,s7,ac_no="";
						int i=1;
						try 
						{
						
							String sql="select acc_no from userbankaccount where user='"+user+"' and bank='"+bank+"'"; 
						   	Statement stmt=connection.createStatement();
						   	ResultSet rs22=stmt.executeQuery(sql);
					   		if ( rs22.next()==true )
					   		{

								ac_no=rs22.getString(1);
								
							}	
						
						
						   	String query="select * from creditcard where a_name='"+user+"' and b_name='"+bank+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{

								s1=rs.getString(1);
								s2=rs.getString(5);
								s3=rs.getString(4);
								s4=rs.getString(10);
																
							
								
					%>
            <tr>
              <td height="45" align="center"  valign="middle"><div align="center" class="style4">
                <strong><%out.println(i);%></strong>
              </div></td>
              <td height="45" align="center"  valign="middle"><div align="center" class="style12">
                <strong><%out.println(s1);%></strong>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style44">
                <strong><%out.println(s2);%></strong>
              </div></td>
              <td height="45" align="center"  valign="middle"><div align="center" class="style45">
                 <strong><%out.println(s3);%></strong>
              </div></td>             
			  <td align="center"  valign="middle"><div align="center" class="style4">
                 <strong><%out.println(s4);%></strong>
                Rs/-
              </div></td>
              <td height="45" align="center"  valign="middle"><div align="center" class="style99 style100">
			  <form action="U_PayPendingCredit.jsp" method="post">
			  <input name="user" type="hidden" value="<%=s2%>" readonly="" />
			  <input name="pamt" type="hidden" value="<%=s4%>" readonly="" />
			  <input name="acno" type="hidden" value="<%=ac_no%>" readonly="" />
			  <input name="Submit" type="Submit" value="Pay Pending Amount" />
			  </form>
			   </div></td>
            </tr>
            <%
						i+=1;}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
          <p align="right"><a href="UserMain.jsp" class="style11"></a></p>
          <table width="443" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="435"><div align="left"><a href="UserMain.jsp" class="style95">Back</a></div></td>
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