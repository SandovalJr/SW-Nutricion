<%-- 
    Document   : Editar_dieta
    Created on : 5/07/2019, 12:35:56 AM
    Author     : 52449
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<% 
    
   

    
    String user_name=(String) session.getAttribute("user_name");%>
                %>

                <%
        if(session.getAttribute("user_name") !=null
                && !session.getAttribute("user_name").equals("")){
        
    }   else {
            response.sendRedirect("/software_nutricion/inicio.jsp");
            }
%>

<% 
    //Conexcion a la base de datos
        Connection conexion;
        
        String Driver="org.postgresql.Driver";
       
        Class.forName(Driver);
        conexion=DriverManager.getConnection("jdbc:postgresql://localhost:5432/software_nutricion","postgres","sandoval123");
        if (!conexion.isClosed()){
            System.out.println("Conexion exitosa a la base de datos de editar dieta");
        }
        
      
    %>



<html lang=''>
<head>0

  
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    
    
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
 
   
   
   <title>Bienvenido Nutrilogo</title>
  
</head>

<body   background="fondo_verde.jpg">
    
    <div style="float:right " >
        <%=user_name%>
  </div>
  
  
  <div id='cssmenu'>
      <li><a  style="float:right" href="logout"> <img src="cerrar.png"> </a></li>
    
  </div>
    
    
    
<div id='cssmenu'>
<ul>
	 <li><a href='http://localhost:8080/software_nutricion/Menu.jsp'><img src="casa.png"></a></li>
   <li class='active has-sub'><a href='#'><span>Recetas</span></a>
      <ul>
        <li><a href='http://localhost:8080/software_nutricion/desayuno.jsp'><span>Desayuno</span></a></li>
             <li><a href='http://localhost:8080/software_nutricion/comida.jsp'><span>Comida</span></a></li>
		   <li><a href='http://localhost:8080/software_nutricion/cena.jsp'><span>Cena</span></a></li>
            <li><a href='http://localhost:8080/software_nutricion/colaciones.jsp'><span>Colación</span></a></li>
                   <li><a href='http://localhost:8080/software_nutricion/Bebidas.jsp'><span>Bebidas</span></a></li>  

             <a href="recetas_registro.jsp" > <img src="mas.png">  </a>
      </ul>
   </li>
    <li class='active has-sub'><a href='#'><span>Expedientes</span></a>
      <ul>
         
        <li><a href='http://localhost:8080/software_nutricion/registro.jsp'><span>Añadir</span></a></li>
        
             <li><a href='http://localhost:8080/software_nutricion/eliminarR.jsp'><span>Eliminar</span></a></li>
		   <li><a href='http://localhost:8080/software_nutricion/Buscar_Expediente.jsp'><span>Buscar</span></a></li>
      </ul>
   </li> 
   <li><a href='http://localhost:8080/software_nutricion/dietas.jsp'><span>Dietas</span></a></li>
               <li><a href='http://localhost:8080/software_nutricion/metas_registro.jsp'><span>Metas</span></a></li>

   
	 <li><a href='http://localhost:8080/software_nutricion/Mensajes_Menu.jsp'><span>Mensajes</span></a></li>

<div style="position: fixed; rigth: 75%"><img src="software_nutricion/Login_v5/images/icons/logo_nutricion.png" width="250" height="250" alt=""/></div>

</ul>
     
