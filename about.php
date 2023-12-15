<?php include 'connection.php'; ?>
<?php include 'header.php'; ?>
<div class="container-fluid" id="about">
    <div class="row">
        <div class="banner">
            <img src="img/about-banner.jpg" alt="">
            <div class="centered"><h1 class="text-uppercase text-white">About Us</h1></div>
        </div>
        <div class="row col-md-12 my-5 py-5  bg-body-secondary">
            <div class="col-xl-6">
                <img src="img/about-us.jpg" alt="" class="img-fluid p-5 ">
            </div>
            <div class="col-xl-6 text-center align-self-md-center pb-5 pb-xl-0">
                <h2>Why Choose Us?</h2>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.<br>Cum id iusto aliquid, dolores quibusdam assumenda!</p>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis, eaque!</p>
                <div class="row">
                <?php
                    $sql = "SELECT * FROM about";
                    $result = mysqli_query($conn,$sql);
                    while ($row = mysqli_fetch_array($result))
                    {
                ?>
                    <div class="col-md-4 py-2 ">
                        <div class="card h-100 p-2 ">
                            <div class="card-body">
                                <i class="<?php echo $row['class']; ?>"></i>
                                <p class="card-caption p-2 "><?php echo $row['caption'] ?></p>
                            </div>
                        </div>
                    </div>
                <?php
                    }
                ?>  
                </div>      
            </div>
        </div>
    </div>
</div>
<?php include 'footer.php' ?>
