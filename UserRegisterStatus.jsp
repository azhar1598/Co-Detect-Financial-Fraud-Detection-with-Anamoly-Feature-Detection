<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.oreilly.servlet.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>User Registration Status</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
	font-weight: bold;
}
.style3 {color: #333333}
.style4 {color: #666666}
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
						<h2 class="title"><a href="#">User Registration Status..</a></h2>
						<div class="entry">
						<%
			       
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String paramname=null,bank="",uname="",pass="",email="",mno="",addr="",dob="",gender="",pincode="",location="",image=null,cloud=null,bin = "";
				
					FileInputStream fs=null;
					
					File file1 = null;	

					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("userid"))
							{
								uname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pass"))
							{
								pass=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("email"))
							{
								email=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mobile"))
							{
								mno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("address"))
							{
								addr=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("dob"))
							{
								dob=multi.getParameter(paramname);
							} 
							if(paramname.equalsIgnoreCase("gender"))
							{
								gender=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("bank"))
							{
								bank=multi.getParameter(paramname);
							}
							
						}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
								
								
								
													
								
								
							/*
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1) 
								{
									if (i != -1)
									 {
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++)
										{
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4)
											{
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
							
						                }
									}	
									
								}*/
								
								
							}		
						}
						
			if(uname.equals("")||pass.equals("")||email.equals("")||mno.equals("")||addr.equals("")||dob.equals("")||gender.equals("--Select--")||bank.equals("--Select--"))
			{
					  %> 
						<p>&nbsp;</p>
						<p align="center" class="style40">&nbsp;</p>
						<p align="center" class="style40"><span class="header_01 style4"><strong>Please Enter All Values..</strong></span></p>
						<p align="center"><a href="UserRegister.jsp" class="style39">Back</a></p>
					  <%
					  
			 }
			else if(!bank.equals("--Select--"))
			{
					
					String query2="select * from bankadmin  where bank='"+bank+"'"; 
					Statement st2=connection.createStatement();
					ResultSet rs2=st2.executeQuery(query2);
					if ( rs2.next() )
					{
							   
								
								FileInputStream fs1 = null;
								String query1="select * from user  where username='"+uname+"' and bank='"+bank+"'"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
										
							   if ( rs1.next() )
							   {
										%>
										</p>
										</label>
										</span>
										
														
										<p align="center" class="style37 style18 style40">&nbsp;</p>
										<p align="center" class="style4"><strong>User Name Already Exist..</strong></p>
										<p align="center"><a href="UserRegister.jsp" class="style39">Back</a></p>
										
										<%
										
								}
								else
								{
					   
					   
					   					PreparedStatement ps=connection.prepareStatement("insert into user(bank,username,password,email,mobile,address,dob,gender,loginstatus,image) values(?,?,?,?,?,?,?,?,?,?)");
									ps.setString(1,bank);
									ps.setString(2,uname);
									ps.setString(3,pass);
									ps.setString(4,email);	
									ps.setString(5,mno);
									ps.setString(6,addr);
									ps.setString(7,dob);
									ps.setString(8,gender);
									ps.setString(9,"waiting");
									ps.setBinaryStream(10, (InputStream)fs, (int)(file1.length()));									
									
								   
									
									int x=ps.executeUpdate();
									if(x>0)
									{
									%>
										  <br/>
										<p align="center" class="style38">&nbsp;</p>
										<p align="center" class="style4"><strong>Registered Successfully..</strong></p>
										<p align="center"><a href="UserLogin.jsp" class="style39">Back</a>
											  <%
									}
								
								}
						}
						else
						{
										%>
										  <br/>
										<p align="center" class="style38">&nbsp;</p>
										<p align="center" class="style4"><strong>Selected Bank is Not Registered..</strong></p>
										<p align="center"><a href="UserRegister.jsp" class="style39">Back</a>
										<%
						
						}
					}
						else{}
					
						
					}
						
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
          </p>
						
						
							
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
