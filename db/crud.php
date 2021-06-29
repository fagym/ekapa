<?php
    class crud{
        // private database object
        private $db;

        //construct to private variable to the dataase connection
        function __construct($conn){
            $this->db = $conn;
        }

        public function getTipeakun(){
            $sqltipe = "SELECT * FROM `tipe_akun`";
            $resulttipe = $this->db->query($sqltipe);
            return $resulttipe;
        }

        public function getJeniskendaraan(){
            $sqljenis = "SELECT * FROM `jenis_kendaraan`";
            $resultjenis = $this->db->query($sqljenis);
            return $resultjenis;
        } 
    }
?>