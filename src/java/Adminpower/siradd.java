/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Adminpower;

 
import databaseconnection.dbconn;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
 
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author 91967
 */
@MultipartConfig
 
public class siradd extends HttpServlet {

   


	private static final long serialVersionUID = 1L;
       
    public siradd() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("In do post method of Add Image servlet.");
		Part file=request.getPart("image");
		String productname= request.getParameter("name");
		int productprice= Integer.parseInt(request.getParameter("rate"));
                int quantity= Integer.parseInt(request.getParameter("quantity"));
		System.out.print(quantity);
		String imageFileName=file.getSubmittedFileName();  // get selected image file name
		System.out.println("Selected Image File Name : "+imageFileName);
		String path=request.getServletContext().getRealPath("images");
		System.out.print(path);
		String uploadPath=path+"/"+imageFileName;  // upload path where we have to upload our actual image
		System.out.println("Upload Path : "+uploadPath);
		
		// Uploading our selected image into the images folder
		
		try
		{
		
		FileOutputStream fos=new FileOutputStream(uploadPath);
		InputStream is=file.getInputStream();
		
		byte[] data=new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
                
		try 
		{
			  dbconn cn=new dbconn();
   
			PreparedStatement stmt;
			String query="insert into  product(name,price,quantity,imagename) values(?,?,?,?)";
			stmt=cn.dbconnections().prepareStatement(query);
			stmt.setString(1,productname);
			stmt.setInt(2,productprice);
                        stmt.setInt(3,quantity);
			stmt.setString(4,imageFileName);
			
			int row=stmt.executeUpdate(); // it returns no of rows affected.
			
			if(row>0)
			{
				System.out.println("Image added into database successfully.");
				 request.setAttribute("message", "Image added into database successfully.");

	              // forwards to the message page
	              getServletContext().getRequestDispatcher("/sir.jsp")
	                  .include(request, response);
			}
			
			else
			{
				System.out.println("Failed to upload image.");
			}
			
			
		}
		catch (Exception e)
		{
			System.out.println("exc"+e);
		}
		
    }

   
}
