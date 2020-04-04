<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="index.php">Sistem Pakar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item ">
                    <a class="nav-link" href="index.php">Home</a>
                </li>
                <?php
                if (empty($_SESSION['akun'])) {
                ?>
                    <li class="nav-item">
                        <a class="nav-link" href="index.php?page=module/Login/index">
                            <i class="fas fa-fw fa-table"></i>
                            <span>Login</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.php?page=module/Daftar/index">
                            <i class="fas fa-fw fa-table"></i>
                            <span>Daftar</span></a>
                    </li>
                <?php } else { ?>
                    <li class="nav-item">
                        <a class="nav-link" href="index.php?page=module/Konsultasi/index">
                            <i class="fas fa-fw fa-chart-area"></i>
                            <span>Konsultasi</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.php?page=module/Logout/index">
                            <i class="fas fa-fw fa-chart-area"></i>
                            <span>Logout</span></a>
                    </li>
                <?php } ?>
            </ul>
        </div>
    </div>
</nav>