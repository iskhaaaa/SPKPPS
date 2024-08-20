<?php

include("konfig/koneksi.php");

// Mendapatkan ID alternatif terakhir
$query = "SELECT max(id_alternatif) as idMaks FROM alternatif";
$hasil = mysqli_query($k21, $query);
$data  = mysqli_fetch_array($hasil);
$nim = $data['idMaks'];

// Mengatur nomor urut
$noUrut = (int) substr($nim, 2, 3);
$noUrut++;

// Mengatur ID baru
$char = "al";
$IDbaru = $char . sprintf("%03s", $noUrut);

?>
<div class="box-header">
    <h3 class="box-title">Tambah Alternatif</h3>
</div>

<div class="box-body pad">
    <form action="" method="POST">
        <input type="text" name="id_alternatif" class="form-control" value="<?php echo $IDbaru; ?>" readonly>
        <br />
        <input type="text" name="nama_alternatif" class="form-control" placeholder="Nama Alternatif" required>
        <br />
        <input type="text" name="nik" class="form-control" placeholder="NIK Alternatif" required>
        <br />
        <input type="text" name="alamat" class="form-control" placeholder="Alamat Alternatif" required>
        <br />
        <input type="submit" name="simpan" value="Simpan" class="btn btn-primary">
        <br />
    </form>
</div>

<?php
if (isset($_POST['simpan'])) {
    $id_alternatif = htmlspecialchars($_POST['id_alternatif']);
    $nama_alternatif = htmlspecialchars($_POST['nama_alternatif']);
    $nik = htmlspecialchars($_POST['nik']);
    $alamat = htmlspecialchars($_POST['alamat']);

    // Insert data alternatif
    $s = mysqli_query($k21, "INSERT INTO alternatif (id_alternatif, nm_alternatif, nik, alamat) VALUES ('$id_alternatif', '$nama_alternatif', '$nik', '$alamat')");

    if ($s) {
        echo "<script>alert('Data berhasil disimpan'); window.open('index.php?a=alternatif&k=alternatif','_self');</script>";
    } else {
        echo "<script>alert('Gagal menyimpan data: " . mysqli_error($k21) . "');</script>";
    }
}
?>