<!DOCTYPE html>
<html>
    <head>
        <title>Cetak Data Surat Masuk</title>
        <link href="../Assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>  
    <body onload="print()">
        <!--Menampilkan data detail arsip-->
        <?php
        include '../config/koneksi.php';
        $sql = "SELECT * FROM tb_surat_masuk WHERE id='" . $_GET ['id'] . "'";
        //proses query ke database
        $query = mysqli_query($koneksi, $sql) or die("SQL Detail error");
        //Merubaha data hasil query kedalam bentuk array
        $data = mysqli_fetch_array($query);
        ?>   

        <div class="container">
            <div class='row'>
                <div class="col-sm-12">
                    <!--dalam tabel--->
                    <div class="text-center">
                        <h2>Sistem Informasi Surat Dinas PUPR Kab.Asahan</h2>
                        <h4>Jalan Mahoni No. 29, Kisaran,<br>Kabupaten Asahan, Sumatera Utara, 21211</h4>
                        <hr>
                        <h3>DATA SURAT</h3>
                        <table class="table table-bordered table-striped table-hover"> 
                            <tbody>
								<tr>
                                    <td>Nomor Surat</td> <td><?= $data['no_surat'] ?></td>
                                </tr>
                                <tr>
                                    <td width="200">Asal Surat</td> <td><?= $data['asal_surat'] ?></td>
                                </tr>
                                <tr>
                                    <td>Tanggal Surat</td> <td><?= $data['tgl_surat'] ?></td>
                                </tr>
								<tr>
                                    <td>Tanggal Masuk</td> <td><?= $data['tgl_masuk'] ?></td>
                                </tr>
								<tr>
                                    <td>Penerima </td> <td><?= $data['penerima'] ?></td>
                                </tr>
								<tr>
                                    <td>Perihal</td> <td><?= $data['perihal'] ?></td>
                                </tr>
                            </tbody>
                            <tfoot> 
                                <tr>
                                    <td colspan="2" class="text-right">
                                        Kisaran  <?= date("d-m-Y") ?>
                                        <br><br><br><br>
                                        <u>Kabag Hukum, S.Hum<strong></u><br>
                                        NIP.102871291416712
									</td>
								</tr>
							</tfoot> 
                        </table>
                    </div>
                </div>
            </div>
    </body>
</html>