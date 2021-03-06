/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Expedientes;

import datos.ConexionJDBC;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




/**
 *
 * @author 52449
 */
public class registrar extends HttpServlet {
 /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    //HERENCIA
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        
          ConexionJDBC con= new ConexionJDBC ();
        con.conectar();
        String sql="INSERT INTO software_nutricion.\"Pacientes_Expediente\"(id,nombre_apellido,edad,escolaridad,civil,ocupacion,motivo_consulta,antecedentes_heredados,medicamentos,tabaco,alcohol,drogas,enfermedadesapp,alergias_alimentariosapp,alimentos_desagradablesapp,user_name,password)" + "VALUES(default,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
      System.out.println(sql);
        
        try(PreparedStatement pst=con.getConexion().prepareStatement(sql)){
        
        pst.setString(1,request.getParameter("nombre_apellido"));
        pst.setString(2,request.getParameter("edad"));
        pst.setString(3,request.getParameter("escolaridad"));
        pst.setString(4,request.getParameter("civil"));
        pst.setString(5,request.getParameter("ocupacion"));
        pst.setString(6,request.getParameter("motivo_consulta"));    
        pst.setString(7,request.getParameter("antecedentes_heredados"));   
       pst.setString(8,request.getParameter("medicamentos"));   
       pst.setString(9,request.getParameter("tabaco"));   
       pst.setString(10,request.getParameter("alcohol"));   
       pst.setString(11,request.getParameter("drogas"));  
       pst.setString(12,request.getParameter("enfermedadesapp"));  
       pst.setString(13,request.getParameter("alergias_alimentariosapp"));  
       pst.setString(14,request.getParameter("alimentos_desagradablesapp"));  
       pst.setString(15,request.getParameter("user_name"));
        pst.setString(16,request.getParameter("password"));
       pst.execute();
       
        request.getRequestDispatcher("Expediente_Agregado_Con_Exito.jsp").forward(request, response);
        } catch (SQLException ex){
        Logger.getLogger(registrar.class.getName()).log(Level.SEVERE, null, ex);
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
    

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    //HERENCIA
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
      
           try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(registrar.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
         Logger.getLogger(registrar.class.getName()).log(Level.SEVERE, null, ex);
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
