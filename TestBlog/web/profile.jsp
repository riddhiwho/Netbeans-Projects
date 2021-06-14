<%@page import="com.tech.blog.entities.User" %>
<%@page errorPage="error_page.jsp" %>

<%
    
User user = (User)session.getAttribute("currentUser");
if(user==null){
    response.sendRedirect("login_page.jsp");
}

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <!--css-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        
    </head>
    <body>
        
        <!--navbar-->
        
        
        <nav class="navbar navbar-expand-lg navbar-dark primary-background">
  <div class="container-fluid">
      <a class="navbar-brand" href="index.jsp"> <span class="fa fa-asterisk"></span> Tech Blog</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#"> <span class="fa fa-bell-o"></span> Learn with Riz</a>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              <span class="fa fa-check-square-o"></span>   Categories
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Programming Language</a></li>
            <li><a class="dropdown-item" href="#">Project Implementation</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Data Structures</a></li>
          </ul>
        </li>
        
        <li class="nav-item">
            <a class="nav-link" href="#"><span class="fa fa-address-book-o"></span>  Contact</a>
        </li>
        
        
        
        
        
      </ul>
      
        <ul class="navbar-nav mr-right">
            
            <li class="nav-item">
                <a class="nav-link" href="#!" data-toggle="modal" data-target="#profile-modal" ><span class="fa fa-user-circle"></span> <%= user.getName() %> </a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="LogoutServlet"><span class="fa fa-user-plus"></span>  Logout</a>
            </li>                                                       
                                     
        </ul>
    </div>
  </div>
</nav>
        
        
        <!--end of navbar-->
        
        
        
        <!--profile modal-->
        


<!-- Modal -->
<div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header primary-background text-white text-center">
        <h5 class="modal-title" id="exampleModalLabel"> TechBlog </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <div class="container text-center">
              <img src="pics/default.png" class="img-fluid" style="border-radius:50%; max-width: 150px;">
              <br>
              <h5 class="modal-title mt-3" id="exampleModalLabel"> <%= user.getName()%> </h5>
              
              <!--details-->
              <div id="profile-details">
              <table class="table">
  
  <tbody>
    <tr>
      <th scope="row">ID: </th>
      <td> <%= user.getId() %>  </td>
      
    </tr>
    <tr>
      <th scope="row">Email: </th>
      <td> <%= user.getEmail() %></td>
      
    </tr>
    <tr>
      <th scope="row">Gender: </th>
      <td><%=user.getGender() %></td>
      
    </tr>
    <tr>
      <th scope="row">About: </th>
      <td><%=user.getAbout() %></td>
      
    </tr>
    <tr>
      <th scope="row">Registered On: </th>
      <td><%=user.getDateTime().toString() %></td>
      
    </tr>
  </tbody>
</table>
              </div>
      
      <!--profile edit-->
      
      <div id="profile-edit" style="display: none;">
          <h3 class="mt-2">Please Edit Carefully</h3>
          <form action="Editservlet" method="post">
              
              <table class="table">
                  <tr>
                      <td>ID: </td>
                      <td><%=user.getId() %></td>
                  </tr>
                  <tr>
                      <td>Email: </td>
                      <td><input type="email" class="form-control" name="user_email" value="<%=user.getEmail() %>" ></td>
                  </tr>
                  <tr>
                      <td>Name: </td>
                      <td><input type="text" class="form-control" name="user_name" value="<%=user.getName() %>" ></td>
                  </tr>
                  <tr>
                      <td>Password: </td>
                      <td><input type="password" class="form-control" name="user_password" value="<%=user.getPassword() %>" ></td>
                  </tr>
                  <tr>
                      <td>Gender: </td>
                      <td><%=user.getGender().toUpperCase() %></td>
                  </tr>
                  <tr>
                      <td>About: </td>
                      <td>
                        <textarea rows="5" class="form-control" name="user_about">
                            <%= user.getAbout() %>
                        </textarea>
                      </td>
                  </tr>
                  <tr>
                      <td>New Profile: </td>
                      <td>
                        <input type="file" name="image" class="form-control">
                      </td>
                  </tr>
              </table>
                        <div class="container">
                            <button type="submit" class="btn btn-outline-primary">Save</button>
                            
                        </div>
          </form>
      </div>
              
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button id="edit-profile-button" type="button" class="btn btn-primary">EDIT</button>
      </div>
    </div>
  </div>
</div>


        
        
         <!--javascript-->
        <script
            src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        
<script>
    $(document).ready(function(){
        let editStatus=false;
        
        $('#edit-profile-button').click(function(){
            
            if(editStatus==false){
                $("#profile-details").hide()
            
                $("#profile-edit").show();
                editStatus=true;
                $(this).text("Back")
            }else{
                $("#profile-details").show()
            
                $("#profile-edit").hide();
                editStatus=false;
                $(this).text("Edit")
            }
            
        })
    });
    
</script>
        
    </body>
</html>
