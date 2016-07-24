<html>
<body>

<div id="main">

<h1>CPSC 332 2015 Term Project</h1>
<h2>by: James Tack & Dennis Wu</h2><br>

</div>

<div style="background-color:lightgrey;">
<fieldset>
<legend>Professor:</legend>

<?php

$link = mysql_connect('ecsmysql', 'cs332g28', 'ciuteinu');

if (!$link) {
die('Could not connect: ' . mysql_error());
}
echo 'Connected successfully<p>';

mysql_select_db("cs332g28",$link);
$query = "SELECT Course_Title, Classroom, Meeting_Days, Start_Time, End_Time
		
		FROM COURSE, SECTION, PROFESSOR
		WHERE Professor_SSN = Section_Professor_SSN 
		AND Course_Number = Section_Course_Number 
		AND Professor_SSN =" .$_POST["sno"];

$result = mysql_query($query,$link) or die(mysql_error());

$i=0; 
if ($i<mysql_numrows($result))
{
   echo "Professor SSN: ".$_POST["sno"],"<BR>", "<BR>";

   for($i=0; $i<mysql_numrows($result); $i++)
   {	 
 	echo "Course Title: ", mysql_result($result,$i, Course_Title), "<BR>";
 	echo "Classrooms: ", mysql_result($result,$i, Classroom), "<BR>";
 	echo "Meeting Days: ", mysql_result($result,$i, Meeting_Days), "<BR>";
 	echo "Start Time: ", mysql_result($result,$i, Start_Time), "<BR>";
	echo "End Time: ", mysql_result($result,$i, End_Time), "<BR>", "<BR>";
   }
}
else
{ echo "INVALID SSN, Professor NOT FOUND", "<BR>", "<BR>"; }

// Close Database
mysql_close($link);
?>

<button onclick="goBack()">Go Back</button>

<script>
function goBack() {
    window.history.back();
}
</script>

</fieldset>
</div>
</body>
</html>