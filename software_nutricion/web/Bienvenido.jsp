<%-- 
    Document   : Bienvenido
    Created on : 14/06/2019, 12:15:18 PM
    Author     : 52449
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%
    String user_name=(String) session.getAttribute("user_name");%>

    <%=user_name%>
    <%
        if(session.getAttribute("user_name") !=null
                && !session.getAttribute("user_name").equals("")){
        
    }   else {
            response.sendRedirect("/software_nutricion/inicio.jsp");
            }
%>









<html lang="en">

  <head>
   
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Tooplate">
    <link href="https://fonts.googleapis.com/css?f;amily=Roboto:100,300,400,500,700" rel="stylesheet">


    <title>SOFTWARE NUTRCION</title>
    
  <div id='cssmenu'>
      <li><a  style="float:right" href="logout"> <img src="cerrar.png"> </a></li>
  </div>   
      
    
    <!-- Bootstrap core CSS -->
    
    
    <link href="menu_pacientes/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="menu_pacientes/assets/css/fontawesome.css">
    <link rel="stylesheet" href="menu_pacientes/assets/css/tooplate-main.css">
    <link rel="stylesheet" href="menu_pacientes/assets/css/owl.css">

  </head>

  <body>

    <div class="sequence">
  
      <div class="seq-preloader">
        <svg width="39" height="16" viewBox="0 0 39 16" xmlns="http://www.w3.org/2000/svg" class="seq-preload-indicator"><g fill="#F96D38"><path class="seq-preload-circle seq-preload-circle-1" d="M3.999 12.012c2.209 0 3.999-1.791 3.999-3.999s-1.79-3.999-3.999-3.999-3.999 1.791-3.999 3.999 1.79 3.999 3.999 3.999z"/><path class="seq-preload-circle seq-preload-circle-2" d="M15.996 13.468c3.018 0 5.465-2.447 5.465-5.466 0-3.018-2.447-5.465-5.465-5.465-3.019 0-5.466 2.447-5.466 5.465 0 3.019 2.447 5.466 5.466 5.466z"/><path class="seq-preload-circle seq-preload-circle-3" d="M31.322 15.334c4.049 0 7.332-3.282 7.332-7.332 0-4.049-3.282-7.332-7.332-7.332s-7.332 3.283-7.332 7.332c0 4.05 3.283 7.332 7.332 7.332z"/></g></svg>
      </div>
      
    </div>

    <div class="logo">

        <h1>BIENVENIDO </h1> 

        <h2>Usuario</h2>
        <div style="position: absolute; right: 0%">
            <br> <br> <br>
            <img src="software_nutricion/Login_v5/images/icons/logo_nutricion.png" width="230" height="250" alt=""/></div>

    </div>
    <nav>

        <div style="color:#FFFFFF" >
            <h4>
                <%=user_name%>
            </h4>
        </div>

        <ul>
            <li></li>


            <li><a href="https://www.facebook.com/"><img src="menu_pacientes/assets/images/apple_fruit_fruits_20616 (2).png" alt =""></a></li>
            <li><font color="#ffffff">DIETAS</font></li>
            <li><a href="#2"><img src="menu_pacientes/assets/images/seo_goals_16325 (1).png"> <em>METAS</em></a></li>
            <li><a href="#3"><img src="menu_pacientes/assets/images/graphs_46879.png"> </a></li><li><font color="#ffffff">EVOLUCION</font>&nbsp;</li>
            <li><a href="#4"><img src="menu_pacientes/assets/images/Messages_41172 (3).png"> </a></li><li><font color="#ffffff">CONTACTO</font>&nbsp;</li>

        </ul>
    </nav>
        
     
                 

    <!-- Bootstrap core JavaScript -->
    <script src="menu_pacientes/vendor/jquery/jquery.min.js"></script>
    <script src="menu_pacientes/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


    <!-- Additional Scripts -->
    <script src="menu_pacientes/assets/js/owl.js"></script>
    <script src="menu_pacientes/assets/js/accordations.js"></script>
    <script src="menu_pacientes/assets/js/main.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {

            // navigation click actions 
            $('.scroll-link').on('click', function(event){
                event.preventDefault();
                var sectionID = $(this).attr("data-id");
                scrollToID('#' + sectionID, 750);
            });
            // scroll to top action
            $('.scroll-top').on('click', function(event) {
                event.preventDefault();
                $('html, body').animate({scrollTop:0}, 'slow');         
            });
            // mobile nav toggle
            $('#nav-toggle').on('click', function (event) {
                event.preventDefault();
                $('#main-nav').toggleClass("open");
            });
        });
        // scroll function
        function scrollToID(id, speed){
            var offSet = 0;
            var targetOffset = $(id).offset().top - offSet;
            var mainNav = $('#main-nav');
            $('html,body').animate({scrollTop:targetOffset}, speed);
            if (mainNav.hasClass("open")) {
                mainNav.css("height", "1px").removeClass("in").addClass("collapse");
                mainNav.removeClass("open");
            }
        }
        if (typeof console === "undefined") {
            console = {
                log: function() { }
            };
        }
    </script>

  </body>
</html>