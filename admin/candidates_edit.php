<?php
	include 'includes/session.php';

	if(isset($_POST['edit'])){
		$id = $_POST['id'];
		$reg_no = $_POST['reg_no'];
		$firstname = $_POST['firstname'];
		$lastname = $_POST['lastname'];
		$position = $_POST['position'];
		$platform = $_POST['platform'];

		$sql = "UPDATE candidates SET reg_no = '$reg_no', firstname = '$firstname', lastname = '$lastname', position_id = '$position', platform = '$platform' WHERE id = '$id'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Candidate updated successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}
	else{
		$_SESSION['error'] = 'Fill up edit form first';
	}

	header('location: candidates.php');

?>