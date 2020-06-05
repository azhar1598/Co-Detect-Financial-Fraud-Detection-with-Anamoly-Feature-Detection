<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Company User Register Page</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
.style3 {color: #333333}
.style4 {color: #000000}
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
						<h2 class="title"><a href="#">Welcome To Transport Company User Registration..</a></h2>
						<p class="title"><img src="images/Register.jpg" alt="" width="280" height="128" /></p>
						<div class="entry">
						<form action="CompanyRegisterStatus.jsp" method="post" >
                    <span class="style4">
			        <label for="gender"><span class="style3">Select Transport Company</span></label>
                    </span>
					 <p class="style4">
                     <select id="s2" name="tname" style="width:150px;" class="text">
                        <option>--Select--</option>
                        <option>VRL</option>
                        <option>SRS</option>
						<option>KESINENI</option>
						<option>Rajahamsa</option>
						<option>KPN</option>
						<option>National</option>
                      </select>
                    </p>
					<label for="name"><span class="style4 style3">
					
					User Name (required)</span></label>
                    <p class="style4">
                      <input id="name" name="tuserid" class="text" />
                    </p>
			        <span class="style4">
			        <label for="password"><span class="style4">Password (required)</span></label>
                    </span>
			        <p class="style4">
                      <input type="password" id="password" name="pass" class="text" />
                    </p>
			        <span class="style4">
			        <label for="email">Email Address (required)</label>
                    </span>
			        <p class="style4">
                      <input id="email" name="email" class="text" />
                    </p>
			        <span class="style4">
			        <label for="mobile">Mobile Number (required)</label>
                    </span>
			        <p class="style4">
                      <input id="mobile" name="mobile" class="text" />
                    </p>
			        <span class="style4">
			        <label for="address">Your Address</label>
                    </span>
			        <p class="style4">
                      <textarea id="address" name="address" rows="3" cols="16"></textarea>
                    </p>
			        <span class="style4">
			        <label for="dob">Date of Birth (required)<br />
                    </label>
                    </span>
			        <p class="style4">
                      <input id="dob" name="dob" class="text" />
                    </p>
			        <span class="style4">
			        <label for="gender">Select Gender (required)</label>
                    </span>
			        <p class="style4">
                      <select id="s1" name="gender" style="width:150px;" class="text">
                        <option>--Select--</option>
                        <option>MALE</option>
                        <option>FEMALE</option>
                      </select>
                    </p>
			       <br />
                      <input name="submit" type="submit" value="REGISTER" />
                    </p>
                    <p>&nbsp;</p>
			        <p align="left" class="style14"><a href="CompanyLogin.jsp" class="style11">Back</a></p>
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
