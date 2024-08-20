<?php
include("konfig/koneksi.php");
$s = mysqli_query($k21, "select * from kriteria");
$h = mysqli_num_rows($s);
?>

<div class="box-header">
    <h3 class="box-title">Nilai Matriks Normalisasi</h3>
</div>

<table class="table table-bordered table-responsive">
<thead>
<tr>
    <th rowspan="2">No</th>
    <th rowspan="2">Nama</th>
    <th colspan="<?php echo $h; ?>">Kriteria</th>
</tr>
<tr>
    <?php
    for ($n=1; $n<=$h; $n++) {
        echo "<th>C{$n}</th>";
    }
    ?>
</tr>
</thead>
<tbody>
<?php
$i = 0;
$a = mysqli_query($k21, "select * from alternatif order by id_alternatif asc");

// Menghitung nilai kuadrat total untuk setiap kriteria melibatkan semua alternatif
$total_squares = array();
$query_all_values = mysqli_query($k21, "select * from nilai_matrik");
while ($data = mysqli_fetch_assoc($query_all_values)) {
    $kriteria_id = $data['id_kriteria'];
    if (!isset($total_squares[$kriteria_id])) {
        $total_squares[$kriteria_id] = 0;
    }
    $total_squares[$kriteria_id] += pow($data['nilai'], 2);
}

// Debugging total squares
echo "<h2>Debugging Total Squares</h2>";
foreach ($total_squares as $kriteria => $value) {
    echo "Kriteria $kriteria: Total Squares = $value<br>";
}

while ($da = mysqli_fetch_assoc($a)) {
    echo "<tr>
          <td>" . (++$i) . "</td>
          <td>{$da['nm_alternatif']}</td>";
    $idalt = $da['id_alternatif'];

    $n = mysqli_query($k21, "select * from nilai_matrik where id_alternatif='$idalt' order by id_matrik asc");
    while ($dn = mysqli_fetch_assoc($n)) {
        $idk = $dn['id_kriteria'];
        $normalized = round($dn['nilai'] / sqrt($total_squares[$idk]), 4); // Sesuaikan pembulatan ke empat desimal
        echo "<td align='center'>{$normalized}</td>";

        // Debugging normalized values
        echo "<!-- Debug: Normalized Value for {$da['nm_alternatif']} at Criterion $idk: $normalized -->";
    }
    echo "</tr>\n";
}
?>
</tbody>
</table>