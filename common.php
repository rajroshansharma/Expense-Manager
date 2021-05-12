<?php

//connection string for database
$con = mysqli_connect("localhost", "root", "", "budget")or die(mysqli_error($con));
//chechking for existing session else start new session
if (!isset($_SESSION['email'])) {
    session_start();
}
?>
