<?php
	// include connection function getData()
	include 'conn.php';
	
	// PDO SQL
	// you need to put your SQL in a PDO format in here
	//$sql = "SELECT * FROM `appointment_tbl`";
	$sql = "SELECT * FROM `appointment_view`";
	
	// PDO Params
	// you need to include PDO variables in the array
	$params = array();
	
	// Put results into $data
	// turn on/off error messages with true/false as third value passed
	$data = getData($sql,$params,true);
	
	// uncomment below lines to see results
	//var_dump($data);
	//echo ""---------------------------;
	//var_dump($data[0]);
	//var_dump($data[0]["patient_name"]);
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
</head>

<body>

</body>
</html>