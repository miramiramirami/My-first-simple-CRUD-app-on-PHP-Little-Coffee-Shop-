<?php
require("db.php");

$categories = $db->query("SELECT * FROM categories")->fetchALL(PDO::FETCH_ASSOC);
$items = [];
$categoryId = isset($_GET['category']) ? $_GET['category'] : null;

if($categoryId){
    $id = (int)$categoryId; // Ensure it's an integer for security
    $items = $db->query("SELECT * FROM items WHERE category = $id")->fetchALL(PDO::FETCH_ASSOC);
} else {
    $items = $db->query("SELECT * FROM items")->fetchALL(PDO::FETCH_ASSOC);
}

?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Coffee shop</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300..700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="main-container">
    <header>
        <a href="index.php" class="link_title"><h1>Little Coffee Shop</h1></a>
    </header>
    <main>
        <section class="filters">

            <?php foreach ($categories as $item): ?>
                <a href="?category=<?php echo $item['id']; ?>" <?php if ($categoryId && $item['id'] == $categoryId) echo "class='selected'";?> >
                    <?php echo $item["name"]?>
                </a>
            <?php endforeach; ?>


        </section>

        <section class="container">

            <?php foreach ($items as $item) : ?>

            <div class="item">

                <div class="item_img">
                    <img src="<?php echo $item['photo'] ?>" alt="" width="100">
                </div>
                <div class="title">
                    <h3><?php echo $item['name'] ?></h3>
                </div>
                <div class="button-div">
                    <p class="price">$ <?php echo $item['price'] ?> </p>
                    <a href="single.php?id=<?php echo $item['id'] ?>" class="button">+</a>
                </div>

            </div>

            <?php endforeach; ?>
        </section>
    </main>
</div>
</body>
</html>
