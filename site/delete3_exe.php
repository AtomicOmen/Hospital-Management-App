<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>General Hospital of Kavala | Management</title>
    <link rel="stylesheet" type="text/css" href="style.css"> 
</head>
<body>
<header>
        <span role="img" aria-label="Hospital">ğŸ¥</span>
		<h2>General Hospital of Kavala</h2>
	</header>
<div id="center">
<?php
	include 'connect.php';
?>

<?php
	// ???? t?? t?µ?? POST
	$pr_pat = $_POST['PID'];
	$pr_med = $_POST['MID'];
	
	// S??ta?? e?t???? SQL ??a d?a??af?  ded?µ????
    $qry="DELETE FROM PRESCRIBED WHERE pr_pat = ('".$pr_pat."') AND pr_med = ('".$pr_med."')";

	
	// ??t??es? e?t????
	$qryexe = mysqli_query($conne, $qry);
	if ($qryexe) {
		echo '<div id="result-message">The data has been deleted successfully.</div>';
	} else {
		echo '<div id="result-message">Error: ' . mysqli_error($conne) . '</div>';
	}
?>
<center><button onclick="location.href = 'index.php';"> Home </button></center>
</div>

</body>
</html>