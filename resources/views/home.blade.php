@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    <div class="alert alert-success" role="alert">Welcome! Control all your devices here!</div>
                    <div class="alert alert-success" role="alert">No issues reported!</div>
                </div>
                <?php
                    $user=  Auth::user();
                    echo $user->email;
                    $results = DB::select('select * from Status where username = :id', ['id' => $user->email]);
                    foreach ($results as $s){
                    echo $s->username;
                    echo $s->light1;
                    echo $s->water;
                }
                ?>
            </div>
        </div>
    </div>
</div>
@endsection
