<%-- 
    Document   : verproducto
    Created on : 05-08-2023, 07:33:55 AM
    Author     : MINEDUCYT
--%>
<%-- 
    Document   : usuariosnormales
    Created on : 10-15-2021, 07:47:23 AM
    Author     : MINEDUCYT
--%>

<%@page import="java.util.Iterator"%>
<%@page import="model.publicacion"%>
<%@page import="java.util.List"%>
<%@page import="modelDAO.publicacionDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <jsp:include page="../../view/components/header.jsp"/>
   <!-- Compiled and minified CSS -->

    <body>
        <jsp:include page="../../view/components/menu_admin.jsp"/>
        <br>
        <div class="row">
            <div class="col-1"></div>
            <div class="col-10">
             
         <table  class="table table-striped">
             <thead style="background-color: red; color: white;">
          <tr>
              <th>Titulo</th>
              <th>Descripcion</th>
              <th>Precio</th>
               <th>Estado</th>
          </tr>
        </thead>

        <tbody>
        <% 
                         publicacionDAO dao = new publicacionDAO();
                         List<publicacion> listar = dao.listar();
                         Iterator<publicacion>iterator=listar.iterator();
                         publicacion publimodel = null;
                         while (iterator.hasNext())
                         {
                             publimodel = iterator.next();
                        %>


            
          <tr>
            <td><%= publimodel.getTitulo()%></td>
            <td><%= publimodel.getDescripcion()%></td>
            <td><%= publimodel.getContenido()%></td>
             <td><%if(publimodel.getEstado()==1){%>  
                   <span class="badge bg-warning text-dark">Disponible</span>
                   <%}%>
                   
                   <%if(publimodel.getEstado()==0){%>
                    <span class="badge bg-danger text-white">Agotado</span>
                   <%}%>
             </td>
          </tr>



            
                       
                 <% } %>
                 
        </tbody>
                       </table>
        </div>
        </div>
    </body>
</html>
