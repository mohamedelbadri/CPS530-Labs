<!DOCTYPE html>
<html lang="en">
<head>

  <!-- Meta tags -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="CPS 530 Lab5">
  <meta name="author" content="Mo Elbadry">

  <!-- Skeleton CSS /!-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/skeleton/2.0.4/skeleton.min.css">

  <!-- Custom CSS for required/!-->
  <style media="screen">
  input:required {
    border:3px;
    border-style:solid;
    border-color:#FF0000;
    padding: 1em;
  }
  </style>

  <title>CPS 530 Lab 5 Part 1</title>
</head>
<body>


    <div class="container">

        <h2>Welcome to the Multiplication Table Form</h2>
        <h3>by Mohamed Elbadry</h3>
        <h3>Student Number: 500860249</h3>


        <?php
         session_start();
         if(isset($_SESSION['views']))
           $_SESSION['views']++;
         else
           $_SESSION['views'] = 1;
         echo '<h4 text-align="left">'."Pageviews = ". $_SESSION['views'].'</h4>';
         ?>

      <form action="form.php" method="POST" id="form" name="form" onsubmit="return checkform()">
        <div class="row">
          <div class="four columns">
            <label for="name">Your name</label>
            <input class="u-full-width" type="text" placeholder="John Smith" id="name" name="name">
          </div>
          <div class="four columns">
            <label for="number">Multiplication Table row</label>
            <input class="u-full-width" type="text" placeholder="3" id="number" name="number" required>
            <!-- <input class="u-full-width" type="text" placeholder="3" id="number1" name="number" required> -->
          </div>
          <div class="four columns">
            <label for="number">Multiplication Table column</label>
            <!-- <input class="u-full-width" type="text" placeholder="3" id="number" name="number" required> -->
            <input class="u-full-width" type="text" placeholder="3" id="number1" name="number1" required>
          </div>
        </div>
        <input class="button-primary" type="submit" value="Submit">
      </form>
    </div>

    <script>
      function checkform()
      {
        if(( document.getElementById('number').value < 3) || (document.getElementById('number').value > 12) )
        {
          alert('Please choose a number between 3 and 12.');
          return false;
        }
        if(( document.getElementById('number1').value < 3) || (document.getElementById('number1').value > 12) )
        {
          alert('Please choose a number between 3 and 12.');
          return false;
        }
      }
    </script>

</body>
</html>