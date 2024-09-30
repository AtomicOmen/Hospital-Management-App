<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Γενικό Νοσοκομείο Καβάλας | Διαχείριση</title>
    <link rel="stylesheet" type="text/css" href="style.css"> 
</head>
<body>
<header>
        <span role="img" aria-label="Hospital">🏥</span>
		<h2>General Hospital of Kavala</h2>
	</header>
<div id="center">
    <?php
        include 'connect.php';

        // Λήψη των τιμών POST
        $pr_pat = $_POST['PID'];
        $pr_med = $_POST['MID'];
        $start_date = $_POST['startdate'];
        $end_date = $_POST['enddate'];

        // Σύνταξη εντολής SQL για εισαγωγή δεδομένων
        $qry .= "INSERT INTO PRESCRIBED VALUES(".$pr_pat.",'".$pr_med."','".$start_date."','".$end_date."')";

        // Εκτέλεση εντολής
        $qryexe = mysqli_multi_query($conne, $qry);
        if ($qryexe) {
            echo '<div id="result-message">The data has been inserted successfully.</div>';
        } else {
            echo '<div id="result-message">Error: ' . mysqli_error($conne) . '</div>';
        }
    ?>
    <center><button onclick="location.href = 'index.php';"> Home </button></center>
</div>

</body>
</html>

