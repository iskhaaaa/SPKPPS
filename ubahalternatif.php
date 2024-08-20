<?php
include("konfig/koneksi.php");

// Retrieve the data for the specified alternative
$id_alternatif = htmlspecialchars($_GET['id']);
$s = mysqli_query($k21, "SELECT * FROM alternatif WHERE id_alternatif='$id_alternatif'");
$d = mysqli_fetch_assoc($s);

?>

<div class="box-header">
    <h3 class="box-title">Ubah Alternatif</h3>
</div>

<div class="box-body pad">
    <form action="" method="POST">
        <input type="text" name="id_alternatif" class="form-control" value="<?php echo htmlspecialchars($d['id_alternatif']); ?>" readonly>
        <br />
        <input type="text" name="nama_alternatif" class="form-control" placeholder="Nama Alternatif" value="<?php echo htmlspecialchars($d['nm_alternatif']); ?>">
        <br />
        <input type="text" name="nik" class="form-control" placeholder="NIK Alternatif" value="<?php echo htmlspecialchars($d['nik']); ?>">
        <br />
        <input type="text" name="alamat" class="form-control" placeholder="Alamat" value="<?php echo htmlspecialchars($d['alamat']); ?>">
        <br />
        <input type="submit" name="ubah" value="Ubah" class="btn btn-primary">
        <br />
    </form>
</div>

<?php
if (isset($_POST['ubah'])) {
    $id_alternatif = htmlspecialchars($_POST['id_alternatif']);
    $nama_alternatif = htmlspecialchars($_POST['nama_alternatif']);
    $nik = htmlspecialchars($_POST['nik']);
    $alamat = htmlspecialchars($_POST['alamat']);

    // Validasi panjang NIK
    if (strlen($nik) > 16) { // Misalnya NIK maksimal 16 karakter
        echo "<script>alert('NIK terlalu panjang');</script>";
    } else {
        // Update the alternative data
        $update_query = "
            UPDATE alternatif 
            SET nm_alternatif='$nama_alternatif', nik='$nik', alamat='$alamat' 
            WHERE id_alternatif='$id_alternatif'
        ";
        $s = mysqli_query($k21, $update_query);

        if ($s) {
            echo "<script>alert('Data berhasil diubah'); window.open('index.php?a=alternatif&k=alternatif','_self');</script>";
        } else {
            echo "<script>alert('Gagal mengubah data');</script>";
        }
    }
}
?>