<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Adding Transport Details</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
.style3 {color: #333333}
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
						<h2 class="title"><a href="#">Adding Transport Details..</a></h2>
						<div class="entry">
						<form action="C_AddTransport1.jsp" method="post" enctype="multipart/form-data" id="s" ">
			                        <%
									try{
									String tname=request.getParameter("tname");
									%>
                    <table width="500" border="0" align="center">
                      <tr>
                        <td width="146" height="40"><div align="justify"><span class="style8 style38 style3"> Transport Name </span> </div></td>
                        <td width="277"><label>
                          <input type="text" id="t1" name="tname" value="<%=tname%>"  />
                        </label></td>
                      </tr>
					  <tr>
                        <td height="60"><div align="justify"><span class="style3 style8 style38">Description</span></div></td>
                        <td><label>
                          <textarea name="desc" cols="16" rows="2" id="textarea"></textarea>
                        </label></td>
                      </tr>
					  <tr>
                        <td height="60"><div align="justify"><span class="style3 style8 style38">Address</span></div></td>
                        <td><label>
                          <textarea name="address" cols="16" rows="2" id="textarea"></textarea>
                        </label></td>
                      </tr>					  
					  <tr>
                        <td height="40"><div align="justify"><span class="style3 style8 style38">Contact No </span></div></td>
                        <td><label>
                          <input type="text" id="t3" name="cno" />
                        </label></td>
                      </tr>
					  <tr>
                        <td height="40"><div align="justify"><span class="style3 style8 style38">Email Id </span></div></td>
                        <td><label>
                          <input type="text" id="t3" name="mail" />
                        </label></td>
                      </tr>     
					  <tr>
                        <td height="40"><div align="justify"><span class="style3 style8 style38">Location </span></div></td>
                        <td><label>
                          <input type="text" id="t3" name="loc" />
                        </label></td>
                      </tr>                
                      <tr>
                        <td height="40"><div align="justify"><span class="style3 style8 style38"> Select Transport Image </span></div></td>
                        <td><input type="file" id="Image" name="image" style="width:100%" /></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="26">&nbsp;</td>
                        <td>
                          
                          <div align="left">
                            <input type="submit" name="Submit" value="Add Transport" />
                          </div></td>
                      </tr>
                    </table>
					<%
					}
					catch(Exception e)
					{
					out.print(e);
					}
					%>
          </form>
			      <p>&nbsp;</p>
		
					<div align="left"><a href="CompanyUserMain.jsp" class="style11"><strong>Back</strong></a></div>
						
						
							
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
