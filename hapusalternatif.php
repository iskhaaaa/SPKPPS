<?php
//include ("konfig/koneksi.php");

//$s=mysqli_query("delete from alternatif where id_alternatif='$_GET[id]' ");

//if($s){
//	echo "<script>window.open('index.php?a=alternatif&k=alternatif','_self');</script>";
//}

include("konfig/koneksi.php");

// Check if the 'id' parameter is set in the GET request
if(isset($_GET['id'])) {
    // Prepare the DELETE statement using a prepared statement
    $query = "DELETE FROM alternatif WHERE id_alternatif = ?";
    if($stmt = mysqli_prepare($k21, $query)) {
        // Bind the parameter to the prepared statement
        mysqli_stmt_bind_param($stmt, "s", $_GET['id']);
        
        // Execute the prepared statement
        if(mysqli_stmt_execute($stmt)) {
            // Redirect to the desired page after successful deletion
            header("Location: index.php?a=alternatif&k=alternatif");
            exit();
        } else {
            echo "Error executing the statement: " . mysqli_error($k21);
        }

        // Close the statement
        mysqli_stmt_close($stmt);
    } else {
        echo "Error preparing the statement: " . mysqli_error($k21);
    }
} else {
    echo "No 'id' parameter provided in the GET request";
}

?>