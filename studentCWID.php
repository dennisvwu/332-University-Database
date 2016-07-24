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

$query = "SELECT Course_Title, Enrollment_Course_Number, Enrollment_Section_Number, Grade					
	
	FROM ENROLLMENT, COURSE
	WHERE Enrollment_Course_Number = Course_Number
	AND Enrollment_CWID =" .$_POST["studentCWID"];

$result = mysql_query($query,$link) or die(mysql_error());

$i=0; 
if ($i<mysql_numrows($result)) 
{ 
  echo "Student Campus Wide ID: " .$_POST["studentCWID"], "<BR>";
  echo "Result numbers: ", mysql_numrows($result), "<BR>", "<BR>";

  for($i=0; $i<mysql_numrows($result); $i++) 
  {
   echo "Course Title: ", mysql_result($result,$i, Course_Title), "<BR>";
   echo "Course Number: ", mysql_result($result,$i, Enrollment_Course_Number), "<BR>";
   echo "Section Number: ", mysql_result($result,$i, Enrollment_Section_Number), "<BR>";
   echo "Grade: ", mysql_result($result,$i, Grade), "<BR>", "<BR>";
  }

 }
else
{ echo "INVALID CWID", "<BR>", "STUDENT NOT FOUND", "<BR>", "<BR>"; }

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