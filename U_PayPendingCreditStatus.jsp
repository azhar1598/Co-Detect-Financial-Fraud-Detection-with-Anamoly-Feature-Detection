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
<title>Credit Amount payment Status</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
.style4 {color: #660000}
.style6 {color: #FFFF00; font-size: 14px; }
.style7 {color: #000000; font-size: 14px; }
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
						<h2 class="title"><a href="#">Pay Back Credit Amount Status..</a></h2>
						<div class="entry">
<% 



try
{

String accno="",name="",amount="";
accno=request.getParameter("accno");
name=request.getParameter("name");      
amount=request.getParameter("amount");

String user=(String)application.getAttribute("uname");
String bank=(String)application.getAttribute("ubank");




SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
Date now = new Date();

String strDate = sdfDate.format(now);
String strTime = sdfTime.format(now);
String date = strDate + "   " + strTime;

if(accno.equals("")||amount.equals(""))
{
	%>
	<style type="text/css">
	<!--
	.style9 {
	color: #FF0000;
	font-weight: bold;
	font-size: 16px;
	}
	.style10 {color: #000000}
	-->
	</style>
	<div align="center"><br/>
	<br/>
	</div>
	<p align="center" class="style9">Please Enter all Values..</p>
	<div align="center"><br/>
	<br/>
	<a href="U_PayPendingCredit.jsp">Back</a>
	<%
}
else
{
	
	int currentbalance=0,credit_taken=0,credit_remain=0,rembalance=0;	
	String a_no="",cvv="";
	 
	String sql="SELECT * FROM userbankaccount where (acc_no='"+accno+"' and bank='"+bank+"') and user='"+user+"' ";
	Statement stmt = connection.createStatement();
	ResultSet rs =stmt.executeQuery(sql);
	if(rs.next()==true)
	{
		 currentbalance=Integer.parseInt(rs.getString(7));
		 
	
	String crd="SELECT * FROM creditcard where a_name='"+name+"' and b_name='"+bank+"' ";
	Statement crdst = connection.createStatement();
	ResultSet crdrs =crdst.executeQuery(crd);
	if(crdrs.next()==true)
	{
		 credit_taken=crdrs.getInt(10);
		 a_no=crdrs.getString(1);
		 cvv=crdrs.getString(3);
		 
	}
	
				if(credit_taken<=currentbalance)
				{
					
							int enteredamount1=Integer.parseInt(amount);
		
							rembalance=currentbalance-enteredamount1;
							
							credit_remain=enteredamount1-credit_taken;
						
						
							
						/* Updating the Credit Payment into Credit Card and Account Balance into Bank Account */
							
							String balamt="UPDATE userbankaccount SET amount="+rembalance+" where acc_no='"+accno+"'";
							Statement balst=connection.createStatement();
							balst.executeUpdate(balamt);
							
							String crtkn="UPDATE creditcard SET credit_taken="+credit_remain+" where a_no='"+a_no+"'";
							Statement crtk=connection.createStatement();
							crtk.executeUpdate(crtkn);
							
							/* Updation Query Ends */
							
							
							String sql31="insert into transactions(user,bank,amount,a_no,cvv,date,status,tranfor,frombank,fromaccount_no,fromuser,balance_credited,credit_status)values('"+user+"','"+bank+"','"+amount+"','"+a_no+"','"+cvv+"','"+date+"','"+"Success"+"','"+"Transfer"+"','"+bank+"','"+accno+"','"+user+"','"+amount+"','"+"Payment Successfull"+"')";
						Statement stmt31 = connection.createStatement();
						stmt31.executeUpdate(sql31);
						
							
									
							
							%>
						</div>
						<br/><br/> <p align="center" class="style7">Payment Done Successfully.....</p>
						<div align="center"><br/>
						<br/>
						<a href="U_ViewPayments.jsp">Back</a>
						<%
					
			
	
						}
				else
				{
				
				
				String abuser="insert into financial_fraud(card_no,cvv,user,bank,booking_amount,activity,transport,date,fraud_type)values('"+a_no+"','"+cvv+"','"+user+"','"+bank+"','"+amount+"','"+"Abnormal"+"','"+"No"+"','"+date+"','"+"Less Balance"+"')";
					Statement abstmt = connection.createStatement();
					abstmt.executeUpdate(abuser);	
					
					
				%>
				</div>
				<br/><br/> <p align="center" class="style7">Insufficient Amount in Bank Account..Please try Again..</p>
				<div align="center"><br/>
				<br/>
				<a href="UserMain.jsp">Back</a>
				<%
				}
		
	}
	else
	{
	%>
	</div>
	<br/><br/> <p align="center" class="style7">Account Number not Found..Please try Again..</p>
	<div align="center"><br/>
	<br/>
	<a href="U_PayPendingCredit.jsp?user=<%=user%>&bank<%=bank%>&pamt=<%=amount%>">Back</a>
	<%
	}
	
	
	
	
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