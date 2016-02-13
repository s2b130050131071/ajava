import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.Hashtable;


public class HolisticCounter extends HttpServlet{
	int count = 0;
	static int classCount=0;
	static Hashtable hashtable = new Hashtable();
	public void init() throws ServletException{
		
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		count++;
		PrintWriter out = response.getWriter();
		out.println("<h1>Servlet was accessed <u>"+count+"</u> times.<h1>");
		
		//We put the current instance in to the hashtable.
		hashtable.put(this, this);
		
		out.println("<h2>Total no of instances: <u>" +hashtable.size()+"</u></h2>");

	    classCount++;
	    out.println("<h3>Across all instances, this servlet class has been accessed <u>" + classCount + "</u> times.</h3>");
	}
	public void destroy(){
		
	}
  
}