

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Registration() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String name= request.getParameter("t1");
		String mob = request.getParameter("t2");
		long mob1=Long.parseLong(mob);
		String mail = request.getParameter("t3");
		String password=request.getParameter("t4");
		String conpassword=request.getParameter("t5");
		CustomerDao cust = new CustomerDao();
		int i = cust.addCustomer(name, mob1, mail,password,conpassword);
		if(i>0)
		{
			response.sendRedirect("login.html");
	}
		else
		{
          out.println("error");
        }
	}

}
