@extends('head')

@section('content')
    <header style="text-align: center; width: 100%">
        За какой месяц требуется отчет?
    </header><br>
    <form>
        <div style="display: flex; flex-direction: column; width: 40%; margin: 0 auto">
            <input type="text" id="datepicker">
            <input type="submit" value="Смотреть" style="width: 20%; margin: 20px auto;">
        </div>
    </form>
    <div class="table">
    </div>
@endsection
