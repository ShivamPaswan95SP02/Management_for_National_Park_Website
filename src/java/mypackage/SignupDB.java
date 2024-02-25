/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mypackage;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;



/**
 *
 * @author Shivam paswan
 */
@MultipartConfig
@WebServlet(name = "SignupDB", urlPatterns = {"/SignupDB"})
public class SignupDB extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet signup</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1> Welcome into servlet </h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       String Name=request.getParameter("name");
       String Gender=request.getParameter("gender");
       String CheckGender="";
       if(Gender.equals("Male"))
           CheckGender="Male";
       else
           CheckGender="Female";
       String Mobile=request.getParameter("mobile");
       String State=request.getParameter("state");
       String Age=request.getParameter("age");
       String Email=request.getParameter("email");
       String Pasword=request.getParameter("pass");
       String Date=request.getParameter("Sdate");
       String Time=request.getParameter("time");
       String CheckTime="";
       if(Time.equals("8:30AM-12:30PM"))
           CheckTime="8:30AM-12:30PM";
       else
           CheckTime="12:30PM-4:30PM";
       String Person=request.getParameter("person");
       String Price=request.getParameter("price");
       String Quantity=request.getParameter("quantity");
     /**  
       Part file= request.getPart("profile");
       String fileName=file.getSubmittedFileName();
      InputStream is=file.getInputStream();
       File f=new File(request.getRealPath("/images"),Email+fileName);
       Files.copy(is, f.toPath());
   **/
     
       Part file = request.getPart("profile");
String fileName = file.getSubmittedFileName();

// Define the path where you want to save the uploaded file
String uploadDirectory = getServletContext().getRealPath("/images");
String filePath = uploadDirectory + File.separator +Email +fileName;

try (InputStream is = file.getInputStream()) {
    Files.copy(is, Paths.get(filePath));
} catch (IOException e) {
    // Handle the exception appropriately (e.g., logging or sending an error response)
    e.printStackTrace();
}
       String captcha=request.getParameter("hdn1");
       String ConfirmCaptcha=request.getParameter("cc1");
      
      ConnectionMg cm=new ConnectionMg(); 
     
       if(captcha.equals(ConfirmCaptcha))
       { 
           
           String command1="insert into signup values('"+Name+"','"+CheckGender+"','"+Mobile+"','"+State+"','"+Age+"','"+Email+"','"+Pasword+"','"+fileName+"','"+Date+"','"+CheckTime+"','"+Person+"','"+Price+"','"+Quantity+"')";
         PrintWriter out = response.getWriter();
      if(cm.ExecuteInsertUpdateSelectOrDelete(command1))
      {
        
          out.print("<script>alert('your signup  complited ');window.location.href='allpages/payment.jsp';</script>");
      }
       else
      {
          out.print("<script>alert('your signup  is not complited ');window.location.href='allpages/signup.jsp';</script>");
      }   
       }
       
     else
       {
                 PrintWriter out = response.getWriter();
          out.print("<script>alert('invalid capchcode  code');window.location.href='allpages/signup.jsp';</script>");
       }
       
    
    }

    

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
