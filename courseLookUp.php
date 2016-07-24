<html>
<body>

<div id="main">

<h1>CPSC 332 2015 Term Project</h1>
<h2>by: James Tack & Dennis Wu</h2><br>

</div>

<div style="background-color:lightgrey;">
<fieldset>
<legend>Student:</legend>

<?php

$link = mysql_connect('ecsmysql', 'cs332g28', 'ciuteinu');

if (!$link) {
die('Could not connect: ' . mysql_error());
}
echo 'Connected successfully<p>';

mysql_select_db("cs332g28",$link);

$query = "SELECT Course_Number, Course_Title, Section_Number, Classroom, Meeting_Days, 
		Start_Time, End_Time, (Seats-COUNT(Enrollment_CWID)) as 'Seats'
	
	FROM COURSE, ENROLLMENT, SECTION
	WHERE Enrollment_Section_Number = Section_Number
	AND Course_Number = Section_Course_Number
	AND Enrollment_Course_Number ='".$_POST["courseNumber"]."'
	GROUP BY Section_Number;";

$result = mysql_query($query,$link) or die(mysql_error());

$i=0; 
if ($i<mysql_numrows($result))
{ 
  echo "Course Number: ".$_POST["courseNumber"],"<BR>", "<BR>";

  for($i=0; $i<mysql_numrows($result); $i++)
  {
   echo "Section Number: ", mysql_result($result,$i, Section_Number), "<BR>";
   echo "Classroom Location: ", mysql_result($result,$i, Classroom), "<BR>";
   echo "Meeting Days: ", mysql_result($result,$i, Meeting_Days), "<BR>";
   echo "Start Time: ", mysql_result($result,$i, Start_Time), "<BR>";
   echo "End Time: ", mysql_result($result,$i, End_Time), "<BR>";
   echo "Number of Seats: ", mysql_result($result,$i, "Seats"), "<BR>", "<BR>";
   }
}
else
{ echo "INVALID Course Number, Course NOT FOUND", "<BR>", "<BR>"; }

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