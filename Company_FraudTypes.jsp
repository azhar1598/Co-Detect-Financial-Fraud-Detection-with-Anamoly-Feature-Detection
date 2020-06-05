<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>All Type of Frauds</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
.style3 {color: #333333}
.style4 {color:#000000}
.style5 {color:#2C83B0}
.style6 {font-size:18px}
.style7 { color:#663300}
.style9 {color:#009966;
		font-size:24px}
.style11 {color:#FF3300;
		font-size:24px}
.style12 {color:#FF9900;
		font-size:24px}
.style13 {color:#660099;
		font-size:24px}
.style15 {color:#666666;
		font-size:24px}
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
						<h2 class="title"><a href="#">All Type of Fraud Details..</a></h2>
						<div class="entry">
						<p>
	  	      <%
	String tname=(String)application.getAttribute("tname");
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",fraud="";
	int count=0;
	try
	{
			String sql3="select distinct fraud_type from financial_fraud where transport='"+tname+"' and fraud_type!='"+"normal"+"'";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   fraud=rs3.getString(1);
			     
			 
			%>
            </p>
	  	    <table width="572" border="1">
				  <tr bgcolor="#FFFFFF">
				  <td colspan="8" > 
				       	<%
						if(fraud.equalsIgnoreCase("Wrong cvv"))
						{
						
						%>
             <div align="left" class="style9">
                  <strong><%out.println(fraud);%></strong> <strong>Fraud </strong>
              </div>
              <%
						}
						else if(fraud.equalsIgnoreCase("no balance"))
						{
						%>
             <div align="left" class="style11">
                  <strong><%out.println(fraud);%></strong> <strong>Fraud </strong>
              </div>
			 		    
			 		    <%
						}
						else 
						{
						%>
             <div align="left" class="style12">
                  <strong><%out.println(fraud);%></strong> <strong>Fraud </strong>
              </div>
			 		    <%
						}
						%>
                     </td>
					 
			      </tr>
				 
                    
              <td  width="139"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56"><strong>User Name</strong></div></td>
			  <td  width="135" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>Entered Card No</strong></div></td>
			  <td  width="135" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>Entered CVV</strong></div></td>
              <td  width="135" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>Fraud Amount</strong></div></td>
              <td  width="123" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>Bank</strong></div></td>
			  <td  width="123" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>Activity</strong></div></td>
			  <td  width="123" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>Date</strong></div></td>
			  
                    </tr>
				 
				  <%
					  
					  	
						   	String query="select * from financial_fraud where transport='"+tname+"' and fraud_type='"+fraud+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								s1=rs.getString(4);
								s2=rs.getString(2);
								s3=rs.getString(3);
								s4=rs.getString(6);
								s5=rs.getString(5);
								s6=rs.getString(7);
								s7=rs.getString(9);				
						
							
						
						count++;
			   
					 %>
							   <tr>
							   <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                <%out.println(s1);%>
              </div></td>
			  <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                <%out.println(s2);%>
              </div></td>
			  <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                <%out.println(s3);%>
              </div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                <%out.println(s4);%>
              </div></td>
              <td height="0" align="center"  valign="middle"><div align="center" class="style7">
                <%out.println(s5);%>
              </div></td>
			  <td height="0" align="center"  valign="middle"><div align="center" class="style4">
                <%out.println(s6);%>
              </div></td>
              <td height="0" align="center"  valign="middle"><div align="center" class="style4">
                <%out.println(s7);%>
              </div></td>
              </tr>
							
	     <%
					 }
			
			       %></table> 				   
	 				   
	<p>&nbsp;</p>
				<%
			}
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table>
	<td height="45" align="center"  valign="middle"><div align="left" class="style99 style100">
			  <form action="Company_FraudTypesInChart.jsp" method="post">
			  <input name="Submit" type="Submit" value="View in Chart" />
			  </form>
			   </div></td>
          
          <p align="right">&nbsp;</p>
          <p align="right">&nbsp;</p>
          <table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="left"><a href="CompanyUserMain.jsp" class="style95">Back</a></div></td>
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
						  <li><a href="CompanyUserMain.jsp">Home</a></li>						  
						  <li><a href="CompanyLogin.jsp">Logout </a></li>
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