/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package saller;


import databaseconnection.Seller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Base64.Decoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig
public class productadd extends HttpServlet {

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        // Assuming you have a database connection and can insert data into the database

        // Process each form field data
        String s = request.getParameter("rows");
        int numProducts=Integer.parseInt(s);
        for (int i = 0; i < numProducts; i++) {
            String name = request.getParameter("name" + 0 + i);
            String description = request.getParameter("name" + 1 + i);
            int categoryId = Integer.parseInt(request.getParameter("name" + 2 + i));
            double price = Double.parseDouble(request.getParameter("name" + 3 + i));
            int discount = Integer.parseInt(request.getParameter("name" + 4 + i));
            int quantity = Integer.parseInt(request.getParameter("name" + 5 + i));

            // Save the file to a folder
            Part filePart = request.getPart("name" + 6 + i);
            String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
            String uploadFolder = "C:\\Users\\deepa\\OneDrive\\Documents\\NetBeansProjects\\GROCRY\\web\\photos"; // Use the path to your desired directory
             HttpSession session=request.getSession();
        String id=(String)session.getAttribute("i11");
        Decoder d=Base64.getDecoder();
          byte[] a=d.decode(id);
          String  l=new String(a);
           int ids=Integer.parseInt(l);
           Seller admin=new Seller();
           int findquantity=admin.admingetquentityproduct(name,i);
            if(findquantity>0){
             quantity=quantity+findquantity;
            int update=admin.adminupdateitem(name, description, categoryId, price, discount, quantity,fileName,ids);
            System.out.println(update+"item updated");
            }
            else{
                int additem=admin.adminaddnewitem(name, description, categoryId, price, discount, quantity, fileName,ids);
                    System.out.println(additem+"item added");
            }
            // Create the folder if it doesn't exist
            File uploadsDir = new File(uploadFolder);
            if (!uploadsDir.exists()) {
                uploadsDir.mkdirs(); // Creates any necessary parent directories too
            }
            // Save the uploaded image to the specified directory
            File file = new File(uploadsDir, fileName);
            filePart.write(file.getAbsolutePath());
            System.out.println(uploadsDir);

            // Assuming you have a database connection and can insert the data into the database
            // Replace these lines with your database insert code
            // insertIntoDatabase(name, description, categoryId, price, discount, quantity, file.getAbsolutePath());
        }

        out.println("Data saved successfully!");
    }
       
    }

