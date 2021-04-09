<?php
    $text='@te123st1ert rtytry^%$%&*$@';
    function highlight_nicknames($text){
        $pat='/\s([@^][^0-9\W]+([^\W][a-zA-Z\d])*)\s/';
        $nik=preg_match ($pat,$text,$nickname);
        if (preg_match ($pat,$text)){
            $repl= '<b>'.$nickname[0].'</b>';
            $res=preg_replace($pat,$repl,$text);
            return $res;
        }else{
            return $text;
        }
    }
    echo (highlight_nicknames($text));
?>
