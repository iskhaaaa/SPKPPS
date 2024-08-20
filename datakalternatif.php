<div class="box-header">
    <h3 class="box-title">Data Alternatif</h3>
</div>
<div class="table-responsive">
<table class="table table-bordered table-striped">
<thead>
<tr>
<th>Id Alternatif</th>
<th>Nama Alternatif</th>
<th>NIK</th>
<th>Alamat</th>
<th>Pilihan</th>
</tr>
</thead>
<tbody>
<?php
include ("konfig/koneksi.php");

$s=mysqli_query($k21,"select * from alternatif order by id_alternatif ASC");
while($d=mysqli_fetch_assoc($s)){
?>
<tr>
<td><?php echo $d['id_alternatif']; ?></td>
<td><?php echo $d['nm_alternatif']; ?></td>
<td><?php echo $d['nik']; ?></td>
<td><?php echo $d['alamat']; ?></td>
<td>
<a href="?a=alternatif&k=ubaha&id=<?php echo $d['id_alternatif']; ?>" class="btn btn-warning">Ubah</a>
<a href="hapusalternatif.php?id=<?php echo $d['id_alternatif']; ?>" class="btn btn-danger" onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?')">Hapus</a>
</td>
</tr>
<?php
}
?>
</tbody>
</table>
</div>