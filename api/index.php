<?php
// Import the database connection
require('db_config.php');

// Set json as content type
header("Content-Type: application/json; charset=utf-8");

// Get data from database
$usernames_list = $db->Select("SELECT `username` FROM `usernames_list`");

// Change the dimensions of the array
foreach ($usernames_list as $id => $username) {
    $list['usernames'][$id] = $username['username'];
}

// Display array as json
echo json_encode($list);

// Terminate program
die();
