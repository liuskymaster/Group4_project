<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="order.category.*"%><%
    String s = request.getParameter("name");
    if (s!= null) {
    	s = new String(s.getBytes("ISO-8859-1"),"UTF-8");
    	} 
    

    Category c = null;//新增一個BackAccount物件(java)
    if (s != null )//當s不是null
    {
    	try
    	{    		
    		CategoryDAO dao = new CategoryDAODBImpl(); 
    		c = dao.findByName(s);//到資料庫取出資料
    		
    	    if (c == null)//如果取不到資料
    	    {
    	    	out.print("1");	
    	    }
    	    else
    	    {
    	    	out.print("0");	
    	    }
    		
    	}
    	catch(Exception e)
    	{
    		out.print("1");
    	}
    		
    }
    else
    {
    	out.print("1");
    }
    %>