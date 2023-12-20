<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
</head>
<body>
    <main class="bg-info mt-2 p3">
        <h4 class="text-center text-uppercase fs-2 fw-bold my-2">Login</h4>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <?php
                        if(isset($_GET["error"])) {
                            echo "<p style='color:red'>{$_GET['error']}</p>";
                        }
                    ?>
                <form action="./controllers/UserController.php" method="POST">
                    <div class="mb-3">
                        <label for="user" class="form-label">Email</label>
                        <input type="text" class="form-control" id="user" name="user">
                    </div>
                    <div class="mb-3">
                        <label for="pass" class="form-label">Password</label>
                        <input type="password" class="form-control" id="pass" name="pass">
                    </div>
                    <button type="submit" class="btn btn-primary mb-3">Submit</button>
                </form>
                </div>
            </div>
        </div>
    </main>
<script src="./assets/js/bootstrap.min.js"></script>
</body>
</html>