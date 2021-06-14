
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <!--css-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        
    </head>
    <body>
        
        <!--navbar-->
        <%@include file="normal_navbar.jsp" %>
        
       
        <!--banner-->
        
        <div class="container-fluid p-0 m-0">
            
            <div class="jumbotron primary-background text-white">
                <div class="container">
                <h3 class="display-3">Welcome, fellas!</h3>
                
                <p>Welcome to the greatest technical blog!
                A programming language is a formal language comprising a set of strings that produce various kinds of machine code output. Programming languages are used in computer programming to implement algorithms.</p>
                
                <p>Most programming languages consist of instructions for computers. There are programmable machines that use a set of specific instructions, rather than general programming languages. Since the early 1800s, programs have been used to direct the behavior of machines such as Jacquard looms, music boxes and player pianos.</p>
                
                <button class="btn btn-outline-light btn-lg"> <span class="fa fa-user-plus"></span> Start for Free</button>
                <a href="login_page.jsp" class="btn btn-outline-light btn-lg"> <span class="fa fa-user-circle fa-spin"></span> Login</a>
                
                </div>
            </div>
            
            
        </div>
        
        <!-- cards-->
        
        <div class="container">
            
            <div class="row mb-2">
                
                <div class="col-md-4">
                    
                    <div class="card">
                        
                        <div class="card-body">
                          <h5 class="card-title">Java Programming</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#" class="btn primary-background text-white">Read more</a>
                        </div>
                    </div>
                    
                </div>
                
                
                <div class="col-md-4">
                    
                    <div class="card">
                        
                        <div class="card-body">
                          <h5 class="card-title">Java Programming</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#" class="btn primary-background text-white">Read more</a>
                        </div>
                    </div>
                    
                </div>
                
                
                <div class="col-md-4">
                    
                    <div class="card">
                        
                        <div class="card-body">
                          <h5 class="card-title">Java Programming</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#" class="btn primary-background text-white">Read more</a>
                        </div>
                    </div>
                    
                </div>
                
                
            </div>
            
            <div class="row">
                
                <div class="col-md-4">
                    
                    <div class="card">
                        
                        <div class="card-body">
                          <h5 class="card-title">Java Programming</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#" class="btn primary-background text-white">Read more</a>
                        </div>
                    </div>
                    
                </div>
                
                
                <div class="col-md-4">
                    
                    <div class="card">
                        
                        <div class="card-body">
                          <h5 class="card-title">Java Programming</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#" class="btn primary-background text-white">Read more</a>
                        </div>
                    </div>
                    
                </div>
                
                
                <div class="col-md-4">
                    
                    <div class="card">
                        
                        <div class="card-body">
                          <h5 class="card-title">Java Programming</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#" class="btn primary-background text-white">Read more</a>
                        </div>
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
        
        <script>
//            $(document).ready(function(){
//                alert("document loaded")
//            })
            
        </script>
    </body>
</html>
