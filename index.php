<?php 
  include 'db/koneksi.php';
  include 'template/header.php';
  include 'template/navbar/navbar.php';
?>

<section class="content">
  <div class="content_heading">
    <h4>Halo saya Gus Jabung Al Fiansyah.</h4>
    <h3>Seorang Mahasiswa dan Frontend Web Developer</h3>
  </div>
  <div class="content_subheading">
    <p>
      Mahasiswa di
      <span class="text_bold"
        ><a href="">Universitas Sain Al Qur'an.</a></span
      >
    </p>
    <p>
      Pekerja Lepas sebagai
      <span class="text_bold"><a href="">Freelance.</a></span>
    </p>
    <div class="btn-resume">
      <a href="tentang.php">tentang saya</a>
    </div>
  </div>
</section>

<!-- slider -->
<section class="slider-container">
  <h1>Kegiatan Saya</h1>
	<div class="slider-wrapper">
		<div class="slider">
      <?php 
        $sql = "SELECT * FROM konten";
        $result = $conn->query($sql);
        $i = 1;

        while($data = $result->fetch_assoc()){
          echo "
            <img id='slide-" . $i++ . "' src='" . $data['nama'] . "'/>
          ";
        }
      ?>
		</div>
		<div class="slider-nav">
			<a href="#slide-1"></a>
			<a href="#slide-2"></a>
			<a href="#slide-3"></a>
		</div>
	</div>
</section>
<!-- end slider -->

<section class="project">
  <h1>Portofolio Saya</h1>
  <div class="row">
    <div class="col post-title">
      <h3>Unsiq Code</h3>
      <p>
        Platform diskusi online untuk bertanya dan menjawab pertanyaan dengan berbagi pengetahuan.
      </p>
      <p class="post-title-link arrow">lihat</p>
    </div>
    <div class="col post-img"></div>
  </div>
  <div class="row">
    <div class="col post-img"></div>
    <div class="col post-title">
      <h3>Catetin</h3>
      <p>
        Aplikasi untuk mengatur daftar tugas dengan pengingat dan fitur pelacakan kemajuan.
      </p>
      <p class="post-title-link arrow">lihat</p>
    </div>
  </div>
  <div class="btn-read">watch more<span>&#8594;</span></div>
</section>
<script src="assets/js/script.js"></script>
<?php include 'template/footer.php';?>