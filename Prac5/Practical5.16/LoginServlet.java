package com.krut;

import java.io.*; 
import javax.servlet.*;  
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet {  

	protected void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
          
        String username=request.getParameter("username");  
        String password=request.getParameter("password");  
          
        LoginService loginService=new LoginService();  
        request.setAttribute("loginService",loginService);  
          
        boolean status=loginService.authenticateUser(username, password);  
          
        if(status){  
            RequestDispatcher rd=request.getRequestDispatcher("Success.jsp");  
            rd.forward(request, response);  
        }  
        else{  
            RequestDispatcher rd=request.getRequestDispatcher("Index.htm");  
            out.println("<p>Incorrect username or password</p>");
            rd.include(request, response);  
        }  
      
    }  
  
    @Override  
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)  
            throws ServletException, IOException {  
        doPost(req, resp);  
    }  
}  