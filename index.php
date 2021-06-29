<?php 
    $title = 'Index';
    require_once 'includes/header.php'; 
?>
<br></br>
    <div class="container">
    <div class="row">
        <div class="col">
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                <form>
                    <div class="mb-3">
                        <label for="username" class="form-label">Username</label>
                        <input type="username" class="form-control" id="username">
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" id="password">
                    </div>
                    <button type="submit" class="btn btn-primary">Masuk</button>
                </form>
                </div>
            </div>
        </div>
        <div class="col">
            <h1>Ekapa Polinema</h1>
            <p>EKapa polinema atau yang merupakan kepanjangan dari E-Karcis Parkir merupakan web application yang 
            didesain untuk menggantikan karcis parkir tradisional pada area kampus Politeknik Negeri Malang</p>
        </div>
    </div>
    </div>

<?php require_once 'includes/footer.php'; ?>