</div>


    <div style="position: fixed; left:73%">
        <br><br><br><br>  <br><br><br><br>  <br><br><br><br>
         <img  src="mono.png" width="800" height="500"  alt=""/></div>
    

   
  <br>
  
  <% 
    //Empezamos listado los datos de la tabla usuario
     PreparedStatement ps;
              

              ResultSet rs;

        System.out.println("LLEGO AL FROM");
        
         String user= request.getParameter("user");
    System.out.println(user);

     ps=conexion.prepareStatement("SELECT id,user_name as user,menu1,desayuno1,comida1,colacion1,cena1,menu2,desayuno2,comida2,colacion2,cena2,menu3,desayuno3,comida3,colacion3,cena3,menu4,desayuno4,comida4,colacion4,cena4,menu5,desayuno5,comida5,colacion5,cena5,bebida1,bebida11,bebida111,bebida2,bebida22,bebida222,bebida3,bebida33,bebida333,bebida4,bebida44,bebida444,bebida5,bebida55,bebida555,ce1,ce11,ce2,ce22,ce3,ce33,ce4,ce44,ce5,ce55 FROM software_nutricion.\"dietas\" WHERE user_name='"+user+"'"); 
 rs=ps.executeQuery();  
 System.err.println(ps);
        while(rs.next()){
  %>

    
 
  <div class ='container'>
      
    <div style="position: absolute; left: 17%" >
           <div class="d-flex">  
                  <div   class="card col-lg-15">
    <table   class="table table-hover">
        <td style="background-color:#FFFF00"><b>USER_NAME</b></td>
        
        
        
                        <td> <input  type="text" name="user_name" value = "" size="40" > <%=rs.getString("user")%></td>
                
                        <tr>
                    <th style="background-color:#A4A4A4">MENU 1</th>
                   <td style="background-color:#A4A4A4"> 
                       <select name="menu1" value=""  ><%=rs.getString("menu1")%>

                    <option> lunes    </option>
                    <option>  martes   </option>
                    <option>  miercoles  </option>
                     <option>  jueves  </option>
                      <option>  viernes  </option>
                       <option>  sabado  </option>
                        <option>  domingo  </option>
                    <option selected></option>
                    <td > 
                    </td>
                    
                     <th style="background-color:#A4A4A4">MENU 3</th>

                    <td style="background-color:#A4A4A4"> 
                    <select name="menu3" value="" ><%=rs.getString("menu3")%>

                    <option> lunes    </option>
                    <option>  martes   </option>
                    <option>  miercoles  </option>
                     <option>  jueves  </option>
                      <option>  viernes  </option>
                       <option>  sabado  </option>
                        <option>  domingo  </option>
                    <option selected></option>
                    </td>
                    
                </tr>
                <tbody>
                    <tr>
                        <td>Desayuno</td>
                   
                         <td><select name="desayuno1" value="" > <%=rs.getString("desayuno1")%> 

                    <option>       <%  

      ResultSet ds;
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'desayuno'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option> 
                
</td>
                </select>
                        
                           <td> </td>
  <td>Desayuno</td> <!-- MENU 3 -->
                 <td><select name="desayuno3" value="" ><%=rs.getString("desayuno3")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'desayuno'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione..."+ds.getString("nombre_platillo")+"</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
        </tr>
        <tr>
            <td>Bebida</td>
                   
                         <td><select name="bebida1" value=""><%=rs.getString("bebida1")%>

                    <option>       <%  

 
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'bebida'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option> 
                    
                    <td></td>
                    
                    <td>Bebida</td>
                   
                         <td><select name="bebida3" value="" ><%=rs.getString("bebida3")%>

                    <option>       <%  

 
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'bebida'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option> 
            
            
        </tr>
        
        
        
        
                    <tr>
                        <td>Comida</td> <!-- COMIDA 1 -->
                        <td><select name="comida1" value="" ><%=rs.getString("comida1")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'comida'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                        
                        
                        
                           <td> </td>
                        <td>Comida</td> <!-- COMIDA 3-->
                        <td><select name="comida3" value="" ><%=rs.getString("comida3")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'comida'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                        
                        
                        
                    </tr>
                    
                    <tr>
                       <td>Bebida</td>
                   
                         <td><select name="bebida11" value="" ><%=rs.getString("bebida11")%>

                    <option>       <%  

 
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'bebida'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>  
                    <td></td>
                       
                    <td>Bebida</td>
                   
                         <td><select name="bebida33" value="" ><%=rs.getString("bebida33")%>

                    <option>       <%  

 
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'bebida'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option> 
                    
                    </tr>
                    
      
                       
                    
                
                <tr>
                      <td>Cena</td> <!-- CENA 1 -->
                        
                        <td><select name="cena1" value="" ><%=rs.getString("cena1")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'cena'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                        
                      
                      
                      
                           <td> </td>
                         <td>Cena</td> <!-- CENA 3-->
                          <td><select name="cena3" value="" ><%=rs.getString("cena3")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'cena'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                         
                         
                         
                    </tr>
                    <tr>
                         <tr>
                         <td>Bebida</td>
                   
                         <td><select name="bebida111" value="" ><%=rs.getString("bebida111")%>

                    <option>       <%  

 
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'bebida'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>   
                    
                    
                    <td></td>
                    <td>Bebida</td>
                   
                         <td><select name="bebida333" value="" ><%=rs.getString("bebida333")%>

                    <option>       <%  

 
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'bebida'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option> 
                       </tr>  
                                      <tr>
                         <td>Colacion</td> <!--COLACION 1 -->
                                 <td><select name="colacion1" value="" ><%=rs.getString("colacion1")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'colacion'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                        
                        
                           <td> </td>
                         <td>Colacion</td> <!--COLACION 3 -->
                          <td><select name="colacion3" value="" ><%=rs.getString("colacion3")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'colacion'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                        
                         
                         
                         
                         
                       </tr> 
                       
               
                       
                       
                       
            <tr>
                         <td>Colacion extra 1:</td> <!--COLACION 1 -->
                                 <td><select name="ce1" value="" ><%=rs.getString("ce1")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'colacion'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                        
                        
                           <td> </td>
                         <td>Colacion extra 1:</td> <!--COLACION 3 -->
                          <td><select name="ce3" value="" ><%=rs.getString("c3")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'colacion'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                        
                      </tr> 
                      
                        <tr>
                         <td>Colacion extra 2:</td> <!--COLACION 1 -->
                                 <td><select name="ce11" value="" ><%=rs.getString("ce11")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'colacion'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                        
                        
                           <td> </td>
                         <td>Colacion extra 2:</td> <!--COLACION 3 -->
                          <td><select name="ce33" value="" ><%=rs.getString("ce33")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'colacion'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                        
                      </tr> 
                     
                      
                      
                      
                  </tbody>
            </table>
                  </div> </div>  </div>  
                    
                    <br> <br> <br><br><br><br><br><br><br><br><br><br><br><br>                 
                                        <br> <br> <br><br>    <br> <br> <br><br>   <br> <br> <br>             


    <div class="d-flex">  
        <div  style="position: absolute; left: 17%" class="card col-lg-15"> 
    <table class="table table-hover">
               
                <tr>
                    <th style="background-color:#A4A4A4">MENU 2</th>
                    <td style="background-color:#A4A4A4">
                         <select name="menu2"  value="" ><%=rs.getString("menu2")%>

                    <option> lunes    </option>
                    <option>  martes   </option>
                    <option>  miercoles  </option>
                     <option>  jueves  </option>
                      <option>  viernes  </option>
                       <option>  sabado  </option>
                        <option>  domingo  </option>
                         <option selected></option>
                    </td>
                       <td> </td>
                       <th style="background-color:#A4A4A4">MENU 4</th>
                       <td style="background-color:#A4A4A4">
                            <select name="menu4" value="" ><%=rs.getString("menu4")%>

                    <option> lunes    </option>
                    <option>  martes   </option>
                    <option>  miercoles  </option>
                     <option>  jueves  </option>
                      <option>  viernes  </option>
                       <option>  sabado  </option>
                        <option>  domingo  </option>
                         <option selected></option>
                           
                       </td>
                </tr>
                <tbody>
                    <tr>
                        <td>Desayuno</td> <!-- MENU 2 -->
                          <td><select name="desayuno2"value="" ><%=rs.getString("desayuno2")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'desayuno'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                           <td>
                           </td>
<td>Desayuno</td> <!-- MENU 4-->
   <td><select name="desayuno4" value="" ><%=rs.getString("desayuno4")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'desayuno'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                    </tr>
                    
             <tr>
            <td>Bebida</td>
                   
                         <td><select name="bebida2" value="" ><%=rs.getString("bebida2")%>

                    <option>       <%  

 
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'bebida'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option> 
                    
                    <td></td>
                    
                    <td>Bebida</td>
                   
                         <td><select name="bebida4" value="" ><%=rs.getString("bebida4")%>

                    <option>       <%  

 
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'bebida'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option> 
            
            
        </tr>
                
                    
                    
                    
                    
                    
                    
                    
                    <tr>
                        <td>Comida</td> <!-- COMIDA 2-->
                       <td><select name="comida2" value="" ><%=rs.getString("comida2")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'comida'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                        
                        
                        
                           <td> </td>
                            <td>Comida</td> <!-- COMIDA4 --> 
                       <td><select name="comida4" value=""  ><%=rs.getString("comida4")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'comida'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                        
                        
                        
                        
                    </tr>
                    
                          <tr>
            <td>Bebida</td>
                   
                         <td><select name="bebida22" value="" ><%=rs.getString("bebida22")%>

                    <option>       <%  

 
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'bebida'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option> 
                    
                    <td></td>
                    
                    <td>Bebida</td>
                   
                         <td><select name="bebida44" value="" ><%=rs.getString("bebida44")%>

                    <option>       <%  

 
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'bebida'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option> 
            
            
        </tr>
                
                    
                    
                    
                    
                    
                    
                    
               
             
                <tr>
                      <td>Cena</td> <!--cena2-->
                                 <td><select name="cena2" value="" ><%=rs.getString("cena2")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'cena'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                         
                         
                        
                           <td> </td>
                            <td>Cena</td> <!-- cena4 -->
                            
                                 <td><select name="cena4" value="" ><%=rs.getString("cena4")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'cena'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                         
                          
                           
                    </tr>
                    
                     <tr>
            <td>Bebida</td>
                   
                         <td><select name="bebida222" value="" ><%=rs.getString("bebida222")%>

                    <option>       <%  

 
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'bebida'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option> 
                    
                    <td></td>
                    
                    <td>Bebida</td>
                   
                         <td><select name="bebida444"value="" ><%=rs.getString("bebida444")%>

                    <option>       <%  

 
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'bebida'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option> 
            
            
        </tr>
        
             <tr>
                         <td>Colacion</td> <!-- COLACION 2-->
                          <td><select name="colacion2" value="" ><%=rs.getString("colacion2")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'colacion'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                        
                          
                           <td> </td>
                             <td>Colacion</td> <!-- COLACION 4-->
                          <td><select name="colacion4" value="" ><%=rs.getString("colacion4")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'colacion'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                        


</tr> 
  <tr>
                         <td>Colacion extra 1:</td> <!--COLACION 1 -->
                                 <td><select name="ce2" value="" ><%=rs.getString("ce2")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'colacion'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                        
                        
                           <td> </td>
                         <td>Colacion extra 1:</td> <!--COLACION 3 -->
                          <td><select name="ce4" value="" ><%=rs.getString("ce4")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'colacion'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                        
                      </tr> 
                      
                        <tr>
                         <td>Colacion extra 2:</td> <!--COLACION 1 -->
                                 <td><select name="ce22" value="" >

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'colacion'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione..."+rs.getString("ce22")+"</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                        
                        
                           <td> </td>
                         <td>Colacion extra 2:</td> <!--COLACION 3 -->
                          <td><select name="ce44" value="" ><%=rs.getString("ce44")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'colacion'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                        
                      </tr>    






                    
                    
                    
                    
                    
                   </tbody>
                  
    </table> 
                   
           </div>
                     <br><br> <br><br> <br><br> <br><br><br> <br><br> <br> 
                                          <br><br> <br><br> <br><br> <br><br><br> <br><br> 
                    </div>
                    <div class="d-flex">  
                  <div   style="position: absolute; left: 17%"  class="card col-lg-15">
    <table class="table table-hover">
               
                      <tr>
                      <th style="background-color:#A4A4A4">MENU 5</th>
                      <td style="background-color:#A4A4A4">
                           <select name="menu5"  value="" ><%=rs.getString("menu5")%>

                    <option> lunes    </option>
                    <option>  martes   </option>
                    <option>  miercoles  </option>
                     <option>  jueves  </option>
                      <option>  viernes  </option>
                       <option>  sabado  </option>
                        <option>  domingo  </option>
                         <option selected></option>
                          
                      </td>
                    
                    </tr>
                    
                    
                    
                    
                    <tbody>
                         <tr>
                        <td>Desayuno</td> <!-- menu5-->
                          <td><select name="desayuno5" value="" ><%=rs.getString("desayuno5")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'desayuno'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                         </tr>
                         <tr>
                            <tr>
            <td>Bebida</td>
                   
                         <td><select name="bebida5" value="" ><%=rs.getString("bebida5")%>

                    <option>       <%  

 
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'bebida'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option> 
                      
                             
                         </tr>  
                         
                         
                          <tr>
                        <td>Comida</td> <!--COMIDA 5 -->
                       <td><select name="comida5" value="" ><%=rs.getString("comida5")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'comida'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                        
                        
                        
                          </tr>
                          <tr>
                            <tr>
            <td>Bebida</td>
                   
                         <td><select name="bebida55" value="" ><%=rs.getString("bebida55")%>

                    <option>       <%  

 
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'bebida'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option> 
                      
                             
                         </tr>    
                              
                          </tr>
                          
                          
                          
                           <tr>
                               <td>Cena</td> <!-- cena  -->
                                  <td><select name="cena5" value="" ><%=rs.getString("cena5")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'cena'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                     </tr>    
                     
                      <tr>
            <td>Bebida</td>
                   
                         <td><select name="bebida555" value="" ><%=rs.getString("bebida555")%>

                    <option>       <%  

 
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'bebida'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option> 
                      
                             
                         </tr> 
                          <tr>
                         <td>Colacion</td> <!-- COLACION 5 -->
                         <td><select name="colacion5" value="" ><%=rs.getString("colacion5")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'colacion'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                        
                           
                           
                           </tr>
                           
                           
                            <tr>
                         <td>Colacion extra 1:</td> <!--COLACION 1 -->
                                 <td><select name="ce5" value="" ><%=rs.getString("ce5")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'colacion'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                        
                        
                        
                      </tr> 
                      
                        <tr>
                
                         <td>Colacion extra 2:</td> <!--COLACION 3 -->
                          <td><select name="ce55" value="" ><%=rs.getString("ce55")%>

                    <option>       <% 

  
        ps=conexion.prepareStatement("SELECT nombre_platillo FROM software_nutricion.\"Recetas\" WHERE estatus = 'colacion'"); 
       ds=ps.executeQuery();  
        //Empezamos listado los datos de la tabla usuario
        
       
        out.println(" <option value= ''>Seleccione...</option>'");
        while(ds.next()){
            out.println("<option value='"+ds.getString("nombre_platillo")+"'>"+ds.getString("nombre_platillo")+"</option>");
        }
        
                    %>   </option>    </td>
                        
                      </tr>  
                           
                         
                           
                           
                    </tbody>
                   </table>
                    
                       </div> 
                    
                    </div>    
                   
                    <table >
        <br> <br> <br> <br><br> <br> <br> <br>
                       
            <div style="position: absolute; left: 65%" >
                <button style='width:110px; height:95px' class="login100-form-btn"> <img src="archivo.png"> Actualizar</button>
            </div>
        
                    </table>
                    <br>  
                            <br> <br> <br> <br>

                    
            
              </div>


                    
</body>
<br>  
  </form>
                    <% }%>


 
   </html>
   