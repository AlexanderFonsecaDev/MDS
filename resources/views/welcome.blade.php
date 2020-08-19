@extends('layouts.app')

@section('header')
    <h1 class="masthead-heading mb-0">Lorem ipsum dolor sit.</h1>
    <h2 class="masthead-subheading mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta,
        pariatur.</h2>
@endsection

@section('content')
    <form method="POST" action="{{ route('registerGuest') }}" class="mb-4" @submit="enviarFormulario">
        @csrf
        <div class="row">

            <div class="form-group col-md-6">
                <label for="name" class="small mb-1 font-weight-bold">Nombre y apellido :*</label>
                <input name="name" id="name" type="text" class="form-control @error('name') is-invalid @enderror"
                       value="{{ old('name') }}" placeholder="Alexander Fonseca" v-model="form.name">
                @error('name')
                <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>

            <div class="form-group col-md-6">
                <label for="email" class="small mb-1 font-weight-bold">Correo*</label>
                <input id="email" name="email" type="email" maxlength="255" placeholder="example@example.com"
                       class="form-control @error('email') is-invalid @enderror" value="{{ old('email') }}" v-model="
                       form.email">
                @error('email')
                <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>

        </div>

        <div class="row">
            <div class="form-group col-md-4">
                <label for="phone" class="small mb-1 font-weight-bold">Telefono*</label>
                <input id="phone" name="phone" type="number" min="0"  placeholder="3123036763"
                       class="form-control @error('phone') is-invalid @enderror" value="{{ old('phone') }}"
                       v-model="form.phone">

                @error('phone')
                <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror

            </div>

            <div class="form-group col-md-4">
                <label for="type_cc" class="small mb-1 font-weight-bold">Tipo de documento*</label>
                <select name="type_cc" id="type_cc" class="form-control" v-model="form.type_cc">
                    <option value="0">Selecciona un tipo de documento</option>
                    <option value="cc">Cedula de ciudadanía</option>
                    <option value="ce">Cedula de extranjería</option>
                    <option value="pa">Pasaporte</option>
                </select>

                @error('type_cc')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
                @enderror

            </div>
            <div class="form-group col-md-4">
                <label for="document" class="small mb-1 font-weight-bold">Numero de documento*</label>
                <input id="document" name="document" type="text" maxlength="30" placeholder="1234567890"
                       class="form-control @error('document') is-invalid @enderror" value="{{ old('document') }}"
                       v-model="form.document">
                @error('document')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
                @enderror
            </div>
        </div>

        <div class="row">
            <div class="form-group col-md-6">
                <label for="how_did_you_find_us" class="small mb-1 font-weight-bold">¿Como nos encontro?*</label>
                <input id="how_did_you_find_us" name="how_did_you_find_us" type="text" maxlength="30"
                       placeholder="facebook, instagram, twitter o un amigo me conto"
                       class="form-control @error('how_did_you_find_us') is-invalid @enderror"
                       value="{{ old('how_did_you_find_us') }}"
                       v-model="form.how_did_you_find_us">

                @error('how_did_you_find_us')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
                @enderror

            </div>

            <div class="form-group col-md-6">
                <label for="address" class="small mb-1 font-weight-bold">Dirección*</label>
                <input id="address" name="address" type="text" maxlength="30" placeholder="av siempre viva"
                       class="form-control @error('address') is-invalid @enderror" value="{{ old('address') }}"
                       v-model="form.address">

                @error('address')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
                @enderror

            </div>
        </div>

        <div class="form-group d-flex align-items-center justify-content-center mt-4 mb-0">
            <button type="submit" class="btn btn-warning btn-lg rounded-pill text-center boton-redondo ">
                Enviar
            </button>
        </div>
    </form>
@endsection
