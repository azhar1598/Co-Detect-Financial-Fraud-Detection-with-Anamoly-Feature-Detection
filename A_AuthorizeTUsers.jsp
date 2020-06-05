<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Authorize Company Users</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
.style3 {color: #660000}
.style4 {color: #000000;
		 font-size: 14px}
.style5 {font-weight: bold}
.style6 {color: #FF9900;
		font-size: 14px}
.style7 {color:#FF3333;
		font-size: 14px}
.style8 {font-size: 12px}
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
						<h2 class="title"><a href="#">Authorize Transport Company Users..</a></h2>
						<div class="entry">
						<p>&nbsp;</p>
		  <table width="570" border="1" align="left"  cellpadding="0" cellspacing="0"  ">
                    <tr>
                      <td  width="35"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56"><strong>ID</strong></div></td>
                      <td  width="47"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56"><strong>User Name</strong></div></td>
					  <td  width="47"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56"><strong>Transport Company</strong></div></td>
                      <td  width="47"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56"><strong>Email</strong></div></td>
                      <td  width="47"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56"><strong>Address</strong></div></td>
                      <td  width="47"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56"><strong>Status</strong></div></td>
                    </tr>
                    <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from tuser"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(3);
								s2=rs.getString(2);
								s3=rs.getString(5);
								s4=rs.getString(7);
								s5=rs.getString(10);
								
								
								
								
							
						
					%>
                    <tr>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style4">
                        <%out.println(i);%>
                      </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style4">
                            <span class="style7">
                            <strong><%out.println(s1);%></strong>
                            </span></div></td>
					  <td height="0" align="center"  valign="middle"><div align="center" class="style4">
                            <span class="style6">
                            <strong><%out.println(s2);%></strong>
                            </span></div></td>		
                      <td height="0" align="center"  valign="middle"><div align="center" class="style4">
                            
                            <%out.println(s3);%>
                            </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style4">
                            
                            <%out.println(s4);%>
                            </span></div></td>
                      <%
						if(s5.equalsIgnoreCase("waiting"))
						{
						
						%>
                      <td valign="middle" height="0" style="color:#000000;"align="center"><div align="center" class="style22 style5 style20 style30 style37">
                          <div align="center" class="style2"><a href="A_UserStatus.jsp?type=<%="tlogin"%>&id=<%=i%>" class="style32 style30 style8">waiting</a></div>
                      </div></td>
                      <%
						}
						else
						{
						%>
                      <td width="17" height="0" align="center"  valign="middle"><div align="center" class="style4">
                        <strong><%out.println(s5);%></strong>
                      </div></td>
                      <%
						}
						
						%>
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
				  <p class="style19">&nbsp;</p>
		          <p>&nbsp;</p>
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
