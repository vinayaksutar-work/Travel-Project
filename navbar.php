<?php include "connection.php"; ?>
<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top shadow">
    <a class="navbar-brand px-5" href="#">Travel</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end px-5" id="navbarNavDropdown">
        <ul class="navbar-nav">
            <?php
                $sql = "SELECT * FROM navbar";
                $result = mysqli_query($conn, $sql);
                while($row = mysqli_fetch_array($result))
                { 
             ?>
                <li class="nav-item px-2 ">
                    <a class="nav-link <?php if($title == $row['name']){ echo 'active';}?>" href="<?php echo $row['link']; ?>"><?php echo $row['name']; ?></a>
                </li>
            <?php
                }
             ?>
        </ul>
    </div>
</nav>