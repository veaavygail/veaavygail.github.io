<?php

$page = "home";
if (isset($_GET['page'])) {
  $page = $_GET['page'];
  switch ($page) {
    case "home":
      $page = "home";
      break;
    case "romance":
      $page = "romance";
      break;
    case "suspense":
      $page = "suspense";
      break;
    default:
      header("Location: ?page=home");
      break;
  }
} else {
  header("Location: ?page=home");
}

?>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Kdrama Wiki</title>
  <link href="Homepage/style.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Merienda+One&display=swap" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <link href="shared/assets/style.css" rel="stylesheet">
  <link rel="icon" href="shared/assets/img/icon.png" type="image/x-icon">
</head>

<body id="body" data-bs-theme="pink" style="overflow-x: hidden; overflow-y: hidden;">
  <nav class="navbar">
    <div class="container-fluid">
      <a href="?page=home">
        <img src="shared/assets/img/icon.png" style="width: 80px; height: auto;">
      </a>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </nav>

  <div class="container-fluid mt-3 justify-content-center" style="overflow-x: hidden;">
    <div class="row">
      <div class="col-3 col-sm-3 col-md-2 col-lg-2">
        <div class="card shadow p-3" style="height: 85vh">
          <a href="?page=home" class="d-block my-2 mx-auto nav-link text-dark fw-semibold">
            All Kdramas
          </a>
          <a href="?page=romance" class="d-block my-2 mx-auto nav-link position-relative text-dark fw-semibold">
            Romance
          </a>
          <a href="?page=suspense" class="d-block my-2 mx-auto nav-link position-relative text-dark fw-semibold">
            Suspense
          </a>

        </div>
      </div>
      <div class="col-9 col-sm-9 col-md-10 col-lg-10">
        <div class="card shadow p-2" style="height: 85vh; max-height: 85vh; overflow: scroll">
          <?php include("shared/" . $page . ".php"); ?>
        </div>
      </div>
    </div>
  </div>

  
  <script>
  const params = new URLSearchParams(window.location.search);
  const page = params.get("page");
  const navbar = document.querySelectorAll(".navbar");

  const romanceGradient = "#f08080";
  const suspenseGradient = "#b0b0b0";

  if (page === "romance") {
    navbar.forEach(navbar => {
      navbar.style.background = romanceGradient;
    });
  } else if (page === "suspense") {
    navbar.forEach(navbar => {
      navbar.style.background = suspenseGradient;
    });
  }
</script>


  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
    integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
    integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
</body>

</html>