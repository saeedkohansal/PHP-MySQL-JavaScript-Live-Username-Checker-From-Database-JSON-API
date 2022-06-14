<?php
// Database object
class Database
{
    private $connection = null;
    public function __construct($dbhost = "", $dbname = "", $username = "", $password = "")
    {
        try {
            $this->connection = new PDO("mysql:host={$dbhost};dbname={$dbname};charset=utf8mb4;", $username, $password);
            $this->connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->connection->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
        } catch (Exception $e) {
            throw new Exception($e->getMessage());
        }
    }

    // Select data from database
    public function Select($statement = "", $parameters = [])
    {
        try {
            $stmt = $this->executeStatement($statement, $parameters);
            return $stmt->fetchAll();
        } catch (Exception $e) {
            throw new Exception($e->getMessage());
        }
    }

    // Run statement
    private function executeStatement($statement = "", $parameters = [])
    {
        try {
            $stmt = $this->connection->prepare($statement);
            $stmt->execute($parameters);
            return $stmt;
        } catch (Exception $e) {
            throw new Exception($e->getMessage());
        }
    }
}

// Connect to database
$db = new Database(
    "127.0.0.1", // Host name
    "live_username_checker", // Database name
    "root", // Username
    "" // Password
);
