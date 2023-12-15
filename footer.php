<?php include 'connection.php' ?>
<footer class="bg-dark text-center">
  <!-- Grid container -->
  <div class="container px-5 pt-5 ">
    <!--Grid row-->
    <div class="row">
      <!--Grid column-->
      <div class="col-lg-4 col-md-6">
        <h5 class="text-uppercase text-warning">Quick Links</h5>

        <ul class="list-unstyled">
          <?php 
            $sql = "SELECT * FROM navbar";
            $result = mysqli_query($conn, $sql);
            while ($row = mysqli_fetch_array($result))
            {
          ?>
          <li class="py-1 px-2 ">
            <a href="<?php echo $row['link']; ?>" class="text-white text-decoration-none"><?php echo $row['name']; ?></a>
          </li >
          <?php
            }
          ?>
        </ul>
      </div>
      <!--Grid column-->

      <!--Grid column-->
      <div class="col-lg-4 col-md-6">
        <h5 class="text-uppercase text-warning">Contact Info</h5>
        <?php
          $sql = "SELECT * FROM contact";
          $result = mysqli_query($conn, $sql);
          while ($row = mysqli_fetch_array($result))
          { 
         ?>
        <ul class="list-unstyled">
          <li class="py-1 px-2 ">
            <a href="#!" class="text-white text-decoration-none"><?php echo $row['add1']; ?></a>
          </li>
          <li class="py-1 px-2 ">
            <a href="#!" class="text-white text-decoration-none "><?php echo $row['add2']; ?></a>
          </li>
          <li class="py-1 px-2 ">
            <a href="#!" class="text-white text-decoration-none "><?php echo $row['mob1']; ?></a>
          </li>
          <li class="py-1 px-2 ">
            <a href="#!" class="text-white text-decoration-none "><?php echo $row['mob2']; ?></a>
          </li>
        </ul>
        <?php
          }
         ?>
      </div>
      <!--Grid column-->

      <!--Grid column-->
      <div class="col-lg-4 col-md-6">
        <h5 class="text-uppercase text-warning">Social Links</h5>
        <ul class="list-unstyled">
          <?php
            $sql = "SELECT * FROM sociallinks";
            $result = mysqli_query($conn, $sql);
            while ($row = mysqli_fetch_array($result))
            {
           ?>
          <li class="py-1 px-2 ">
            <a href="#!" class="text-white text-decoration-none ">
            <i class="<?php echo $row['class']; ?>"></i><?php echo $row['name']; ?></a>
          </li>
          <?php
            }
           ?>
        </ul>
      </div>
      <!--Grid column-->
    </div>
    <!--Grid row-->
  </div>
  <!-- Grid container -->

  <!-- Copyright -->
  <div class="text-center text-white p-3 ">
    © Created by : Vinayak Sutar
  </div>
  <!-- Copyright -->
</footer>
</body>
</html>