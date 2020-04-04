<?php
if (isset($_POST["edit"])) {
    if ($db->uPenyakit($_POST) > 0) {
        echo "
        <script>
        alert('Data Berhasil Di Edit');
        document.location.href = 'index.php?page=module/Penyakit/index';
        </script>";
    } else {
        echo "<script>
        alert('Data Gagal Di Edit');
        document.location.href = 'index.php?page=module/Penyakit/index';
        </script>";
    }
}

$id = $_GET['id'];
$dPenyakit = $db->getOnePenyakit($id);
// var_dump($dPenyakit);
?>

<div class="container">

    <div class="row">

        <div class="col-md-6 mb-5 mt-5">
            <h2>Edit Penyakit</h2>
            <hr>
            <form method="POST">
                <div class="form-group">
                    <div class="form-label-group">
                        <label>Kode Penyakit</label>
                        <input readonly value="<?= $dPenyakit->penyakit_id ?>" name="id" type="text" class="form-control" autofocus="autofocus">
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-label-group">
                        <label>Nama Penyakit</label>
                        <input value="<?= $dPenyakit->penyakit_nama ?>" name="nama" type="text" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-label-group">
                        <label>Keterangan Penyakit</label>
                        <input value="<?= $dPenyakit->penyakit_ket ?>" name="ket" type="text" class="form-control">
                    </div>
                </div>
                <button name="edit" class="btn btn-success">Edit</button>
            </form>
        </div>

    </div>
</div>