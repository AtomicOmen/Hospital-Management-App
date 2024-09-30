<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>General Hospital of Kavala | Management</title>
<link rel="stylesheet" type="text/css" href="style.css">
<script src="script.js" defer></script>
</head>

<body>
    <header>
        <span role="img" aria-label="Hospital">🏥</span>
		<h2>General Hospital of Kavala</h2>
	</header>
<div id="center">
    <h2 id="h2i">Insert Doctor</h2>
    <button id="RNum" onclick="gRandomNumber()">Generate ID</button>
    <p id="randomNum" class="rnum"></p>
  
    <form name="insert" method="post" action="insert2_exe.php">
        <table width=300 border=0 align=center cellpadding=2 cellspacing=0>
            <tr>
                <td width=120 align=right><b>ID:</b></td>
                <td width=180><input name="ID" type="text" size=10></td>
            </tr>
            <tr>
                <td align=right><b>Name:</b></td>
                <td><input name="Name" type="text" size=10></td>
            </tr>
            <tr>
                <td align=right><b>Surname:</b></td>
                <td><input name="Surname" type="text" size=10></td>
            </tr>
            <tr>
                <td align=right><b>Years of work:</b></td>
                <td><input name="workyears" type="text" size=10></td>
            </tr>
            <tr>
                <td align=right><b>Office ID:</b></td>
                <td><input name="off_id" type="text" size=10></td>
            </tr>
            <tr>
                <td align=right><b>Clinic of work:</b></td>
                <td><input name="workcli" type="text" size=10></td>
            </tr>
            <tr>
                <td align=right><b>Medical Specialization:</b></td>
                <td><input name="medspec" type="text" size=10></td>
            </tr>
            <tr>
                <td colspan="2" align=center>
                    <input type="reset" value="Reset">
                    <input type="submit" name="insert" value="Insert">
                </td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
