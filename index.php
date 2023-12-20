<?php 
require_once("./config/config.php");
// require_once APP_ROOT.'/app/controllers/HomeController.php';

// $homeController = new HomeController();
// $homeController->index();

$controller = isset($_GET["controller"]) ? $_GET["controller"] :"home";
$action = isset($_GET["action"]) ? $_GET["action"] :"index";

if ($controller == "course" || $controller == 'home') {
    require_once APP_ROOT.'/controllers/CourseController.php';
    $courseController = new CourseController();
    if ($action == 'index') {
        $courseController->index();
    }
}
