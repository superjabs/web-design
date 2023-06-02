<?php 
    include 'db/koneksi.php';
    include 'template/header.php';
    include 'template/navbar/navbar.php';
?>

<!-- Pendidikan -->
<article>
  <h2>Pendidikan Saya</h2>
  <section class='timeline-section'>
    <div class='timeline-items'>
  <?php 
      $sql = "SELECT * FROM pendidikan";
      $result = $conn->query($sql);

      while($data = $result->fetch_assoc()){
        echo "
          <div class='timeline-item'>
            <div class='timeline-dot'></div>
            <div class='timeline-title'> " . $data['jenjang'] . "  (" .  $data['tahun'] . ")</div>
            <div class='timeline-degrees'> " . $data['jurusan'] . " </div>
          </div>
          ";
        }
        ?>
      </div>
    </section>
</article>