<?php


class importer{

    public $address = '';

    public function __construct($address = '')
    {
        $this->address = $address;
        $this->import_file_getter($this->address);
    }

    public function import_file_getter(){
       return require_once($this->address);
    }
}