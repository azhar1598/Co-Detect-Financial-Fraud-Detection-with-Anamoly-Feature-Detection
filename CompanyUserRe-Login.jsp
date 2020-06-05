<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Company User ReLogin Page</title>
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
						<h2 class="title"><a href="#">Invalid Login Details, Please Try Again!!</a></h2>
						<div class="entry">
						<form id="form1" name="form1" method="post" action="Authentication.jsp?type=<%="tuser"%>">
				    <table width="464" border="0" cellspacing="2" cellpadding="2">
                      <tr>
                        <td width="197" height="46" align="center"><span class="style34">
                          <label for="name"><span class="style4 style3">Select Transport Company</span> </label>
                        </span> </td>
					  <td width="253"><select id="s2" name="tname" style="width:150px;" class="text">
                        <option>--Select--</option>
                        <option>VRL</option>
                        <option>SRS</option>
						<option>KESINENI</option>
						<option>Rajahamsa</option>
						<option>KPN</option>
                      </select></td>
                      </tr>
					  <tr>
                        <td width="197" height="46" align="center"><span class="style34"> <span class="style5 style3">
                          <label for="name">User Name (required)</label>
                        </span> </span> </td>
                        <td width="253"><input id="name" name="tuserid" class="text" /></td>
                      </tr>
                      <tr>
                        <td height="40" align="center" class="style5 style34 style3">Password (required)</td>
                        <td><input type="password" id="pass" name="pass" class="text" /></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td><span class="style16">
                          <input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" />
                          <span class="style5"> New User?</span></span><a href="CompanyRegister.jsp" class="style30"><strong> Register </strong></a></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                    </table>
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
						  <li><a href="index.html">Home</a></li>
						  
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
