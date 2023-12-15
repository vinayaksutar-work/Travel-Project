<?php include 'connection.php'; ?>
<div class="row py-5 " id="services">
    <h1 class="text-uppercase text-center mb-3">Our Services</h1>
    <?php
        $sql = "SELECT * FROM services";
        $result = mysqli_query($conn,$sql);
        while ($row = mysqli_fetch_array($result))
        {
     ?>    
    <div class="col-md-2 py-3">
        <div class="card text-center py-5 h-100 ">
            <div class="card-body">
                <i class="<?php echo $row['class']; ?>"></i>
                <h5 class="card-title"><?php echo $row['name']; ?></h5>
            </div>
        </div>
    </div>
    <?php
        } 
    ?>
</div>