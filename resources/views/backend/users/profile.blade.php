@extends('layouts.backend')

@section('main')

<div class="container-fluid">
    <div class="row">
        <div class="card mt-5 mb-3 m-auto" style="width: 24rem; font-family: Verdana, Geneva, Tahoma, sans-serif ">
            <img style="height: 400px;" src="{{ asset('image/a993cc364a748f295ce38f6a2a4e5ddd.png') }}" class="card-img-top">
            <div class="card-body">
              <h5 class="card-title">Arup Ratan Dey</h5>
              <p class="card-text">Working on Web development</p>
            </div>
            <ul class="list-group list-group-flush">
              <li class="list-group-item">Phone no - 01797868675</li>
              <li class="list-group-item">Address - ughkhkh</li>
              <li class="list-group-item">Email No - admin@gmail.com</li>
            </ul>
            <div class="card-body">
              <a href="{{ url()->previous() }}" class="btn btn-block btn-success">Back to previous page</a>
            </div>
        </div>
    </div>
</div>


@endsection