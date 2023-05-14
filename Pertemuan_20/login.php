<?php
// Mulai sesi
session_start();

// Periksa apakah pengguna sudah masuk, arahkan ke halaman indeks
if (isset($_SESSION["email"])) {
    header("Location: index.php");
    exit;
}

// Sertakan file koneksi database
include "koneksi.php";

// Periksa apakah formulir telah dikirimkan
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get the input data from the form
    $username = $_POST["email"];
    $password = $_POST["password"];

    // Periksa apakah data input valid
    if (empty($email) || empty($password)) {
        // Display an error message and return to the login form
        $error = "Please enter a email and password.";
    } else {
        // Hash the password
        $password = md5($password);

        // Permintaan database untuk menemukan pengguna dengan email dan kata sandi yang diberikan
        $sql = "SELECT * FROM users WHERE email = '$email' AND password = '$password'";
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) == 1) {
            // Pengguna menemukan, menyetel variabel sesi, dan mengalihkan ke halaman indeks
            $user = mysqli_fetch_assoc($result);
            $_SESSION["user_id"] = $user["id"];
            $_SESSION["email"] = $user["email"];
            header("Location: index.php");
            exit;
        } else {
            // Pengguna tidak ditemukan, tampilkan pesan kesalahan dan kembali ke formulir login
            $error = "Invalid email or password.";
        }
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Login - Ramadhani</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<body>
    <div class="container my-5">
        <h1 class="text-center mb-4">Login</h1>
        <?php if (isset($error)): ?>
            <div class="alert alert-danger"><?php echo $error; ?></div>
        <?php endif; ?>
        <form method="POST">
            <div class="form-group">
                <label for="username">Email:</label>
                <input type="text" class="form-control" id="email" name="email" placeholder="Masukkan email">
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
				<input type="password" class="form-control" id="password" name="password" placeholder="Enter password" required>
			</div>
			<button type="submit" class="btn btn-primary">Login</button>
		</form>
	</div>

</body>
</html>

