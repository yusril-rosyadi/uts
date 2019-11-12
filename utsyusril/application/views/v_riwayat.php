<!DOCTYPE html>
<html>
<head>
	<title>UTS PWFL</title>
</head>
<body>
	<center>
		<h3>
			<a href="<?php echo base_url('C_page/');?>">Lihat Data </a>
		</h3>
	</center>
	<center>
		<table border="1">
			<thead>
				<tr>
					<th>No.</th>
					<th>NIM</th>
					<th>No hp lama</th>
					<th>no hp baru</th>
					<th>tgl ubah</th>
				</tr>
				<?php $no = 1; foreach ($mhs as $itemmhs) {?>
			</thead>
				<tr>
					<th><?php echo $no++; ?></th>
					<th><?php echo $itemmhs['nim']; ?></th>
					<th><?php echo $itemmhs['no_hp_lama']; ?></th>
					<th><?php echo $itemmhs['no_hp_baru']; ?></th>
					<th><?php echo $itemmhs['tgl_diubah']; ?></th>
					
				</tr>
			<?php } ?>
		</table>
	</center>
</body>
</html>