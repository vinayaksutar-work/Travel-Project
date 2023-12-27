<?php
$title = 'Home'; 
include 'connection.php';
include 'header.php'
?>
<div class="container-fluid">
  <div class="row">
    <?php include 'carousel.php' ?>
    <?php include 'services.php' ?>
    <div class="row col-md-12 bg-body-secondary p-5">
      <div class="col-md-6 py-4">
        <img src="assets/images/about.jpg" alt="" class="img-fluid p-lg-3">
      </div>
      <div class="col-md-6 align-self-md-center">
        <h2>About Us</h2>
        <p class="text-justify">Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda sed aut incidunt labore, aspernatur id officiis excepturi est nulla quod.</p>
        <a href="about.php" class="btn btn-dark ">Read More</a>
      </div> 
    </div>
    <div class="row col-md-12 justify-content-center py-5 my-5 bg-body-secondary">
      <h1 class="text-uppercase text-center mb-3 ">Our Packages</h1>
        <?php
          $sql = "SELECT * FROM package ORDER BY id LIMIT 3";
          $result = mysqli_query($conn, $sql);
          while ($row = mysqli_fetch_array($result))
          {
        ?>
          <div class="col-md-3 py-3 ">
            <div class="card text-center ">
                <img class="card-img-top" src="<?php echo $row['image']; ?>">
                <div class="card-body">
                  <h5 class="card-title"><?php echo $row['title']; ?></h5>
                  <p class="card-text"><?php echo $row['subtitle']; ?></p>
                  <a href="booking.php" class="btn btn-warning ">Book Now</a>
                </div>
            </div>
          </div>
        <?php
          }
        ?>
        <div class="d-flex pt-3 justify-content-center">
            <a href="package.php" class="btn btn-dark ">Load More</a>
        </div>
    </div>
    <div class="row col-md-12 text-center py-5 bg-body-secondary">
      <h2>Upto 50% Off</h2>
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae ipsam fugiat minima explicabo!<br>Nam non facilis quo ea, veritatis eum.</p>
      <div>
          <a href="booking.php" class="btn btn-warning ">Book Now</a>
      </div>
    </div>
  </div>
</div>
<?php include 'footer.php' ?>
