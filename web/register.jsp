<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style_1.css">
    <link rel="stylesheet" href="css/style_login.css">
    <title>Register - LCD Web Store</title>
    <link rel="apple-touch-icon" sizes="180x180" href="elements/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="elements/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="elements/favicon/favicon-16x16.png">
    <link rel="manifest" href="elements/favicon/site.webmanifest">
</head>
<body class="container-fluid">
    <header class="row">
        <div class="col-md-2 logo">
            <a href="homepage.jsp"><img src="elements/logo/home_logo.png" alt="Home Logo"></a> <!-- Wrap logo in a link -->
        </div>
        <div class="col-md-4"></div>
        <nav class="col-md-6 navigate">
            <a href="HomePage.html">home</a>
            <a href="#">search</a>
            <a href="#">explore</a>
            <a href="Login.html">account</a>
            <a href="#">cart</a>
        </nav>
    </header>


<main>
    <section id="register" class="row justify-content-center">
        <div class="col-md-4 register-form">
            <h2 class="text-center">register.</h2>
            <form id="registerForm" action="register" method="POST">
                <div class="mb-3">
                    <input type="email" class="form-control" placeholder="Email Address" name="user" required>
                </div>
                <div class="mb-3">
                    <input type="tel" class="form-control" placeholder="Phone Number" name="phone" required>
                </div>
                <div class="mb-3">
                    <input type="password" class="form-control" placeholder="Password" name="pass" required>
                </div>
                <div class="mb-3">
                    
                    <input type="password" class="form-control" placeholder="Confirm Password" name="re-pass" required>
                </div>
                <button type="submit" class="btn btn-primary w-100">register</button>
            </form>
            <div class="flex-container">
                <p class="text-center1 mt-3">Already have an account?</p>
                <a href="login.jsp" class="btn btn-link log-btn">login here</a>
            </div>
        </div>
    </section>

    <footer class="footer row">
        <div class="col-md-4 title_contact">
            <h3>CONTACT US</h3>
        </div>
        <div class="col-md-4 contact_info">
            <p>Address: 123 Main Street, Ha Noi</p>
            <p>Phone: 0123456789</p>
        </div>
    </footer>
</main>
</body>
</html>