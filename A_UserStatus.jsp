<%@ include file="connect.jsp" %>
<%
	String bank=(String)application.getAttribute("adbank");
	String type=request.getParameter("type");
  	try{  
	     
		 
		 	if(type.equalsIgnoreCase("login"))
			{
				
				
		   		String name=request.getParameter("name");
		   
				String str = "Authorized";
				Statement st1 = connection.createStatement();
				String query1 ="update user set loginstatus='"+str+"' where username='"+name+"' and bank='"+bank+"'";
				st1.executeUpdate (query1);
				connection.close();
				response.sendRedirect("A_AuthorizeUsers.jsp");
		
		}
		else if(type.equalsIgnoreCase("tlogin"))
		 {
			String id=request.getParameter("id");
			
			String str = "Authorized";
       		Statement st1 = connection.createStatement();
       		String query1 ="update tuser set status='"+str+"' where id="+id+" ";
	   		st1.executeUpdate (query1);
			connection.close();
			response.sendRedirect("A_AuthorizeTUsers.jsp");
		
		}
		
		else{}
		
			
		
  	}
  	catch (Exception e){
    	e.printStackTrace();
  	}
%>

</body>
</html>