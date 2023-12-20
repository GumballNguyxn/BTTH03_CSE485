<?php 
require_once APP_ROOT."/models/CourseModel.php";
//require_once APP_ROOT."/config/DBConnection.php";

class CourseService{
    public function getAllCourse(){
        try{
            $conn = new PDO("mysql:host=localhost;dbname=btth03_cse485","root","");
            $sql = "SELECT * FROM courses";
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $courses = [ ];
            while($row = $stmt->fetch()){
                $course = new Course($row['id'],$row['title'],$row['description']);
                $courses[] = $course;
            }
            return $courses;
        }catch(PDOException $e){
            return $courses = [];
        }
    }
}
