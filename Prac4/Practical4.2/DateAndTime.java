import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.Date;

public class DateAndTime extends HttpServlet{
	
	public void init() throws ServletException{
		
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		Date date = new Date();
		
		out.println("<h1>"+date+"<h1>");
	}
	public void destroy(){
		
	}
  
}