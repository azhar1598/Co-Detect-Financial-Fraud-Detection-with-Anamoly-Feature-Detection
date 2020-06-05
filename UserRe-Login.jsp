<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>User Re-Login Page</title>
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
						<form id="form1" name="form1" method="post" action="Authentication.jsp?type=<%="user"%>">
						<%
	
      	
	

      	try 
	{
      		
      		 ArrayList a1=new ArrayList();
      		
      		 
           
           String query="select bank FROM banklist"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
			a1.add(rs.getString("bank"));
		
	   }
	   
		
		
%>
            <table width="570" border="0" align="left" cellpadding="2" cellspacing="2">
		<tr>
            <td width="185" align="center" valign="middle"><label for="email">
            <div align="center" class="style34 style5 style3">Select Bank (required)</div>
            </label></td>
            <td><p align="left">
                <select id="s1" name="bank">
                            <option>--Select--</option>
							
                            <% 
							for(int i=0;i<a1.size();i++)
							{
							 
								 %>
								<option><%= a1.get(i)%></option>
								<%
							}
							%>
                          </select></p>              </td>
          </tr>
          <tr>
            <td height="46" align="center" valign="middle"><span class="style35">
              <label for="label">              </label>
              </span>
              <label for="label">
              <div align="center" class="style35 style5 style3">User Name (required)</div>
              </label>
              <span class="style35">
                <label for="name"></label>
              </span></td><td width="371"><input id="name" name="userid" class="text" /></td>
          </tr>
          <tr>
            <td height="40" align="center" valign="middle"><span class="style35">
              <label for="email">              </label>
              </span>            <label for="email">
              <div align="center" class="style35 style5 style3">Password (required)</div>
            </label></td><td><input type="password" id="pass" name="pass" class="text" /></td>
          </tr>
          
          <tr>
            <td height="47">&nbsp;</td>
            <td><input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" />
              <span class="style38 style5 style3">New User?</span><span class="style10"><strong><a href="UserRegister.jsp" class="style30"> Register </a></strong></span></td>
          </tr>
		  <tr>
            <td height="49"></td>
            <td> <p align="right"><a href="index.html" class="style36">Back</a></p></td>
          </tr>
        </table>
		<%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
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
