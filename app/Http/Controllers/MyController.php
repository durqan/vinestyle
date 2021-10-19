<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\payments;

class MyController extends Controller
{
    public function index()
    {
        return view('index');
    }

    public function payments_for_month()
    {

        $year = date('Y', strtotime($_GET['date']));

        $month = date('m', strtotime($_GET['date']));

        $day_from = '01';

        $day_to = cal_days_in_month(CAL_GREGORIAN, $month, $year);

        $payments = payments::select('salary', 'bonus', 'user_id')
            ->whereBetween('date', ["$year-$month-$day_from", "$year-$month-$day_to"])
            ->with('user', 'user.profession')->get();

        return view('table', ['payments' => $payments]);
    }
}
