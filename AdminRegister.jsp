<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>BankAdminRegister</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
.style4 {font-weight: bold}
.style5 {color: #333333}
.style6 {
	color: #FF3300;
	font-weight: bold;
}
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
						<h2 class="title"><a href="#">Bank Admin Registration Page..</a></h2>
						<div class="entry">
						<form action="AdminRegisterStatus.jsp" method="post" id="" enctype="multipart/form-data">
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
                        <span class="style5">
                        <label for="name">Select Bank (required)</label>
                        </span>
                        <label for="name"><span class="style4">
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
                </select>
            </span></label>
            <a href="ViewBankList.jsp" class="style6">View Bank List</a> <br/>
            <br/>

            <label for="name"><span class="style5">
            Bank Admin Name (required)</span></label>
            <p class="style4">
              <input id="name" name="adminid" class="text" />
            </p>
            <span class="style4">            </span>
            <label for="password"><span class="style5">Password (required)</span></label>
                        
            <p class="style4">
              <input type="password" id="password" name="pass" class="text" />
            </p>
            <span class="style4">
            <label for="email"></label>
            </span>
            <label for="email"><span class="style5">Email Address (required)</span></label>
            <span class="style4">
            <label for="email"></label>
            </span>
            <p class="style4">
              <input id="email" name="email" class="text" />
            </p>
            <span class="style4">
            <label for="mobile"></label>
            </span>
            <label for="mobile"><span class="style5">Mobile Number (required)</span></label>
            <span class="style4">
            <label for="mobile"></label>
            </span>
            <p class="style4">
              <input id="mobile" name="mobile" class="text" />
            </p>
            <span class="style4">            </span>
            <label for="address"><span class="style5">Your Address</span></label>
            <span class="style4">            </span>
            <p class="style4">
              <textarea id="address" name="address" rows="2" cols="50"></textarea>
            </p>
            <span class="style4">            </span>
            <label for="dob"><span class="style5">Date of Birth (required)</span></label>
            <span class="style4">
            <label for="dob"><br />
            </label>
            </span>
            <p class="style4">
              <input id="dob" name="dob" class="text" />
            </p>
            <span class="style4">
            <label for="gender"></label>
            </span>
            <label for="gender"><span class="style5">Select Gender (required)</span></label>
            <span class="style4">
            <label for="gender"></label>
            </span>
            <p class="style4">
              <select id="s1" name="gender" style="width:480px;" class="text">
                <option>--Select--</option>
                <option>MALE</option>
                <option>FEMALE</option>
              </select>
            </p>
            <span class="style4">            </span>
            <label for="pic"><span class="style5">Select Profile Picture(required)</span></label>
            <span class="style4">            </span>
            <span class="style4">
            <input type="file" id="pic" name="pic" class="text" />
            </span>
            <p><br />
                <input name="submit" type="submit" value="REGISTER" />
            </p>
			<%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </form>
         <div align="center"><a href="AdminLogin.jsp" class="style39">Back</a></div>
						
						
							
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
