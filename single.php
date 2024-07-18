<?php
require ('db.php');

if (!isset($_GET["id"])){
    echo "<script> 
            alert('Вы не выбрали товар')
            location.href = 'index.php'
        </script>";
    exit();
}

$id = $_GET['id'];
$item = $db->query("SELECT * FROM items WHERE id = $id")->fetchAll(PDO::FETCH_ASSOC);

if(count($item) > 0){
    $item = $item[0];
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
        <a href="index.php" class="back_button">Назад</a>
    </header>
    
    <main>
        <section class="info">
            <div class="info_left">
                <img src="<?php echo $item['photo'] ?>" alt="">
                <h1 class="info_title" ><?php echo $item['name'] ?></h1>
            </div>
            <div class="info_right">
                <p class="description"><?php echo $item['description'] ?></p>
                <p class="info_price"><?php echo $item['price'] ?>$</p>
                <a class="info_button" href="#">Добавить в корзину</a>
            </div>
        </section>
    </main>
</div>
</body>
</html>