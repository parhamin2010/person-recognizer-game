<?php

require 'db.php';

class core
{
    private $DB;
    public function __construct()
    {
        $method = isset($_POST['method']) ? $_POST['method'] : '';

        $this->DB = new DB_connect();
        if ($method == 'start_game') return $this->start_game();
    }

    public function start_game()
    {
        $images = $this->DB->DB->query('select * from images where nation=:nations ',array('nations'=>1));
        $difficulty = ($_POST['difficulty']) ? intval($_POST['difficulty']) : 2;

        if(count($images))
            echo json_encode(array('status'=>200, 'data'=>[$images,'difficulties'=>$difficulty]));
        else
            echo json_encode(array('status'=>200, 'data'=>''));
    }
}

new core();
