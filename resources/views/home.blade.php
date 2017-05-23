<meta http-equiv="refresh" content="10" >
@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    <div class="alert alert-success" role="alert">Welcome {{Auth::user()->name}}! Control all your devices here!</div>
                    <div class="alert alert-success" role="alert">No issues reported!</div>
                    <div class=" container align-content-center" >

                        <h2>Main Power <span class="label <?echo "label-success"?>" onclick="msgg()" id="l1">ON</span></h2>

                        <h2>Light 1 @if($l1==1)
                                <span class="label label-success">ON</span>
                            @else
                                <span class="label label-danger">OFF</span>
                            @endif
                            </h2>
                        <h2>
                        Light 2 @if($l2==1)
                                <span class="label label-success">ON</span>
                            @else
                                <span class="label label-danger">OFF</span>
                            @endif
                        </h2>
                        <h2>
                        Light 3 @if($l3==1)
                                <span class="label label-success">ON</span>
                            @else
                                <span class="label label-danger">OFF</span>
                            @endif
                        </h2>
                        <h2>
                        Light 4 @if($l4==1)
                                <span class="label label-success">ON</span>
                            @else
                                <span class="label label-danger">OFF</span>
                            @endif



                        </h2>

                        <h2>Curtain <span class="label label-danger">CLOSED</span></h2>
                        <h2>DOOR <span class="label label-info">UNLOKED</span></h2>

                        <h2>Temperature <span class="label label-warning"><?php echo $t?></span></h2>






                        <?php

                            $d= "55";

                       // $results = DB::select('select * from Status where username = :id', ['id' => $user->email]);
                        //foreach ($results as $s){
                         //   echo $s->username;
                         //   echo $s->light1;
                         //   echo $s->water;


                       // }
                        ?>
                    </div>
                </div>

            </div>

        </div>


    </div>
</div>

@endsection
