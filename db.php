<?php

require 'env.php';
require_once 'libs/importer.php';


class DB_connect{

    public $DB;

    public function __construct()
    {
        $DB = new env_class();
        new importer('libs/PDO/src/PDO.class.php');

        $this->DB = new Db($DB->DBHost, $DB->DBPort, $DB->DBName, $DB->DBUser, $DB->DBPassword);

        return $this->DB;
    }

}

