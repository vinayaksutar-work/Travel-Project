<?php require 'connection.php'; ?>
<?php include 'header.php' ?>
    <div class="container-fluid">
        <div class="row">
        <div class="banner">
            <img src="img/packages-banner.jpg" alt="">
            <div class="centered"><h1 class="text-uppercase text-white">Packages</h1></div>
        </div>
        <div class="row col-md-12 py-5 bg-body-secondary">
            <h1 class="text-uppercase text-center mb-3 ">Top Destinations</h1>
            <?php
              $sql = "SELECT * FROM cards";
              $result = mysqli_query($conn, $sql);
              while ($row = mysqli_fetch_array($result)) 
              {
            ?>
              <div class="col-md-3 py-3 ">
                <div class="card text-center ">
                    <img class="card-img-top" src="img/<?php echo $row['image']; ?>">
                    <div class="card-body">
                      <h5 class="card-title"><?php echo $row['title']; ?></h5>
                      <p class="card-text"><?php echo $row['subtitle']; ?></p>
                      <a href="booking.php" class="btn btn-warning ">Book Now</a>
                    </div>
                </div>
              </div>
            <?php
              }
              mysqli_close($conn);
            ?>
        </div>
        </div>
    </div>
  <?php include 'footer.php' ?>
