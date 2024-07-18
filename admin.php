<?php
require  ('db.php');

if (!empty($_GET)){
    if(isset($_GET['delete_cat'])){
        $id = $_GET['id'];
        if($db->query("DELETE FROM categories WHERE id=$id")){
            echo "<script>
                    alert('Успешно удалено')
                    location.href = 'admin.php'
                </script>";
            exit();
        } else{
            var_dump($db->errorInfo());
        }
    }
    if(isset($_GET['delete'])){
        $id = $_GET['id'];
        if($db->query("DELETE FROM items WHERE id=$id")){
            echo "<script>
                    alert('Успешно удалено')
                    location.href = 'admin.php'
                </script>";
            exit();
        } else{
            var_dump($db->errorInfo());
        }
    }
    if(isset($_GET['new_cat'])){
        $name = $_GET['new_cat'];
        if($db->query("INSERT INTO categories (name) VALUES ('$name')")){
            echo "<script>
                    alert('Успешно добавленно')
                    location.href = 'admin.php'
                </script>";
        } else{
            var_dump($db->errorInfo());
        }
    }
    if(isset($_GET['new_item_name'])){
        $name = $_GET['new_item_name'];
        $photo = $_GET['photo'];
        $description = $_GET['description'];
        $price = $_GET['price'];
        $category = $_GET['category'];
        if($db->query("INSERT INTO items (name, photo, description, price, category) VALUES ('$name', '$photo', '$description', $price, $category)")){
            echo "<script>
                    alert('Успешно добавленно')
                    location.href = 'admin.php'
                </script>";
        } else{
            var_dump($db->errorInfo());
        }
    }
    if(isset($_GET['cat_name'])){
        $name = $_GET['cat_name'];
        $id = $_GET['id'];
        if($db->query("UPDATE categories SET name = '$name' WHERE id = $id")){
            echo "<script>
                    alert('Успешно обновлено')
                    location.href = 'admin.php'
                </script>";
        } else{
            var_dump($db->errorInfo());
        }
    }
    if(isset($_GET['item_name'])){
        $name = $_GET['item_name'];
        $photo = $_GET['photo'];
        $description = $_GET['description'];
        $price = $_GET['price'];
        $category = $_GET['category'];
        $id = $_GET['id'];
        if($db->query("UPDATE items SET name = '$name', photo='$photo', description='$description', price=$price, category=$category WHERE id = $id")){
            echo "<script>
                    alert('Успешно обновлено')
                    location.href = 'admin.php'
                </script>";
        } else{
            var_dump($db->errorInfo());
        }
    }
}


$categories = $db->query("SELECT * FROM categories")->fetchAll(PDO::FETCH_ASSOC);
$items = $db->query("SELECT * FROM items")->fetchAll(PDO::FETCH_ASSOC);

?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300..700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<main>
    <section class="categories">
        <h2>Категории</h2>

        <div class="container">
            <form action="#">
                <label for="">
                    <input type="text" name="new_cat" required>
                    <button>Добавить</button>
                </label>
            </form>
            <?php foreach ($categories  as $item) : ?>

                <form action="#">
                    <input type="text" name="cat_name" value="<?php echo $item['name'] ?>">
                    <input type="hidden" name="id" value="<?php echo $item['id'] ?>">
                    <button>Обновить</button>
                    <button name='delete_cat'>Удалить</button>
                </form>

            <?php endforeach; ?>
        </div>

        <h2>Товары</h2>
    </section>

    <section class="items">


        <div class="container-admin">

                <form action="#" class="item item-admin">
                    <label>
                        Название
                        <input type="text" name="new_item_name" required>
                    </label>
                    <label>
                        Ссылка на фото
                        <input type="text" name="photo" required>
                    </label>
                    <label>
                        Описание
                        <textarea name="description" id="" cols="30" rows="10" required></textarea>
                    </label>
                    <label>
                        Цена
                        <input type="text" name="price" required>
                    </label>

                    <label for="">
                        Категории
                        <select name="category" id="">
                            <?php foreach ($categories as $cat) : ?>
                                <option value="<? echo $cat['id'] ?>"><?php echo $cat['name'] ?></option>
                            <?php endforeach; ?>
                        </select>
                    </label>
                    <button>Добавить</button>

                </form>
            
            <?php foreach ($items  as $item) : ?>

                <form action="#" class="item item-admin">
                    <img src="<?php echo $item['photo'] ?>" alt="" style="max-height: 400px; width: min-content">
                    <label>
                        Название
                        <input type="text" name="item_name" value="<?php echo $item['name'] ?>">
                    </label>
                    <label>
                        Ссылка на фото
                        <input type="text" name="photo" value="<?php echo $item['photo'] ?>">
                    </label>
                    <label>
                        Описание
                        <textarea name="description" id="" cols="30" rows="10"><?php echo $item['description'] ?></textarea>
                    </label>
                    <label>
                        Цена
                        <input type="text" name="price" value="<?php echo $item['price'] ?>">
                    </label>

                    <label for="">
                        Категория
                        <select name="category" id="">
                            <?php foreach ($categories as $cat) : ?>
                                <option <?php if ($item['category'] == $cat['id']) echo 'selected' ?>  value="<? echo $cat['id'] ?>"><?php echo $cat['name'] ?></option>
                            <?php endforeach; ?>
                        </select>
                    </label>
                    <input type="hidden" name="id" value="<?php echo $item['id'] ?>">
                    <button>Обновить</button>

                    <button name='delete'>Удалить</button>

                </form>

            <?php endforeach; ?>
        </div>
    </section>
</main>
</body>
</html>