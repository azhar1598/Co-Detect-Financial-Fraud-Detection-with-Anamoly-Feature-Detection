<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>BankAdminLoginPage</title>
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
.style9 {color:#009966}
.style11 {color:#FF3300}
.style12 {color:#FF9900}
.style13 {color:#660099}
.style40 {color:#660033}
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
						<h2 class="title"><a href="#">Travel Ticket Booking from <%=request.getParameter("from")%> to <%=request.getParameter("to")%>..</a></h2>
						<div class="entry">
						
				    	
      					
	
	
	<table width="560" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              
			  
              <td  width="159" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>Transport Name</strong></div></td>              
              <td  width="154" valign="middle" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>Travel From</strong></div></td>
              <td  width="154" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>Travel To</strong></div></td>
			  <td  width="154" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>Travel Price</strong></div></td>
			  <td  width="154" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong></strong></div></td>
			  
              
			   
            </tr>
            <%
					    String user=request.getParameter("user");
						String tname=request.getParameter("tname");
						String from=request.getParameter("from");
						String to=request.getParameter("to");
						
					  String price;
						int i=0;
						try 
						{
						 String query="select travel_price from transportprice where tname='"+tname+"' and (travel_from='"+from+"' and travel_to='"+to+"')"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								
								
								price=rs.getString(1);
								
					%>
            <tr>
              <%
						if(tname.equalsIgnoreCase("vrl"))
						{
						
						%>
              <td height="0" align="center"  valign="middle"><div align="center" class="style9">
                <strong><%out.println(tname);%></strong>
              </div></td>
              <%
						}
						else if(tname.equalsIgnoreCase("srs"))
						{
						%>
             <td height="0" align="center"  valign="middle"><div align="center" class="style11">
                <strong><%out.println(tname);%></strong>
              </div></td>
			 		    <%
						}
						else if(tname.equalsIgnoreCase("kesineni"))
						{
						%>
             <td height="0" align="center"  valign="middle"><div align="center" class="style12">
                <strong><%out.println(tname);%></strong>
              </div></td>
			 		    <%
						}
						else if(tname.equalsIgnoreCase("rajahamsa"))
						{
						%>
             <td height="0" align="center"  valign="middle"><div align="center" class="style13">
                <strong><%out.println(tname);%></strong>
              </div></td>
			 		    <%
						}
						else 
						{
						%>
             <td height="0" align="center"  valign="middle"><div align="center" class="style15">
                <strong><%out.println(tname);%></strong>
              </div></td>
			 		    <%
						}
						%>
              <td align="center"  valign="middle"><div align="center" class="style40">
                <%out.println(from);%>
              </div></td>
              <td height="0" align="center"  valign="middle"><div align="center" class="style40">
                <%out.println(to);%>
              </div></td>
			  <td height="0" align="center"  valign="middle"><div align="center" class="style4">
                <strong><%out.println(price);%></strong> Rs/-
              </div></td>
              
			  <td height="45" align="center"  valign="middle"><div align="center" class="style99 style100">
			  <form action="U_BookTicket2.jsp" method="post">
			  <input name="tname" type="hidden" value="<%=tname%>" readonly />
			  <input name="user" type="hidden" value="<%=user%>" readonly />
			  <input name="from" type="hidden" value="<%=from%>" readonly />
			  <input name="to" type="hidden" value="<%=to%>" readonly />
			  <input name="price" type="hidden" value="<%=price%>" readonly />
			  <input name="Submit" type="Submit" value="Confirm Booking" />
			  </form>
			   </div></td>
			 		    
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
          <p align="right"><a href="U_BookTicket.jsp" class="style11"></a></p>
          <table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="left"><a href="U_BookTicket.jsp?user=<%=user%>&tname=<%=tname%>" class="style95">Back</a></div></td>
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
