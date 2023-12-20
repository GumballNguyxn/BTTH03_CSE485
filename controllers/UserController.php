<?php 
require_once APP_ROOT."/services/UserService.php";

class UserController{
    public function login(){
        $_POST = filter_input_array(INPUT_POST);
        $username = trim($_POST["user"]);
        $password = trim($_POST["pass"]);
        $userService = new UserService();
        $user = $userService->login($username,$password);
        
    }
}