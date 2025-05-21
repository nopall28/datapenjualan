 <!--sidebar end-->
  <?php
  include "koneksi.php"
  ?>
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">

              <div class="row">
                  <div class="col-lg-12 main-chart">
						<h3>Data Pengeluaran</h3>
						<br/>
						<?php if(isset($_GET['success-stok'])){?>
						<div class="alert alert-success">
							<p>Tambah Data Berhasil !</p>
						</div>
						<?php }?>
						<?php if(isset($_GET['success'])){?>
						<div class="alert alert-success">
							<p>Tambah Data Berhasil !</p>
						</div>
						<?php }?>
						<?php if(isset($_GET['remove'])){?>
						<div class="alert alert-danger">
							<p>Hapus Data Berhasil !</p>
						</div>
						<?php }?>
						
					

						<!-- Trigger the modal with a button -->
            <a href="admin/module/pengeluaran/tambah/tambah.php" class="btn btn-primary btn-md pull-right">Tambah Data</a>
						<a href="index.php?page=pengeluaran" style="margin-right :0.5pc;" 
							class="btn btn-warning btn-md pull-right">
							<i class="fa fa-refresh"></i> Refresh Data</a>
						<div class="clearfix"></div>
						<br/>
						
						<!-- view barang -->	
						<div class="modal-view">
							<table class="table table-bordered table-striped" id="example1">
								<thead>
									<tr style="background:#DFF0D8;color:#333;">
                    					<th>No</th>
										<th>Pengeluaran</th>
										<th>Jumlah Pengeluaran</th>
										<th>Aksi</th>
									</tr>
								</thead>
								<tbody>

								<?php 
									$totalPengeluaran = 0;
                  					$query = "SELECT * FROM data_pengeluaran";
                  					$result = mysqli_query($koneksi, $query);
									$no=1;
								?>
                <?php
            	foreach ($result as $data){
				$totalPengeluaran += $data["jumlah_pengeluaran"];
              	echo "
                <tr>
                  <th scope='row'>". $no++ ."</th>
                  <td>". $data["pengeluaran"] ."</td>
                  <td>Rp. ". $data["jumlah_pengeluaran"] ."</td>
                  <td> 
                    <a href='admin/module/pengeluaran/update.php?id=".$data["id"]."' type='button' class='btn btn-success'>Ubah</a>
                    <a href='admin/module/pengeluaran/delete.php?id=".$data["id"]."' type='button' class='btn btn-danger' onlick='return confirm('Yakin ingin menghapus data?')'>Hapus</a>
                  </td>
                </tr>  
              ";
            }
          ?>
								</tbody>
								<tfoot>
									<tr>
										<th colspan="2">Total Pengeluaran</td>
										<th>Rp.<?php echo number_format($totalPengeluaran);?>,-</td>
										<th colspan="2" style="background:#ddd"></th>
									</tr>
								</tfoot>
							</table>
						</div>
						<div class="clearfix" style="margin-top:7pc;"></div>
					<!-- end view barang -->
					<!-- tambah barang MODALS-->
						<!-- Modal -->
					
						
						
					</div>
              	</div>
          	</section>
      	</section>
	
