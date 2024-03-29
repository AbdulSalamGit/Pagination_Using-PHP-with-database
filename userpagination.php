 <?php
    
    require_once "connection.php";

    $limit = 4;

    if (isset($_GET["page"])) {
        $page  = $_GET["page"];
    } else {
        $page=1;
    }

    $start = ($page - 1) * $limit; 

    $query = "SELECT * FROM student ORDER BY ID ASC LIMIT $start, $limit";
    $result = mysqli_query($conn, $query) or die("Query Failed");
    ?>


<!DOCTYPE html>
<html>
<head>
    <title>Pagination</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<center>
   
    <div class="container">
        <br>
            <h1>Pagination Simple Example</h1>
            
            <table border="2" width="70%" height="200px">
                <thead height="50px" style="background-color: #58B19F;">
                <tr>
                    <th width="10%">ID</th>
                    <th>Name</th>
                    <th>College</th>
                    <th>Score</th>
                </tr>
                </thead>
                <tbody>
                    <?php
                    while ($row = mysqli_fetch_array($result)) {
                    
                    ?>
                    <tr>
                        <td><?php echo $row["ID"]; ?></td>
                        <td><?php echo $row["Name"]; ?></td>
                        <td><?php echo $row["College"]; ?></td>
                        <td><?php echo $row["Score"]; ?></td>
                    </tr>
                    <?php
                    }
                    ?>
                    
                </tbody>
                
            </table><br><br>

            <div class="pagination">
                 <?php

                $query1 = "SELECT * FROM student";
                $result1 = mysqli_query($conn, $query1);

                
                if (!$result1) {
                  die("Query failed: " . mysqli_error($conn));
                }

                if (mysqli_num_rows($result1) > 0) {
                  
                  $total_record = mysqli_num_rows($result1);
                  $total_pages = ceil($total_record / $limit);

                  $prev_page = $page - 1;
                  $next_page = $page + 1;

                 
                  if ($page > 1) {

                    echo '<a href="userpagination.php?page=' . $prev_page . '">Previous</a> ';
                  } 

                  
                  for ($i = 1; $i <= $total_pages; $i++) {

                    $class = ($i == $page) ? 'active' : '';

                    echo '<a href="userpagination.php?page=' . $i . '" class="' . $class . '">' . $i . '</a> ';
                  }

                 
                  if ($page < $total_pages) {
                    echo ' <a href="userpagination.php?page=' . $next_page . '">Next</a>';
                  } 

                }

                mysqli_close($conn); 

    ?>

            </div>
    </div>
</center>
</body>
</html>
