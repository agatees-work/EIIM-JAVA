<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Sign Up</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
      body {
            background-image: url("background.jpg");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            min-height: 100vh; 
            margin: 0; 
            padding: 0; 
        }
		body::before {
            content: "";
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
			background: rgba(204, 255, 204, 0.5);
            z-index: -1;
        }
        h2
        {
        	font-family: PT Serif;
        }
        .signup-container {
            margin-top: 5%;
        }
        .card-header
        {
        	background-color: rgba(230, 230, 230,  0.5);
        }
        .form-group
        {
        	color: black;
        }
           .label
        {
        	font-family: Inconsolata;
        }
        .label
        {
        	font-family: Inconsolata;
        }
        p,button
        {
        	font-family: Inconsolata;
        }
        .card-body
        {
			background-color: #ccffff;
        }
    </style>
</head>
<body>

<div class="container signup-container">
    <div class="row justify-content-center">
        <div class="col-md-6 col-sm-8 col-xs-12">
            <div class="card">
                <div class="card-header text-center">
                    <h2>Sign Up</h2>
                </div>
                <div class="card-body">
                    <form>
                        <div class="form-group">
                            <label for="username" class="label">Username:</label>
                            <input type="text" class="form-control" id="username" name="username" required>
                        </div>
                        <div class="form-group">
                            <label for="email" class="label">Email:</label>
                            <input type="email" class="form-control" id="email" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="password" class="label">Password:</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Sign Up</button>
                    </form>
                </div>
                <div class="card-footer text-center">
                    <p>Already have an account? <a href="SignIn.jsp">Sign In</a></p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Include Bootstrap JS and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>