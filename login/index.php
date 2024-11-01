<?php
session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Data login (misalnya, hardcode atau bisa juga diambil dari database)
    $username = "admin";
    $password = "admin";

    // Ambil data input dari form login
    $inputUsername = $_POST['username'];
    $inputPassword = $_POST['password'];

    // Validasi login
    if ($inputUsername === $username && $inputPassword === $password) {
        $_SESSION['loggedin'] = true;
        $_SESSION['username'] = $inputUsername;
        
        // Redirect ke halaman dashboard jika login berhasil
        header("Location: ../dashboard");
        exit;
    } else {
        // Jika login gagal
        $error = "Username atau password salah.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Travelgo Login Page</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        /* Main container styling */
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f3f3f3;
        }
        .container {
            display: flex;
            width: 800px;
            height: 500px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }
        .image-section {
            flex: 1;
            background: url('images/Rectangle.png') no-repeat center center/cover;
        }
        .form-section {
            flex: 1;
            padding: 40px;
            background-color: white;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .form-section h2 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #333;
            font-weight: 600;
        }
        .form-section input[type="text"], .form-section input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .form-section a {
            color: #007bff;
            font-size: 14px;
            text-decoration: none;
            margin-top: 5px;
        }
        .form-section button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
        }
        .form-section button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="image-section"></div>
        <div class="form-section">
            <h2>Login</h2>
            <form action="" method="POST">
                <input type="text" name="username" placeholder="Username" required>
                <input type="password" name="password" placeholder="Password" required>
                <a href="#">Forgot Password?</a>
                <button name="submit">Login</button>
                <a href="#">Don’t Have Account?</a>
            </form>
        </div>
    </div>
</body>
</html>
