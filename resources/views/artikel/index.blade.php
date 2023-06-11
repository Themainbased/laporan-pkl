@extends('artikel/template/app')

@isset($tag_dipilih)
     @section('title')
        Tag : {{$tag_dipilih->nama}}
    @endsection
@endisset

@isset($kategori_dipilih)
    @section('title')
        Kategori : {{$kategori_dipilih->nama}}
    @endsection
    @section('kategori', 'active')
@endisset

@isset($author_dipilih)
    @section('title')
        Author : {{$author_dipilih->name}}
    @endsection
    @section('author', 'active')
@endisset

@isset($home)
    @section('title', 'Jelajahi Artikel')
    @section('home', 'active')
@endisset

@section('content')

    <h2 class="my-4 text-center">@yield('title')</h2>

    <div class="d-flex justify-content-center">
        <form class="form-inline my-2 my-lg-0" method="GET" action="{{url()->full()}}">
            <input class="form-control mr-sm-2" type="search" placeholder="Search For ..." aria-label="Search" name="search" value="{{$search}}">
            <button class="btn btn-success my-2 my-sm-0 mx-auto" type="submit">Search</button>
        </form>
    </div>

    @if (session('search'))
        <div class="row mt-4 justify-content-center text-center">
            <div class="col-md-6">
                <div class="alert alert-info" role="alert">
                {{session('search')}}
                </div>
            </div>
        </div>
    @else
        <div class="row mt-4">
            @foreach ($artikel as $row)
                    <div class="col-md-4 mt-5">
                        <div class="card shadow-sm">
                            <div class="card-body">
                                <h5 class="card-title">{{$row->judul}}</h5>
                                <p class="card-text"><small class="text-muted">{{$row->created_at->diffForHumans()}}</small></p>
                                <a href="/{{$row->slug}}" class="btn btn-primary" alt="...">Selengkapnya</a>
                            </div>
                        </div>
                    </div>
            @endforeach
        </div>

        <div class="d-flex justify-content-center mt-4">{{$artikel->links()}}</div>
        @endif
   
@endsection