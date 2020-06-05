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
						<h2 class="title"><a href="#">Travel Ticket Booking..</a></h2>
						<div class="entry">
						<form id="form1" name="form1" method="post" action="U_BookTicket1.jsp">
				    	<%
	
      					String user=request.getParameter("user");
						String tname=request.getParameter("tname");
	

      	try 
	{
      		
      		 ArrayList a1=new ArrayList();
			 
       		 ArrayList ak=new ArrayList();
      		 
           
           String query="select distinct(travel_from) FROM transportprice where tname='"+tname+"'"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
			a1.add(rs.getString("travel_from"));
						
		
	   }	
	   
	   String query1="select distinct(travel_to) FROM transportprice where tname='"+tname+"'"; 
           Statement st1=connection.createStatement();
           ResultSet rs1=st1.executeQuery(query1);
          
	   while ( rs1.next() )
	   {
			
			ak.add(rs1.getString("travel_to"));
		
	   }
		
%>
					<table width="500" border="0" cellspacing="2" cellpadding="2">
						<tr>
                        <td width="104" height="46" align="center"><div align="justify"><span class="style34">
                          <label for="name"><span class="style4">Transport Name</span></label>
                        </span></div> </td>
						<%
						if(tname.equalsIgnoreCase("vrl"))
						{
						
						%>
              <td width="141" height="0" align="center"  valign="middle"><div align="left" class="style9">
                  <strong><%out.println(tname);%></strong> <strong>TRAVELS</strong>
              </div></td>
              <%
						}
						else if(tname.equalsIgnoreCase("srs"))
						{
						%>
             <td width="141" height="0" align="center"  valign="middle"><div align="left" class="style11">
                  <strong><%out.println(tname);%></strong> <strong>TRAVELS</strong>
              </div></td>
			 		    <%
						}
						else if(tname.equalsIgnoreCase("kesineni"))
						{
						%>
             <td width="141" height="0" align="center"  valign="middle"><div align="left" class="style12">
                  <strong><%out.println(tname);%></strong> <strong>TRAVELS</strong>
              </div></td>
			 		    <%
						}
						else if(tname.equalsIgnoreCase("rajahamsa"))
						{
						%>
             <td width="141" height="0" align="center"  valign="middle"><div align="left" class="style13">
                  <strong><%out.println(tname);%></strong> <strong>TRAVELS</strong>
              </div></td>
			 		    <%
						}
						else 
						{
						%>
             <td width="141" height="0" align="center"  valign="middle"><div align="left" class="style15">
                  <strong><%out.println(tname);%></strong> <strong>TRAVELS</strong>
              </div></td>
			 		    <%
						}
						%>                        
                      </tr>
						<tr>
                        <td width="104" height="33"><div align="justify"><span class="style8 style38 style5 style4 style3">From :</span></div></td>
                        <td width="141"><label>
                          <select id="s1" name="from">
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
                        </label></td>
						<td width="65" height="33"><div align="justify"><span class="style8 style38 style5 style4 style3">To :</span></div></td>
						<td width="164"><label>
						<select id="s2" name="to">
                            <option>--Select--</option>
							
                            <% 
							for(int j=0;j<ak.size();j++)
							{
							 
								 %>
								<option><%= ak.get(j)%></option>
								<%
							}
							%>
                        </select>
						  </label></td>
						  
                      </tr>                                 
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>
						<input name="tname" type="hidden" value="<%=tname%>" readonly="" />
			  			<input name="user" type="hidden" value="<%=user%>" readonly="" />
						<input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Book Ticket" /></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
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
			
			<table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="left"><a href="U_ViewTransportCompany.jsp" class="style95">Back</a></div></td>
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
