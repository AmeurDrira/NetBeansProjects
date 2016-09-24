/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tn.iit.formulaire;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ameur
 */
@WebServlet(name = "Formulaire", urlPatterns = {"/Formulaire"})
public class Formulaire extends HttpServlet {

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
            out.println("<title>Servlet Formulaire</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Formulaire at " + request.getContextPath() + "</h1>");
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
    protected void doGet(HttpServletRequest request, HttpServletResponse res)
            throws ServletException, IOException 
    {
         res.setContentType("text/html");
         PrintWriter out = res.getWriter();
        
        out.println("<BODY BGCOLOR=\"#FDF5E6\">\n" +"<H1 ALIGN=CENTER>" + "AMeurDrira"+ "</H1>\n" +
        "<B>RequestMethod: </B>" + request.getMethod() + "<BR>\n" +
        "<B>RequestURI: </B>" +request.getRequestURI() + "<BR>\n" +
        "<B>RequestProtocol: </B>" +request.getProtocol() + "<BR><BR>\n" +
        "<B>Adresse IP Client: </B>"+request.getRemoteAddr()+ "<BR>\n"+
        "<B>Nom Client: </B>"+request.getRemoteHost()+ "<BR>\n"+
        "<TABLE BORDER=1 ALIGN=CENTER>\n" +
        "<TH>Header Name<TH>Header Value");
        Enumeration headerNames = request.getHeaderNames();
        while(headerNames.hasMoreElements())
        {
            String headerName = (String)headerNames.nextElement();
            out.println("<TR><TD>" + headerName);
            out.println(" <TD>" + request.getHeader(headerName));
        }
            out.println("</TABLE>\n</BODY></HTML>");
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
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
            String tab[];
         Enumeration e = req.getParameterNames();
         //out.append(""+e.hasMoreElements());
            while(e.hasMoreElements())
            {
              Object obj = e.nextElement();
              String fieldName = (String) obj;
              tab= req.getParameterValues(fieldName);
              
              for(int i=0;i<tab.length;i++)
              {
                  out.println(fieldName + " : " + tab[i] + "<br>");
              }          
            }       

            out.close();

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
