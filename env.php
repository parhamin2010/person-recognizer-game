<?php

require_once 'libs/importer.php';

class env_class{

    public $DBHost;
    public $DBPort;
    public $DBName;
    public $DBUser;
    public $DBPassword;

    public function __construct()
    {
        $this->DBHost =  'localhost';
        $this->DBPort =  3306;
        $this->DBName =  'person_recognizer';
        $this->DBUser =  'root';
        $this->DBPassword =  '';

    }

}

