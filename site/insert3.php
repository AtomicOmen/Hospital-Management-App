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
    <h2 id="h2i">Insert Prescription</h2>
    <button id="RNum" onclick="generateRandomNumber()">Generate ID</button>
    <p id="randomNumber" class="rnum"></p>
  
    <form name="insert" method="post" action="insert3_exe.php">
        <table width=300 border=0 align=center cellpadding=2 cellspacing=0>
            <tr>
                <td width=120 align=right><b> Patient ID:</b></td>
                <td width=180><input name="PID" type="text" size=10></td>
            </tr>
            <tr>
                <td width=120 align=right><b>Medicine ID:</b></td>
                <td width=180><input name="MID" type="text" size=10></td>
            </tr>
            <tr>
                <td align=right><b>Start Date:</b></td>
                <td><input name="startdate" type="date"></td>
            </tr>
            <tr>
                <td align=right><b>End Date:</b></td>
                <td><input name="enddate" type="date"></td>
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
