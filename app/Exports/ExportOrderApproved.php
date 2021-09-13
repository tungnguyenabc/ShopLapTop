<?php

namespace App\Exports;

use App\Models\Bill;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;


class ExportOrderApproved implements FromCollection, WithHeadings, ShouldAutoSize
{
    /**
    * @return \Illuminate\Support\Collection
    */

    public function collection()
    {
        return Bill::join('customer', 'customer.id', '=', 'bills.id_customer')->where('status_bill',1)->orderby('id_bill', 'desc')->get();
    }
    public function headings() :array {
    	return ["STTNoImport", "id_customer", "date_order", "order_code", "total", "payment", "status_bill", "STTNoImport", "name", "gender", "email", "address", "phone_number", "note"];
    }
}
