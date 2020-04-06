
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
public class update_nutriologo_leido extends HttpServlet {
    
 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        
     
     
          ConexionJDBC con= new ConexionJDBC ();
        con.conectar();

    String  fecha,user_name_envia,user_name_recibe,asunto,mensaje;  
// MENU 1
int id=Integer.parseInt(request.getParameter("id"));

            fecha = request.getParameter("fecha");
String estatus = "Leido";
            user_name_envia = request.getParameter("user_name_envia");
           user_name_recibe = request.getParameter("user_name_recibe");
           asunto = request.getParameter("asunto");
           mensaje = request.getParameter("mensaje");
           
         
           

        
        String sql="UPDATE software_nutricion.\"Mensajes\" SET user_name_envia='"+user_name_envia+"',user_name_recibe='"+user_name_recibe+"',asunto='"+asunto+"',mensaje='"+mensaje+"',estatus='"+estatus+"',fecha='"+fecha +"'WHERE id="+id;
      System.out.println(sql);
        
        try(PreparedStatement pst=con.getConexion().prepareStatement(sql)){
        
   
        
       pst.executeUpdate();
       
        request.getRequestDispatcher("Mensaje_Leido_Nutriologo_Exito.jsp").forward(request, response);
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