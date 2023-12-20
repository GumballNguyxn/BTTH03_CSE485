<?php 
require_once APP_ROOT."/services/CourseService.php";

class CourseController{
    public function index(){
        $courseService = new CourseService();
        $courses = $courseService->getAllCourse();
        include APP_ROOT."/views/course/index.php";
    }
}