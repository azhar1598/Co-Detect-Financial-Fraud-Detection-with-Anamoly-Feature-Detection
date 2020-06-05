<%@ page import="java.sql.*,java.util.Random,java.security.KeyPairGenerator,javax.crypto.Cipher,java.security.Key,java.security.KeyPair     "%>
<%@ include file="connect.jsp" %>
<%@ page import ="javax.crypto.Cipher" %>
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<html><style type="text/css">
<!--
body {
	background-color: #FFFFFF;
}
-->
</style>
<body>
<center>&nbsp;</center>
<br><br><br>
  <%
  		   int id = Integer.parseInt(request.getParameter("id"));
		   String typebank=request.getParameter("typebank");
		   String accountname=request.getParameter("accountname");
		  
try
{
	String num="null";
		if(typebank.equalsIgnoreCase("SBI Bank"))
		{
		
				Random rr=new Random();
				
				 num=4+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10));
				
		}
		
		else if(typebank.equalsIgnoreCase("HDFC Bank"))
		{
				Random rr=new Random();
				
				 num=5+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10));
				
		}
		
		
		else if(typebank.equalsIgnoreCase("Karnataka Bank"))
		{
				Random rr=new Random();
				
				 num=3+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10));
			
		}
		
		
		else if(typebank.equalsIgnoreCase("Syndicate Bank"))
		{
				Random rr=new Random();
				
				 num=9+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10));
		}
		
		
		else if(typebank.equalsIgnoreCase("Indian Bank"))
		{
				Random rr=new Random();
				
				 num=2+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10));
		}
		
		
		else
		{
				Random rr=new Random();
				
				 num=String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10));
		}
		
		
		
		
		String num1 = new String(Base64.encode(num.getBytes()));
		
		Statement st11 = connection.createStatement();
		String query11 ="update creditcard set cvv='"+num+"'  where b_name='"+typebank+"' and a_name='"+accountname+"' ";
		st11.executeUpdate (query11);
		

		Statement st1 = connection.createStatement();
		String query1 ="update creditcardrequest set cvv='"+num1+"'  where id="+id+" ";
		int k=st1.executeUpdate (query1);
		
		
		if(k>0)
		{
				response.sendRedirect("A_ViewCCRequest.jsp");
		
		}
		else
		{
		
		%><br/><br/>CRN Not Generated..Please Try Agian..</p><br/><br/>
		<a href="A_ViewCCRequest.jsp">Back</a><%
		
		}
		
		connection.close();
}

catch(Exception e)
{
		out.println(e);

}


	

		  
		  
%>



</body></html>