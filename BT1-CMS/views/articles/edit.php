<?php require_once('./layout/header.php') ?>


<div class="container">
    <form method="post" action="index.php?controller=article&action=update">
        <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">ID : </label>
            <input type="text" name="id" class="form-control" id="id" value="<?= $article->getId(); ?>">

        </div>
        <div class="mb-3">
            <label for="exampleFormControlTextarea1" class="form-label">Title</label>
            <textarea name="title" class="form-control" id="title" cols="30" rows="10"> <?= $article->getTitle(); ?> </textarea>
        </div>
        <div class="mb-3">
            <label for="exampleFormControlTextarea1" class="form-label">Content</label>
            <textarea name="content" class="form-control" id="content" cols="30" rows="10"> <?= $article->getContent(); ?> </textarea>
        </div>

        <input type="submit" class="btn btn-primary" value="Update">

</div>


</form>
</body>

</html>