@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <h5 class="d-inline my-auto">Lista de usuarios</h5>
                    <a href="{{ route('download') }}" class="btn btn-warning float-right">Descargar</a>
                </div>

                <div class="card-body">
                    <table class="table table-responsive">
                        <thead class="thead-dark">
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Tipo documento</th>
                            <th scope="col">Documento</th>
                            <th scope="col">Teléfono </th>
                        </tr>
                        </thead>
                        <tbody>

                        @foreach($users as $user)
                            <tr>
                                <th scope="row">{{ $user->id }}</th>
                                <td>{{ $user->name }}</td>
                                <td class="text-center">{{ $user->type_cc }}</td>
                                <td>{{ $user->document }}</td>
                                <td>{{ $user->phone }}</td>
                            </tr>
                        @endforeach

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
