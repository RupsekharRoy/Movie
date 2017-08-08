

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import java.sql.*;
import java.util.Enumeration;
import java.io.*;
import java.io.FileOutputStream;
@WebServlet("/Mupload")
public class Mupload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mupload() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		ServletContext context=getServletContext();
		String dirName=context.getRealPath("\\");
		String parameter=null;
		String movie_id="",movie_name="",movie_certificate="",movie_language="",movie_quality="",movie_voting="",movie_duration="",movie_cost="",star_casting="",director="",Location="",movie_time="",release="",about="";
		File file1=null;
		long size=0;
		String photo="";
		try
		{
			
			MultipartRequest multi=new MultipartRequest(request, dirName,10*1024*1024);
			Enumeration e=multi.getParameterNames();
			while(e.hasMoreElements())
			{
				parameter=(String)e.nextElement();
				if(parameter.equalsIgnoreCase("t1"))
				{
					movie_id=multi.getParameter(parameter);  
				}
				if(parameter.equalsIgnoreCase("t2"))
				{
					movie_name=multi.getParameter(parameter);
				}
				if(parameter.equalsIgnoreCase("t3"))
				{
					movie_certificate=multi.getParameter(parameter);
				}
				if(parameter.equalsIgnoreCase("t4"))
				{
					movie_language=multi.getParameter(parameter);
				}
				if(parameter.equalsIgnoreCase("t5"))
				{
					movie_quality=multi.getParameter(parameter);
				}
				if(parameter.equalsIgnoreCase("t6"))
				{
					movie_voting=multi.getParameter(parameter);
				}
				if(parameter.equalsIgnoreCase("t7"))
				{
					movie_duration=multi.getParameter(parameter);
				}
				if(parameter.equalsIgnoreCase("t8"))
				{
					movie_cost=multi.getParameter(parameter);
				}
				if(parameter.equalsIgnoreCase("t9"))
				{
					star_casting=multi.getParameter(parameter);
				}
				if(parameter.equalsIgnoreCase("t10"))
				{
					director=multi.getParameter(parameter);
				}
				if(parameter.equalsIgnoreCase("t11"))
				{
					Location=multi.getParameter(parameter);
				}
				if(parameter.equalsIgnoreCase("t12"))
				{
					movie_time=multi.getParameter(parameter);
				}
				if(parameter.equalsIgnoreCase("t13"))
				{
					release=multi.getParameter(parameter);
				}
				if(parameter.equalsIgnoreCase("t14"))
				{
					about=multi.getParameter(parameter);
				}
				
			}
		
			Enumeration files=multi.getFileNames();
			while(files.hasMoreElements())
			{
				parameter=(String)files.nextElement();
				System.out.println(parameter);
				if(parameter.equalsIgnoreCase("photo"))
				{    
					
					photo=multi.getFilesystemName(parameter);
					System.out.println(photo);
					String final_filePath=dirName+photo;
					System.out.println(final_filePath);
					file1=new File(final_filePath);
					size=file1.length();
					FileInputStream finput=new FileInputStream(file1);
					FileOutputStream fout=new FileOutputStream(new File("E:\\eclipse\\Movie\\WebContent"+photo));
					int j=0;
					while((j=finput.read())!=-1)
					{
			fout.write((byte)j);
					}
					finput.close();
					fout.close();
					
				}
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/globsyn", "user", "user123");
				PreparedStatement ps=con.prepareStatement("insert into admin values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				ps.setString(1, movie_id);
				ps.setString(2, movie_name);
				ps.setString(3, movie_certificate);
				ps.setString(4, movie_language);
				ps.setString(5, movie_quality);
				ps.setString(6, movie_voting);
				ps.setString(7, movie_duration);
				ps.setString(8, movie_cost);
				ps.setString(9, star_casting);
				ps.setString(10, director);
				ps.setString(11, Location);
				ps.setString(12, movie_time);
				ps.setString(13, release);
				ps.setString(14, about);
				ps.setString(15, photo);
				int i=ps.executeUpdate();
				if(i>0)
				{
					out.println("uploaded");
				}
				}
			
		}catch(Exception e)
		{
			
		}
		
		
		
	}

}
