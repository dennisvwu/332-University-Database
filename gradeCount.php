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

$query = "SELECT Grade, COUNT(*) as 'Count'

	FROM ENROLLMENT, COURSE, SECTION
	WHERE Course_Number = Section_Course_Number
	AND Enrollment_Course_Number = Course_Number
	AND Enrollment_Section_Number = Section_Number
	AND Section_Number = ".$_POST["sectionNumber"]."
	AND Course_Number = '".$_POST["courseNumber"]."'
	GROUP BY Grade;";

$result = mysql_query($query,$link) or die(mysql_error());

$i=0; 
if ($i<mysql_numrows($result))
{ 
  echo "Course Number: " . $_POST["sectionNumber"], "<BR>";
  echo "Section Number: " . $_POST["courseNumber"],"<BR>", "<BR>";

  for($i=0; $i<mysql_numrows($result); $i++)
  { echo mysql_result($result,$i,"Count"), " student(s) got: ", mysql_result($result,$i, Grade), "<BR>"; }

  echo "<BR>";
}

else
{ echo "INVALID ENTRY, Course/Section NOT FOUND", "<BR>", "<BR>"; }

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