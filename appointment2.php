<?php
	include 'conn.php';
	/*if (!empty($_GET)) {
		$id = htmlspecialchars($_GET['id']);
		$attended = htmlspecialchars($_GET['attended']);
		$sql = "UPDATE `appointment_tbl` SET `appointment_attended`= $attended WHERE `appointment_id`= $id;";
		$params = array();
		$data = setData($sql,$params,false); 
	}*/
	$sql = "SELECT * FROM `appointment2_view`";
	$params = array();
	$data = getData($sql,$params,false);
	//var_dump($data);

	//Get list of owners
	$sql = "SELECT `owner_id`, `owner_name` FROM `owners_view`";
	$params = array();
	$owners = getData($sql,$params,true);
	//Get list of patients
	$sql = "SELECT `patient_id`, `patient_name` FROM `patient_view`";
	$params = array();
	$patients = getData($sql,$params,true);
	//var_dump($owners);

	if(isset($_POST['submit'])){
        $sql = "INSERT INTO `patient_tbl` ('patient_name' , 'animal_type', 'animal_sex' , 'animal_age' , 'aliment' , 'animal_allergy' , 'owner_id') VALUES ('".$_POST["patient_name"] . "','" .$_POST["animal_type"]. "','" .$_POST["animal_sex"] . "','" .$_POST["animal_age"] . "','" .$_POST["aliment"] . "','" .$_POST["animal_allergy"] . "','" .$_POST["owner_id"] . "')";
    } 
	
?>
	
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Bootstrap 4, from LayoutIt!</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

  </head>

<body>

    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
		<h1>Sago Palm</h1>
		<h3>Appointment</h3>
		</div>
	</div>
	<div class="row">
		<div class="col-md-8">
			<table class="table">
				<thead>
					<tr>
						<th>
							Patient Name
						</th>
						<th>
							Date/Time
						</th>
						<th>
							Attended
						</th>
						<th>
							Room
						</th>
						<th>
						    Vet
						</th>
						<th>
						    Owner
						</th>
					</tr>
				</thead>
				<tbody>
					
				<?php for ($x = 0; $x < count($data); $x++) { ?>	
					<tr <?php if($x%2) {echo 'class="table-active"';} ?>>
						<td>
							<?php echo $data[$x]["patient_name"] ?>
						</td>
						<td>
							<?php echo $data[$x]["appointment_date"]." ".$data[$x]["appointment_time"] ?>
							
						</td>
						<td>
						<form action="" method="get">
			<?php 
			$appId = $data[$x]["appointment_id"];
			$appAtt = $data[$x]["appointment_attended"]
			?>
			 <input 
				 type="hidden" 
				 id="<?=$appId?>" 
				 name="id" 
				 value="<?=$appId?>"
			 >
			 <?php $patientName = $data[$x]["patient_name"] ?>
			 <input 
				 type="hidden" 
				 patName="<?=$patientName?>" 
				 name="patient_name" 
				 value="<?=$patientName?>"
			 >
			 <?php $date = $data[$x]["appointment_date"] ?>
			 <input 
				 type="hidden" 
				 date="<?=$date?>" 
				 name="appointment_date" 
				 value="<?=$date?>"
			 >
			 <?php $time = $data[$x]["appointment_time"] ?>
			 <input 
				 type="hidden" 
				 time="<?=$time?>" 
				 name="appointment_time" 
				 value="<?=$time?>"
			 >
			 <?php $room = $data[$x]["appointment_room"] ?>
			 <input 
				 type="hidden" 
				 room="<?=$room?>" 
				 name="appointment_room" 
				 value="<?=$room?>"
			 >
			 <?php $vetName = $data[$x]["vet_name"] ?>
			 <input 
				 type="hidden" 
				 vetName="<?=$vetName?>" 
				 name="appointment_room" 
				 value="<?=$vetName?>"
			 >
			 <input type="checkbox" onClick="submit();" 
			 <?php if($appAtt){ echo 'checked="checked"'; } ?> >
			 <!-- Insert hidden inputs -->
			 <input type="hidden" name="attended" value="<?php
			 if($appAtt){ 
				echo '0';
			}else{
				echo '1';
			}?>" >		 
		</form>
						</td>
						<td>
							<?php echo $data[$x]["appointment_room"] ?>
						</td>
						<td>
						    <?php echo $data[$x]["vet_name"] ?>
						</td>
						<td>
						    <?php echo $data[$x]["owner_name"] ?>
						</td>
					</tr>
				<?php } ?>
				</tbody>
			</table>
		</div>
		<div class="col-md-4">
		<h1>Add Pet</h1>
		<!--
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
-->
<form>
  <div class="form-group row">
    <label for="patient_name" class="col-4 col-form-label">Pet Name</label> 
    <div class="col-8">
      <div class="input-group">
        <div class="input-group-addon">
          <i class="fa fa-address-card"></i>
        </div> 
        <input id="patient_name" name="patient_name" placeholder="Please enter your pets name" type="text" class="form-control">
      </div>
    </div>
  </div>
  <div class="form-group row">
    <label for="animal_type" class="col-4 col-form-label">Pet Type</label> 
    <div class="col-8">
      <input id="animal_type" name="animal_type" placeholder="Enter your pets age" type="text" class="form-control">
    </div>
  </div>
  <div class="form-group row">
    <label class="col-4">Gender</label> 
    <div class="col-8">
      <label class="custom-control custom-radio">
        <input name="animal_sex" type="radio" class="custom-control-input" value="1"> 
        <span class="custom-control-indicator"></span> 
        <span class="custom-control-description">Male</span>
      </label>
      <label class="custom-control custom-radio">
        <input name="animal_sex" type="radio" class="custom-control-input" value="0"> 
        <span class="custom-control-indicator"></span> 
        <span class="custom-control-description">Female</span>
      </label>
    </div>
  </div>
  <div class="form-group row">
    <label for="animal_age" class="col-4 col-form-label">Age</label> 
    <div class="col-8">
      <select id="animal_age" name="animal_age" class="custom-select">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
      </select>
    </div>
  </div>
  <div class="form-group row">
    <label for="aliment" class="col-4 col-form-label">Aliment</label> 
    <div class="col-8">
      <input id="aliment" name="aliment" type="text" class="form-control">
    </div>
  </div>
  <div class="form-group row">
    <label class="col-4">Is your pet allergic to penecilin</label> 
    <div class="col-8">
      <label class="custom-control custom-radio">
        <input name="animal_allergy" type="radio" class="custom-control-input" value="1"> 
        <span class="custom-control-indicator"></span> 
        <span class="custom-control-description">Yes</span>
      </label>
      <label class="custom-control custom-radio">
        <input name="animal_allergy" type="radio" class="custom-control-input" value="2"> 
        <span class="custom-control-indicator"></span> 
        <span class="custom-control-description">No</span>
      </label>
    </div>
  </div>
  <div class="form-group row">
    <label for="owner_id" class="col-4 col-form-label">Owner</label> 
    <div class="col-8">
      <select id="owner_id" name="owner_id" class="custom-select">
	  <?php
	   for ($x = 0; $x < count($owners); $x++) { 
	   $owner = $owners[$x]["owner_name"];
	   $owner_id = $owners[$x]["owner_id"];
	   ?>
	   <option value="<?=$owner_id?>"><?=$owner?></option>
	   <?php } ?>
      </select>
	</div>
	
  </div> 
  <div class="form-group row">
    <div class="offset-4 col-8">
      <button name="submit" type="submit" class="btn btn-primary">Submit</button>
	</div>
	
  </div>
</form>

		</div>
	</div>
</div>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </body>
</html>