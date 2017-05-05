


<?php

$username = $_POST['username'];
$password = $_POST['password'];
        echo $username;
$results = DB::select('select * from users ');

foreach ($results as $user) {
    echo $user->pubkey;
    echo "!";
    echo $user->subkey;
}

?>