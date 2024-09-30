<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>General Hospital of Kavala | Management</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
<header>
        <span role="img" aria-label="Hospital">🏥</span>
		<h2>General Hospital of Kavala</h2>
	</header>
<div id="center">
    <h2 id="h2i">Delete Doctor</h2>
      
    <form name="delete" method="post" action="delete2_exe.php">
        <table width=300 border=0 align=center cellpadding=2 cellspacing=0>
            <tr>
                <td width=120 align=right><b>Doctor ID:</b></td>
                <td width=180><input name="ID" type="text" size=10></td>
            </tr>
            <tr>
                <td colspan="2" align=center>
                    <input type="reset" value="Clear">
                    <input type="submit" name="Delete" value="Delete">
                </td>
            </tr>
        </table>
    </form>     
</div>

</body>
</html>
