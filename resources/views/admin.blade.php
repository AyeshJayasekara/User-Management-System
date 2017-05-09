<?php
/**
 * Created by PhpStorm.
 * User: ayeshjayasekara1
 * Date: 5/9/17
 * Time: 8:25 AM
 */
?>
@extends('layouts.ad')
@section('content')
<div class="container">
<section>
    <!--for demo wrap-->
    <h1>All Users</h1>
    <div class="tbl-header">
        <table cellpadding="0" cellspacing="0" border="0">
            <thead>
            <tr>
                <th>User Name</th>
                <th>Email</th>
                <th>Channel ID</th>
                <th>Registered Date</th>
                <th>Last Password Change</th>
            </tr>
            </thead>
        </table>
    </div>
    <div class="tbl-content">
        <table cellpadding="0" cellspacing="0" border="0">
            <tbody>
            @foreach ($results as $result)
                <tr>
                    <td>{{$result->name}}</td>
                    <td>{{$result->email}} </td>
                    <td>{{$result->channelname}}</td>
                    <td>{{$result->created}}</td>
                    <td>{{$result->lastseen}}</td>
                </tr>
            @endforeach
            </tbody>
        </table>
    </div>
</section>


<!-- follow me template -->
<div class="made-with-love">
    Made with
    <i>♥</i> by
    <a target="_blank" href="{{url('/')}}">Kosala Surawimala</a>
</div>
</div>
@endsection