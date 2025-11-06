<?php
include 'db.php';

try {
    $sql = file_get_contents('database.sql');
    $conn->exec($sql);
    echo "Database setup completed successfully.";
} catch (PDOException $e) {
    echo "Error setting up database: " . $e->getMessage();
}
$conn = null;
?>
