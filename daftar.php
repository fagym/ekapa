<?php
    $title = 'Daftar'; 

    require_once 'includes/header.php';  
    require_once 'db/conn.php'; 

    $resultstipe = $crud->getTipeakun();
    $resultsjenis = $crud->getJeniskendaraan();
?>

<h1 class="text-center">Registrasi Akun Ekapa</h1>

<form method="post" action="success.php">
    <div class="form-group">
        <label for="firstname">Nama Depan</label>
        <input required type="text" class="form-control" id="firstname" name="firstname">
    </div>
    <div class="form-group">
        <label for="lastname">Nama Belakang</label>
        <input required type="text" class="form-control" id="lastname" name="lastname">
    </div>
    
    <!-- Form control -->

    <div class="form-group">
        <label for="tipeakun">Tipe Akun</label>
        <select class="form-control" id="tipeakun" name="tipeakun">
            <?php while($r = $resultstipe->fetch(PDO::FETCH_ASSOC)) {?>
                   <option value="<?php echo $r['tipeakun_id'] ?>">
                   <?php echo $r['keterangan']; ?></option>
            <?php }?>
        </select>
    </div>
    <div class="form-group">
        <label for="username">Username</label>
        <input required type="text" class="form-control" id="username" name="username">
    </div>
    <div class="mb-3">
        <label for="password" class="form-label">Password</label>
        <input type="password" class="form-control" id="password">
    </div>
    <p class="text-left">Masukkan data Kendaraan anda!</p>
    
    <div class="form-group">
        <label for="nomorkendaraan">Nomor Plat Kendaraan</label>
        <input required type="text" class="form-control" id="nomorkendaraan" name="nomorkendaraan">
    </div>
    <div class="form-group">
        <label for="jeniskendaraan">Jenis Kendaraan</label>
        <select class="form-control" id="jeniskendaraan" name="jeniskendaraan">
            <?php while($s = $resultsjenis->fetch(PDO::FETCH_ASSOC)) {?>
                   <option value="<?php echo $s['idjenis'] ?>">
                   <?php echo $s['jeniskendaraan']; ?></option>
            <?php }?>
        </select>
    </div>

    <button type="submit" name="submit" class="btn btn-primary btn-block">Submit</button>
</form>

<?php require_once 'includes/footer.php'; ?>