<?php
//membuat query untuk hapus data
$sql="DELETE FROM tb_surat_keluar WHERE id ='".$_GET['id']."'";
$query=mysqli_query($koneksi, $sql) or die ("SQL Hapus Error");
if($query){
    echo"<script> window.location.assign('?page=s_keluar&actions=tampil');</script>";
}else{
    echo"<script> alert ('Maaf !!! Data Tidak Berhasil Dihapus') window.location.assign('?page=s_keluar&actions=tampil');</script>";
}

