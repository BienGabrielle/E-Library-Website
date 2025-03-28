<?php
//Members: Christian Miranda, Kyle Lising, Gabrielle Pangilinan, Oliver Sazon
$host = 'localhost';
$username = 'root';
$password = '';
$database = 'dweb_database';

$conn = new mysqli($host, $username, $password, $database);

if ($conn->connect_error) {
    die('Connection failed: ' . $conn->connect_error);
}

header('Content-Type: application/json');

$action = $_GET['action'] ?? $_POST['action'] ?? null;

if ($action === 'read') {
    $allBooks = [];

    $sql = "SELECT 
                books.id, books.title, books.author, books.year, books.description,
                categories.name AS category,
                book_images.image_path
            FROM books
            LEFT JOIN category_books ON books.id = category_books.book_id
            LEFT JOIN categories ON category_books.category_id = categories.id
            LEFT JOIN book_images ON books.id = book_images.book_id";

    $result = $conn->query($sql);

    while ($row = $result->fetch_assoc()) {
        $category = $row['category'];

        if (!isset($allBooks[$category])) {
            $allBooks[$category] = [];
        }

        $allBooks[$category][] = [
            'id' => $row['id'],
            'title' => $row['title'],
            'author' => $row['author'],
            'year' => $row['year'],
            'description' => $row['description'],
            'image_path' => $row['image_path'] ?? null,
        ];
    }

    echo json_encode($allBooks);
    exit();
}


if ($action === 'delete') {
    $id = $_GET['id'] ?? null;
    $category = $_GET['category'] ?? null;

    if (!$id || !$category) {
        die(json_encode(["message" => "Invalid request."]));
    }

    // Delete from book_images table
    $stmt = $conn->prepare("DELETE FROM book_images WHERE book_id = ?");
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $stmt->close();

    // Delete from category_books table
    $stmt = $conn->prepare("DELETE FROM category_books WHERE book_id = ?");
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $stmt->close();

    // Delete from books table
    $stmt = $conn->prepare("DELETE FROM books WHERE id = ?");
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $stmt->close();

    echo json_encode(["message" => "Book successfully deleted!"]);
    exit();
}


if ($action === 'update') {
    $id = $_POST['id'] ?? null;
    $category = $_POST['category'] ?? null;
    $title = $_POST['title'] ?? null;
    $author = $_POST['author'] ?? null;
    $year = $_POST['year'] ?? null;
    $description = $_POST['description'] ?? null;

    if (!$id || !$category || !$title || !$author || !$year || !$description) {
        die(json_encode(["message" => "All fields are required."]));
    }

    $stmt = $conn->prepare("UPDATE books SET title=?, author=?, year=?, description=? WHERE id=?");
    $stmt->bind_param("ssisi", $title, $author, $year, $description, $id);
    $stmt->execute();
    $stmt->close();

    echo json_encode(["message" => "Book successfully updated!"]);
    exit();
}


if ($action === 'create') {
    $category = $_POST['category'] ?? '';
    $title = $_POST['title'] ?? '';
    $author = $_POST['author'] ?? '';
    $year = $_POST['year'] ?? 0;
    $description = $_POST['description'] ?? '';

    $stmt = $conn->prepare("SELECT id FROM categories WHERE name = ?");
    $stmt->bind_param("s", $category);
    $stmt->execute();
    $stmt->bind_result($category_id);
    $stmt->fetch();
    $stmt->close();

    if (!$category_id) {
        $stmt = $conn->prepare("INSERT INTO categories (name) VALUES (?)");
        $stmt->bind_param("s", $category);
        $stmt->execute();
        $category_id = $stmt->insert_id;
        $stmt->close();
    }

    $stmt = $conn->prepare("INSERT INTO books (title, author, year, description) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssis", $title, $author, $year, $description);
    $stmt->execute();
    $book_id = $stmt->insert_id;
    $stmt->close();

    $stmt = $conn->prepare("INSERT INTO category_books (book_id, category_id) VALUES (?, ?)");
    $stmt->bind_param("ii", $book_id, $category_id);
    $stmt->execute();
    $stmt->close();

    if (isset($_FILES['image']) && $_FILES['image']['error'] === UPLOAD_ERR_OK) {
        $imageName = basename($_FILES['image']['name']);
        $imageTmpName = $_FILES['image']['tmp_name'];
        $imagePath = "images/" . $imageName;
        $fullImagePath = __DIR__ . "/images/" . $imageName;

        if (!is_dir(__DIR__ . '/images')) {
            mkdir(__DIR__ . '/images', 0777, true);
        }

        if (move_uploaded_file($imageTmpName, $fullImagePath)) {
            $stmt = $conn->prepare("INSERT INTO book_images (book_id, image_path) VALUES (?, ?)");
            $stmt->bind_param("is", $book_id, $imagePath);
            $stmt->execute();
            $stmt->close();
        }
    }

    echo "Book added successfully.";
}

$conn->close();
?>
