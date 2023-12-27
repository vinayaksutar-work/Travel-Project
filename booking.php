<?php 
session_start();
$title = 'Booking';
include 'connection.php';
include 'header.php'; 
?>
<div class="container-fluid">
    <div class="row">
        <div class="row px-md-5 px-3 my-5">
            <h1 class="text-uppercase text-center ">Book Your Trip!</h1>
            <form action="form.php" method="post">
            
            <?php
            if(isset($_SESSION['status']))
            {
                ?>
                <div class="alert alert-success alert-dismissible fade show px-3 mx-5" role="alert">
                    <strong>Hey!</strong> <?php echo $_SESSION['status']; ?>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <?php
                session_unset();
                session_destroy();
            }
            ?>    
                <div class="row px-lg-5">
                    <div class="col-md-6 py-2 ">
                        <label for="">Name</label>
                        <input type="text" class="form-control" name="name" placeholder="Enter Your Name" required>
                    </div>
                    <div class="col-md-6 py-2 ">
                        <label for="">Email</label>
                        <input type="email" class="form-control" name="email" placeholder="Enter Your Email" required>
                    </div>
                </div>
                <div class="row px-lg-5 ">
                    <div class="col-md-6 py-2">
                    <label for="">Contact Number</label>
                    <input type="contact" class="form-control" name="phone" placeholder="Enter Your Contact Number" required>
                    </div>
                    <div class="col-md-6 py-2 ">
                        <label for="">Address</label>
                        <input type="text" class="form-control" name="address" placeholder="Enter Your Address" required>
                    </div>
                </div>
                <div class="row px-lg-5">
                    <div class="col-md-6 py-2">
                        <label for="">Where To</label>
                        <select class="form-control" name="location" required>
                            <option value="">--Choose Your Destination--</option>
                            <?php
                                $sql = "SELECT * FROM destination";
                                $result = mysqli_query($conn,$sql);
                                while ($row = mysqli_fetch_array($result))
                                { 
                            ?>
                            <option value="<?php echo $row['location']; ?>"><?php echo $row['location']; ?></option>
                            <?php
                                }
                            ?>
                        </select>
                    </div>
                    <div class="col-md-6 py-2 ">
                        <label for="">How Many</label>
                        <input type="number" class="form-control" name="guests" placeholder="Number Of Guests" required>
                    </div>
                </div>
                <div class="row px-lg-5 ">
                    <div class="col-md-6 py-2 ">
                        <label for="">Arrival</label>
                        <input type="date" name="arrival" class="form-control" required>
                    </div>
                    <div class="col-md-6 py-2 ">
                        <label for="">Leaving</label>
                        <input type="date" name="leaving" class="form-control" required>
                    </div>
                </div>
                <div class="row px-lg-5 py-4">
                    <input type="submit" value="Submit" name="submit" class="btn btn-success ">
                </div>
            </form>
        </div>
    </div>  
</div>