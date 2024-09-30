<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>General Hospital of Kavala | Management</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
<script src="script.js" defer></script>
</head>
<body>

<header>
        <span role="img" aria-label="Hospital">🏥</span>
		<h2>General Hospital of Kavala</h2>
	</header>

    <nav>
        <a href="#home">Home</a>
        <a href="#patient">Patient</a>
        <a href="#doctor">Doctor</a>
        <a href="#medicine">Medicine</a>
    </nav>
   <div id="picture">
    <img id="home" src="hospital_logo.png" alt="Hospital" class="responsive-image">
    
</div>


<div id="patient">
    <h1>Patient Management</h1>
    <button onclick="location.href='insert1.php';"> Insert Patient </button><br>
    <button onclick="location.href='delete1.php';"> Delete Patient </button><br>
    <button onclick="location.href='select1.php';"> List of Patients </button><br>
</div>

<div id="doctor">
    <h1>Doctor Management</h1>
    <button onclick="location.href='insert2.php';"> Insert Doctor </button><br>
    <button onclick="location.href='delete2.php';"> Delete Doctor</button><br>
    <button onclick="location.href='select2.php';"> List of Doctors </button><br>
</div>

<div id="medicine">
    <h1>Medicine Management</h1>
    <button onclick="location.href='insert3.php';"> Insert Prescription </button><br>
    <button onclick="location.href='delete3.php';"> Delete Prescription </button><br>
    <button onclick="location.href='select3.php';"> List of Prescriptions </button><br>
</div>

<footer class="show-on-scroll">
    <p>Contact us: gemqlga@cs.ihu.gr || kopapaf@cs.ihu.gr || mataeof@cs.ihu.gr</p>
</footer>

</body>
</html>
