<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Courses</title>
    <link rel="stylesheet" href="/BTTH03_LMS/assets/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h3 class = "text-center text-uppercase text-success my-2">Courses</h3>
        <div class="container text-center">
            <div class="row row-cols-3">
                <?php foreach($courses as $course):?>
                    <div class="col">
                        <div class="card my-2" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title"><?=$course->getTitle();?></h5>
                                <p class="card-text"><?=$course->getDescription();?></p>
                                <a href="#" class="btn btn-primary">Go detail</a>
                            </div>
                        </div>
                    </div>                    
                <?php endforeach ?>
            </div>
        </div>
    </div>
<script src="/BTTH03_LMS/assets/js/bootstrap.min.js"></script>
</body>
</html>