<?php include 'db/koneksi.php';?>
<?php include 'template/header.php';?>
<?php include 'template/navbar/navbar.php';?>


<section class="about">
  <div class="about-profile">
    <img src="assets/img/profile.jpg" alt="my-profile" />
  </div>
  <div class="about-content">
    <h2>Terima Kasih sudah berkunjung</h2>
    <!-- biography -->
    <?php 
      $sql = "SELECT * FROM profil";
      $result = $conn->query($sql);

      while($data = $result->fetch_assoc()){
        // tentang
        echo "<article>" .  $data['tentang'] .  "</article>";
        // skill
        echo "
        <article>
          <h3>Skill</h3>
          <div class='lang-block'>
            <h4>" . $data['skill'] . "</h4>
          </div>
        </article>
        ";

        // bahasa 
        echo "
        <article>
          <h3>Bahasa</h3>
          <div class='lang-block'>
            <h4>" . $data['bahasa'] . "</h4>
          </div>
        </article>
        ";

        // hobi
        echo "
        <article>
          <h3>Hobi</h3>
          <div class='lang-block'>
            <h4>" . $data['hobi'] . "</h4>
          </div>
        </article>
        ";
      }
    ?>
    </article>
  </div>
</section>

<?php include 'template/footer.php' ?>
