<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Booking Status</title>
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
						<h2 class="title"><a href="#">Ticket Booking Status..</a></h2>
						<div class="entry">
			<%


		try
		{	
			
			String tname=request.getParameter("tname");	
			String user=request.getParameter("user");
			String from=request.getParameter("from");
			String to=request.getParameter("to");
			String price=request.getParameter("price");
			String card=request.getParameter("card");
			String cardcvv=request.getParameter("cardcvv");
			
			
			String bank=(String)application.getAttribute("ubank");




SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
Date now = new Date();

String strDate = sdfDate.format(now);
String strTime = sdfTime.format(now);
String date = strDate + "   " + strTime;



	
	int currentbalance1=0,credit_to_be_taken=0;	
	int creditlimit=0,crlimit=0,credit_taken=0; 
	String a_no="",crn="";
	String sql="SELECT * FROM creditcard where a_no='"+card+"' and cvv='"+cardcvv+"' and a_name='"+user+"' ";
	Statement stmt = connection.createStatement();
	ResultSet rs =stmt.executeQuery(sql);
	if(rs.next()==true)
	{
		 credit_taken=rs.getInt(10);
		 crlimit= Integer.parseInt(rs.getString(8));
		 
	
				if(credit_taken<crlimit)
				{
	
							String query41="select cr_limit from creditcard where a_no='"+card+"'";
							Statement st41=connection.createStatement();
							ResultSet rs41=st41.executeQuery(query41);
							if ( rs41.next() )
							{
							creditlimit=rs41.getInt(1);
		
							credit_to_be_taken=crlimit-credit_taken;
							}
						int ticket_price=Integer.parseInt(price);
						if(ticket_price<=creditlimit && ticket_price<=credit_to_be_taken)
						{
	
			
							String cr_taken=String.valueOf(credit_taken+ticket_price);
							
							
							
							
							
							
						/* Updating the borrowed Credit into Credit Card */
														
							String crtkn="UPDATE creditcard SET credit_taken="+cr_taken+" where a_no='"+card+"'";
							Statement crtk=connection.createStatement();
							crtk.executeUpdate(crtkn);
							
							/* Updation Query Ends */
							
							
							
						/* Updating the Transaction Details into Transactions Tabel */	
						
							String status="Success";
							String purpose="Ticket Booking";
							String frombank="null";
							String fromaccount_no="null";
							String fromuser="null";
							String balance_credited="null";
							String credit_status="null";
							
							String sql31="insert into transactions(user,bank,amount,a_no,cvv,date,status,tranfor,frombank,fromaccount_no,fromuser,balance_credited,credit_status)values('"+user+"','"+bank+"','"+price+"','"+card+"','"+cardcvv+"','"+date+"','"+status+"','"+purpose+"','"+frombank+"','"+fromaccount_no+"','"+fromuser+"','"+balance_credited+"','"+credit_status+"')";
						Statement stmt31 = connection.createStatement();
						stmt31.executeUpdate(sql31);
						
						
						/* Updation Query Ends */




						PreparedStatement ps1=connection.prepareStatement("insert into booking(card_no,user,transport,travel_from,travel_to,travel_price,date) values(?,?,?,?,?,?,?)");
														ps1.setString(1,card);
														ps1.setString(2,user);
														ps1.setString(3,tname);
														ps1.setString(4,from);
														ps1.setString(5,to);
														ps1.setString(6,price);
														ps1.setString(7,date);
														
														int k1=ps1.executeUpdate();
						
			
									if(k1>0)
									{	
									
					String nuser="insert into financial_fraud(card_no,cvv,user,bank,booking_amount,activity,transport,date,fraud_type)values('"+card+"','"+cardcvv+"','"+user+"','"+bank+"','"+price+"','"+"Normal"+"','"+tname+"','"+date+"','"+"Normal"+"')";
					Statement nstmt = connection.createStatement();
					nstmt.executeUpdate(nuser);
					
					
					
									%>
		  </div>
									<br/><br/> <p align="center" class="style7">Transaction Done Successfully..</p>
									<div align="center"><br/>
									<br/>
									<a href="U_ViewTransportCompany.jsp">Back</a>
									<%
									}
									else
									{
									%>
									</div>
									<br/><br/><p align="center" class="style7">Transaction Failed !!..Please Try Again..</p>
									<div align="center"><br/>
									<br/>
									<a href="UserMain.jsp">Back</a>
									<%
									}
			
	
						}
						else
						{
						
							
							
					String abuser="insert into financial_fraud(card_no,cvv,user,bank,booking_amount,activity,transport,date,fraud_type)values('"+card+"','"+cardcvv+"','"+user+"','"+bank+"','"+price+"','"+"Abnormal"+"','"+tname+"','"+date+"','"+"No Balance"+"')";
					Statement abstmt = connection.createStatement();
					abstmt.executeUpdate(abuser);
						
					
						
						%>
						</div>
						<br/><br/> <p align="center" class="style7">Ticket Price is more than the Credit Limit..Please try Again..</p>
						<div align="center"><br/>
						<br/>
						<a href="UserMain.jsp">Back</a>
						<%
						}
		
				}
				else{
				
				String abuser="insert into financial_fraud(card_no,cvv,user,bank,booking_amount,activity,transport,date,fraud_type)values('"+card+"','"+user+"','"+cardcvv+"','"+bank+"','"+price+"','"+"Abnormal"+"','"+tname+"','"+date+"','"+"No Balance"+"')";
					Statement abstmt = connection.createStatement();
					abstmt.executeUpdate(abuser);
				
				%>
				</div>
				<br/><br/><p align="center" class="style7">Credit Taken Exceeded the Maximum Credit Limit. Please Pay back the amount of Credit taken within the valid time period</p>
				<div align="center"><br/>
				<br/>
				<a href="UserMain.jsp">Back</a>
				<%
				}
	}
	else
	{
	
	String abuser="insert into financial_fraud(card_no,cvv,user,bank,booking_amount,activity,transport,date,fraud_type)values('"+card+"','"+cardcvv+"','"+user+"','"+bank+"','"+price+"','"+"Abnormal"+"','"+tname+"','"+date+"','"+"Wrong CVV"+"')";
					Statement abstmt = connection.createStatement();
					abstmt.executeUpdate(abuser);
	
	%>
	</div>
	<br/><br/> <p align="center" class="style7">You Have Entered Wrong CVV Number..Please Try Again..</p>
	<div align="center"><br/>
	<br/>
	<a href="UserMain.jsp">Back</a>
	<%
	}
	
	
	
	




connection.close();
}
catch(Exception e)
{
out.print(e);
}

%>
                          
						
						
							
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
