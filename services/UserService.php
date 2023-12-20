<?php 
require_once APP_ROOT."/models/UserModel.php";
class UserService{
    public function login($username, $password){
        if(isset($_POST["user"]) && isset($_POST["pass"])){
            // lay thong tin tu form gui toi
            $user = $_POST["user"];
            $pass = $_POST["pass"];
            // kiem tra thong tin vs database
            try{
                $conn = new PDO("mysql:host=localhost;dbname=btth03_cse485", "root", "");
                //B2. thuc thi truy van
                $sql = "SELECT * FROM users WHERE email='$user'";
                $stmt = $conn->prepare($sql);
                $stmt->execute();
        
                //B3. xu ly truy van
                if($stmt->rowCount() > 0){
                    $row = $stmt->fetch();
                    $pass_saved = $row['pass']; //Lay mat khau dang luu trong CSDL
                    if(password_verify($pass, $pass_saved)){
                        session_start();//Cong ty dich vu Bao ve
                        $_SESSION['isLogined'] = $user; //CAP THE Truy cap co ten la isLogined
                        header("Location:./home/index.php");
                    }else{
                        $error = "Password invalid";
                        header("Location:./login.php?error=$error");
                    }
                }else{
                    $error = "Username not found";
                    header("Location:./login.php?error=$error");
                }
            }catch(PDOException $e){
                echo $e->getMessage();
            }
        }
    }
}