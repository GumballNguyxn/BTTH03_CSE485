<?php require_once('./layout/header.php') ?>


    <!-- <form method="post" action="index.php?controller=article&action=store">
        <label for="title">Title:</label>
        <input type="text" name="title" id="title"  required>

        <label for="content">Content:</label>
        <textarea name="content" id="content" required></textarea>

        <input type="submit" value="Create">
    </form> -->
    <div class="container">
    <form  method="post" action="index.php?controller=article&action=store">
  <div class="mb-3">
    <label for="title" class="form-label" >Title</label>
    <input type="text" class="form-control" name="title" id="title" required>

  </div>
  <div class="mb-3">
    <label for="content" class="form-label">Content</label>

    <textarea name="content" class="form-control" id="content" required></textarea>

  </div>
  
  <button type="submit" class="btn btn-primary" value="Create">Create</button>
</form>

    </div>
</body>
</html>
