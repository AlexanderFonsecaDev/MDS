<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserRequest;
use App\User;
use Illuminate\Http\Request;

class LandingController extends Controller
{

    /*
     * Retorna la pagina de login
     */
    public function login(){
        return view('auth.login');
    }

    public function registerGuest(UserRequest $request){
        $validateDNI = $this->validateTypeAndDocumentUnique($request);
        if ($validateDNI){
            $user = User::create($request->all());
            return redirect('/')->withSuccess('Muchas gracias por registrar tu visita !!!!');
        }
        return back()->with('warning', 'Al parecer ese numero de documento ya fue registrado en nuestro sistema .');
    }

    /*
     * Validamos que no exista ningún otro registro que coincida con el tipo de documento y
     * el numero documento registrado dentro del sistema.
     * En caso de encontrar alguna coincidencia retornara false y no continuara con el registro de la visita.
     */
    private function validateTypeAndDocumentUnique(UserRequest $request){
        $searches = User::where('document',$request->get('document'))->where('type_cc',$request->get('type_cc'))->get();
        if(!$searches->isNotEmpty()){
            return  true;
        }
        return false;
    }

}
