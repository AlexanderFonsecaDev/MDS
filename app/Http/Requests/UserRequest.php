<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Egulias\EmailValidator\EmailValidator;
use Egulias\EmailValidator\Validation\RFCValidation;

class UserRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name'                => 'required|max:255',
            'email'               => 'required|unique:users,email',
            'phone'               => 'required|max:255',
            'document'            => 'required|min:6|max:11',
            'how_did_you_find_us' => 'required|max:255',
            'address'             => 'required|max:255',
        ];
    }
}
