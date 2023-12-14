<?php

session_start();

include 'connection.php';

if(isset($_POST['submit'])){

    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $address = $_POST['address'];
    $location = $_POST['location'];
    $guests = $_POST['guests'];
    $arrival = $_POST['arrival'];
    $leaving = $_POST['leaving'];

    $sql = "insert into trip(name,email,phone,address,location,guests,arrival,leaving) 
    values('$name','$email','$phone','$address','$location','$guests','$arrival','$leaving')";

    $result = mysqli_query($conn,$sql);

    if($result){
        $_SESSION['status'] = "Trip Registered Successfully";
        header("Location: booking.php");
    }
    else{
        die("Try again.." . mysqli_connect_error());
    }
}
?>