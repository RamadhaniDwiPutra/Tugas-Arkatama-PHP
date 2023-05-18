<?php
class Animal{
    public $nama;
    public $jenis;
    
    public function __construct($nama, $jenis)
    {
        $this->nama = $nama;
        $this->jenis = $jenis;
    }
    
    public function getinfo()
    {
        echo "Hewan ini adalah $this->nama jenis $this->jenis";
    }
}

?>