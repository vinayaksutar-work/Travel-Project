<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About</title>
    <?php include 'head.php' ?>
</head>
<body>
    <div class="container-fluid" id="about">
        <div class="row">
            <?php include 'header.php' ?>
        <div class="banner">
            <img src="img/about-banner.jpg" alt="">
            <div class="centered"><h1 class="text-uppercase text-white">About Us</h1></div>
        </div>
        <div class="row col-md-12 my-5 bg-body-secondary">
            <div class="col-xl-6">
                <img src="img/about-us.jpg" alt="" class="img-fluid p-5 ">
            </div>
            <div class="col-xl-6 text-center align-self-md-center pb-5 pb-xl-0">
                <h2>Why Choose Us?</h2>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.<br>Cum id iusto aliquid, dolores quibusdam assumenda!</p>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis, eaque!</p>
                <div class="row">
                    <div class="col-sm-4 py-2 ">
                        <div class="card h-100 p-2 ">
                            <div class="card-body">
                                <i class="fa-regular fa-map fa-2xl"></i>
                                <p class="card-caption p-2 ">Best Destinations</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 py-2 ">
                        <div class="card h-100 p-2 ">
                            <div class="card-body">
                                <i class="fa-solid fa-hand-holding-dollar fa-2xl"></i>
                                <p class="card-caption p-2 ">Affordable Prices</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 py-2 ">
                        <div class="card h-100 p-2 ">
                            <div class="card-body">
                                <i class="fa-solid fa-headset fa-2xl"></i>
                                <p class="card-caption p-2 ">24/7 Support</p>
                            </div>
                        </div>
                    </div>
                </div>        
            </div>
        </div>
        <?php include 'footer.php' ?>
        </div>
    </div>
</body>
</html>