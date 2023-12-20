<?php require_once('./layout/header.php') ?>
    <a class="btn btn-primary m-3" href="index.php?controller=article&action=create" role="button">Create Article</a>

    <div class="container">
    <table class="table">
        <thead>
            <tr>
                <th  scope="col">ID</th>
                <th  scope="col">Title</th>
                <th  scope="col">Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($articles as $article) : ?>
                <tr>
                    <td scope="col" ><?php echo $article['id']; ?></td>
                    <td scope="col"><?php echo $article['title']; ?></td>
                    <td scope="col">
                        <a href="index.php?controller=article&action=edit&id=<?php echo $article['id']; ?>"><i class="bi bi-pencil-fill m-4"></i></a>
                        <a href="index.php?controller=article&action=delete&id=<?php echo $article['id']; ?>"><i class="bi bi-trash3-fill"></i></a>
</a>

                        
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    </div>
    <?php require_once('./layout/footer.php') ?>
