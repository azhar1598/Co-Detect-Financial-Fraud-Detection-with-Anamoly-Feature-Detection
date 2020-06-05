<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Transfered Money Details.. </title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
.style4 {
	color: #660000;
	font-size: 24px;
}
.style5 {color: #FF3300;
		font-size: 24px;
		}
.style9 {color:#000000}
.style12 {color: #009999}
.style45 {color: #2C83B0;
		font-size: 14px;}
.style46 {
	font-size: 16px;
	font-weight: bold;
	color: #660000;
}
.style47 {
	font-size: 16px;
	color: #660000;
}
.style50 {color:#FF0000}
.style51 { color:#990033}
.style52 {font-size: 14px}
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
						<h2 class="title"><a href="#">User <span class="style6" style="color:#FF3300"><%=(String)application.getAttribute("uname")%></span>'s Money Transfer Details..</a></h2>
						<div class="entry">
						<p>&nbsp;</p>
          <table width="570" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="145" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style46 style52"> From Account </div></td>
              <td  width="171" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style46 style52">From Bank </div></td>
              <td  width="138" valign="middle" height="33" style="color: #2c83b0;"><div align="center" class="style57 style56 style47 style52"><strong> To Credit Card </strong></div></td>
              <td  width="161" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style46 style52">Card Bank </div></td>
              <td  width="170" valign="middle" height="33" style="color: #2c83b0;"><div align="center" class="style47 style57 style56 style52"><strong>Transaction Amount</strong></div></td>
              <td  width="133" valign="middle" height="33" style="color: #2c83b0;"><div align="center" class="style57 style56 style47 style52"><strong>Date</strong></div></td>
            </tr>
           
            <%
					   		  String ccno=request.getParameter("ccno");

					   		   int id=Integer.parseInt(request.getParameter("id"));

					  String s1,s2,s3,s4,s5,s6,s7;
						int i=0,j=1;
						try 
						{
						   	String query="select * from transactions where id='"+id+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(11);
								s2=rs.getString(10);
								s3=rs.getString(5);
								s4=rs.getString(3);	
								s5=rs.getString(4);									
								s6=rs.getString(7);								
						
						
								
					%>
            <tr>
              <td align="center"  valign="middle"><div align="center" class="style50	">
                <strong><%out.println(s1);%></strong>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style45">
                <strong><%out.println(s2);%></strong>
              </div></td>
              <td height="61" align="center"  valign="middle"><div align="center" class="style12">
                <strong><%out.println(s3);%></strong>
              </div></td>
			  
			  <td align="center"  valign="middle"><div align="center" class="style45">
			    <strong><%out.println(s4);%></strong>
			  </div></td>
              <td height="61" align="center"  valign="middle"><div align="center" class="style51">
                <strong><%out.println(s5);%></strong>
                <span class="style9">Rs/-</span> </div></td>
              <td height="61" align="center"  valign="middle"><div align="center" class="style9">
                <%out.println(s6);%>
              </div></td>
            </tr>
            <%
						j+=1;}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
          <p align="right">&nbsp;</p>
          <table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="left"><a href="U_ViewCardTransactions.jsp" class="style95">Back</a></div></td>
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