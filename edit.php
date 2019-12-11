<?php
header("Access-Control-Allow-Origin: *");
$con = mysqli_connect("localhost","root","","task_vue");
if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  exit();
}
$emp_name=$_POST['emp_name'];
$emp_code=$_POST['emp_code'];
$emp_sal=$_POST['emp_sal'];
echo $emp_name;
$id=$_GET['id'];
$sql = "UPDATE `employee_details` 
	SET `emp_name`='$emp_name',`emp_code` = '$emp_code',
	`emp_sal`='$emp_sal'  WHERE `id`=$id";
	if (mysqli_query($con, $sql)) {
		echo json_encode(array("statusCode"=>200));
	} 
	else {
		echo json_encode(array("statusCode"=>201));
	}

?>