<?php

class Cat extends Animal {

    public $perilaku;

    public function __construct($nama)
    {
        $this->nama = $nama;
        $this->jenis = "kucing";
        $this->perilaku = "Terkadang kucing bisa berbaur dengan manusia sebagai peliharaan";
    }

    public function getinfo()
    {
        echo "Hewan ini adalah $this->nama jenis $this->jenis. $this->jenis adalah hewan yang berasal dari keluarga Felidae. $this->perilaku. ";
    }
}

?>