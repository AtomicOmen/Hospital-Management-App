<?php
    include 'connect.php';
?>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Show Data</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>

<header>
        <span role="img" aria-label="Hospital">🏥</span>
		<h2>General Hospital of Kavala</h2>
	</header>

<div id="center">

<table id="select" border=2 align=center>
    <h2 id="h2s">Doctors</h2>
    <tr>
        <th width=80>ID</th>
        <th width=80>Name</th>
        <th width=80>Surname</th>
        <th width=80>Years of work</th>
        <th width=80>Ofiice ID</th>
        <th width=80>Clinic of work</th>
        <th width=80>Medical Specialization</th>
    </tr>

    <?php
        $qry = "SELECT * FROM DOCTOR";
        $result = mysqli_query($conne, $qry);
        
        while($row = mysqli_fetch_array($result, MYSQLI_NUM)) {
            echo ("<tr><td><div align=\"center\"> $row[0]</div></td>
                    <td><div align=\"center\"> $row[1] </div></td>
                    <td><div align=\"center\"> $row[2] </div></td>
                    <td><div align=\"center\"> $row[3] </div></td>
                    <td><div align=\"center\"> $row[4] </div></td>
                    <td><div align=\"center\"> $row[5] </div></td>
                    <td><div align=\"center\"> $row[6] </div></td></tr>");
        }
    ?>
</table>

<center><button onclick="location.href = 'index.php';"> Home </button></center>
</div>

</body>
</html>
