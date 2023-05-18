<?php

class Dog extends Animal{

    public $perilaku;

    public function __construct($nama)
    {
        $this->nama = $nama;
        $this->jenis = "anjing";
        $this->perilaku = "Berkedip atau Menyipitkan Mata, Menghela Napas, dan Menguap";
    }

    public function getinfo()
    {
        echo "Hewan ini adalah $this->nama jenis $this->jenis. $this->jenis adalah hewan Pemangsa. $this->perilaku.";   
    }
}

?>