<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>


<table width="500" border="1" bgcolor="#FFFFFF" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="150" valign="middle" height="40" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>ID</strong></div></td>
			  <td  width="150" valign="middle" height="40" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>Transport Name</strong></div></td>
              <td  width="150" valign="middle" height="40" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>Transport Image</strong></div></td>              
              <td  width="150" valign="middle" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>Description</strong></div></td>
              <td  width="150" valign="middle" height="40" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>Contact No</strong></div></td>
			  <td  width="110" valign="middle" height="40" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>Email</strong></div></td>
              <td  width="130" valign="middle" height="40" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>Address</strong></div></td>
			     <td  width="130" valign="middle" height="40" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>Location</strong></div></td>
				    

					      <td  width="130" valign="middle" height="40" style="color: #2c83b0;"><div align="center" class="style57 style56 style5"><strong>Published Date</strong></div></td>
              
			   
            </tr>
            <%
					  
					  String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from transport"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(6);
								s4=rs.getString(7);								
								s5=rs.getString(4);
								s6=rs.getString(5); // Location
								s7=rs.getString(9); // Email
								
								
								
								
								
								String descr = new String(Base64.decode(s2.getBytes()));
								
								
					%>
            <tr>
              
			  <td align="center"  valign="middle"><div align="center" class="style3">
                <%out.println(i);%>
              </div></td>
			
						
             
              
              </div></td>
			  <td height="0" align="center"  valign="middle"><div align="center" class="style15">
                <strong><%out.println(s1);%></strong>
              </div></td>
			 		   
              <td width="120" rowspan="1" align="center" valign="middle" ><div style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="user_Pic.jsp?picture=<%="transportimage"%>&id=<%=i%>" style="width:100px; height:100px;" />
              </a></div></td>
              <td align="center"  valign="middle"><div align="center" class="style3">
                <%out.println(descr);%>
              </div></td>
              <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                <%out.println(s3);%>
              </div></td>
			 
              <td height="0" align="center"  valign="middle"><div align="center" class="style9">
                <strong><%out.println(s4);%></strong>
              </div></td>
              
            
              </div></td>
			 		    
             
			 		  
              <td width="50" height="0" align="center"  valign="middle"><div align="center" class="style3">
                  <strong><%out.println(s5);%></strong>
              </div></td>
			  
			  <td width="50" height="0" align="center"  valign="middle"><div align="center" class="style3">
                  <strong><%out.println(s6);%></strong>
              </div></td>
			  <td width="50" height="0" align="center"  valign="middle"><div align="center" class="style3">
                  <strong><%out.println(s7);%></strong>
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