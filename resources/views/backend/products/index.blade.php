@extends('layouts.backend')

<style>
    @import url('https://fonts.googleapis.com/css2?family=Bree+Serif&display=swap');
</style>

@section('main')
    <div class="container mt-3"  style="font-family: 'Bree Serif', serif;">
        <h2 class="text-center">Products List</h2>
        <a href="{{route('admin.product.create')}}" class="btn btn-success" target="_blank">Create New Product</a>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">List no</th>
                <th scope="col">Name</th>
                <th scope="col">Price</th>
                <th scope="col">Description</th>
                <th scope="col">Photo</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            @foreach($products as $key=>$product)
            <tr>
                <th scope="row">{{$key+1}}</th>
                <td>{{$product->name}}</td>
                <td>{{$product->price}} BDT</td>
                <td>{{$product->desc}}</td>
                <td>
                    <img src="{{ asset('uploads/products/'.$product->photo) }}" alt="bjhk" style="height: 50px;">
                </td>
                <td>
                    <a href="{{route('admin.product.edit',$product->id)}}" class="btn btn-primary">Edit</a>
                    <a href="{{route('admin.product.delete',$product->id)}}" class="btn btn-warning">Delete</a>
                </td>
            </tr>
            @endforeach
            </tbody>
        </table>

        {{$products->links()}}
    </div>
@endsection
