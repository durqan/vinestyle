@extends('head')

@section('content')
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Фото сотрудника</th>
            <th scope="col">ФИО</th>
            <th scope="col">Профессия</th>
            <th scope="col">Оклад</th>
            <th scope="col">Бонусы</th>
        </tr>
        </thead>
        <tbody>
        @if($payments && $payments->count())
            @foreach($payments as $value)
                <tr>
                    <td><img src="{{$value->user->link_image}}"></td>
                    <td>{{$value->user->name}}</td>
                    <td>{{$value->user->profession->name}}</td>
                    <td>{{$value->salary}}</td>
                    <td>{{$value->bonus}}</td>
                </tr>
            @endforeach
        @endif
        </tbody>
    </table>
@endsection
