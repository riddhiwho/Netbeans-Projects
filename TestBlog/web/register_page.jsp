
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        
        <!--css-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        
    </head>
    <body>
        
        <%@include file="normal_navbar.jsp" %>
        
        <main class="primary-background p-5">
            
            <div class="container">
                
                <div class="col-md-6 offset-md-3">
                    
                    <div class="card">
                        
                        <div class="card-header text-center primary-background text-white">
                            <span class="fa fa-3x fa-user-circle"></span>
                            <br>
                            Register Here
                        </div>
                        
                        <div class="card-body">
                            
                            <form id="reg-form" action="RegisterServlet" method="POST">
                                
                                <div class="form-group">
                                  <label for="user_name">User Name</label>
                                  <input name="user_name" type="text" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter name">
                                </div>
                                
                                
                                
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Email address</label>
                                  <input name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                
                                
                                
                                <div class="form-group">
                                  <label for="exampleInputPassword1">Password</label>
                                  <input name="user_password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>
                                
                                
                                
                                <div class="form-group">
                                  <label for="gender">Gender</label>
                                  <br>
                                  <input type="radio" id="gender" name="gender" value="male">Male
                                  <input type="radio" id="gender" name="gender" value="female">Female
                                </div>
                                
                                <div class="form-group">
                                    
                                    <textarea name="about" class="form-control" id="" rows="5" placeholder="Enter something about yourself..."></textarea>
                                    
                                </div>
                                
                                
                                <div class="form-check">
                                  <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
                                  <label class="form-check-label" for="exampleCheck1">I agree to Terms and Conditions</label>
                                </div>
                                
                                <br>
                                <div class="container text-center" id="loader" style="display: none;">
                                    <span class="fa fa-refresh fa-spin fa-3x"></span>
                                    <h4>Please wait..</h4>
                                    
                                </div>
                                <button id="submit-btn" type="submit" class="btn btn-primary">Submit</button>
                            </form>
                            
                        </div>
                        
                    </div>
                    
                </div>
                
            </div>
            
        </main>
        
        <!--javascript-->
        <script
            src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        
        <script>
            $(document).ready(function(){
                console.log("Loaded..")
                
                $('#reg-form').on('submit', function(event){
                    event.preventDefault();
                    
                    let form = new FormData(this);
                    
                    $("#submit-btn").hide();
                    $("#loader").show();
                    
                    //send to register servlet
                    $.ajax({
                       url: "RegisterServlet",
                       type: 'POST',
                       data: form,
                       success: function (data, textStatus, jqXHR) {
                           console.log(data)
                           
                           $("#submit-btn").show();
                           $("#loader").hide();
                           
                           if(data.trim()==='Done.'){
                           
                           swal("Registered Successfully.. Redirecting to Login Page")
                                .then((value) => {
                                  window.location="login_page.jsp"
                                });
                            }else{
                                swal(data);
                            }
                       },
                       error: function (jqXHR, textStatus, errorThrown){
                           $("#submit-btn").show();
                           $("#loader").hide();
                           swal("Something went wrong.. try again");
                                
                       },
                       processData: false,
                       contentType: false
                       
                    });
                    
                    
        
                });
                
            });
            
        </script>
        
    </body>
</html>
