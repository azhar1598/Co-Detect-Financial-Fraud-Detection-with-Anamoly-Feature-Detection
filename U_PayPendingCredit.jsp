<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Credit amount payment</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
.style4 {color: #660000}
.style5 {color: #000000}
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
						<h2 class="title"><a href="#">Pay Back Credit Amount..</a></h2>
						<div class="entry">
						<%String user=request.getParameter("user");
		  String pamt=request.getParameter("pamt");
		  String acno=request.getParameter("acno");
		  String bank=(String)application.getAttribute("ubank");%>
          <form action="U_PayPendingCreditStatus.jsp" method="post" >
            <table width="549" border="0" cellspacing="2" cellpadding="2">
              <tr>
                <td width="220" height="57"><span class="style48">
                  <label for="name"><span class="style15 style5">Account Holder Name </span></label>
                </span></td>
                <td width="315"><span class="style48 style15">
                  <input type="text"  name="name" value="<%=user%>" readonly="readonly"/>
                </span></td>
              </tr>
              <tr>
                <td height="50"><span class="style48 style15"><span class="style15">
                  <label for="name"><span class="style5">Bank Name</span> </label>
                </span></span></td>
                <td><span class="style48 style15">
                  <input type="text"  name="bank" value="<%=bank%>" readonly="readonly"/>
                </span></td>
              </tr>
              <tr>
                <td height="45"><span class="style60 style5">
                  <label for="amount">Amount To Be Paid (required)</label>
                </span> </td>
                <td><span class="style50 style15"><span class="style58">
                  <input type="text"  name="amount" value="<%=pamt%>" readonly="readonly" />
                </span></span></td>
              </tr>
			  <tr>
                <td height="53"><span class="style60">
                  <label for="cardno"><span class="style5">Enter Bank Account No</span></label>
                  <span class="style58 style5">
                  <label for="cardno">(required)</label>
                  </span><span class="style58"><strong><label for="cardno"></label>
                  </strong></span> </span></td>
                <td><span class="style50"><span class="style58">
                  <input type="text"  name="accno" value="<%=acno%>" readonly="readonly" />
                </span></span></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><p class="style48">
                  <input name="submit" type="submit" value="   Submit  " />
                </p></td>
              </tr>
            </table>
          </form>
          <p align="left"><a href="UserMain.jsp" class="style11">Back</a></p>
		  
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