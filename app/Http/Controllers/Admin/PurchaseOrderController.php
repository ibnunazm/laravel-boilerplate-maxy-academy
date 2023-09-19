<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\PurchaseOrderLine;
use Validator;
use \Datetime;

use Illuminate\Http\Request;

class PurchaseOrderController extends Controller
{
    public function getProductList(){
        $products = Product::paginate(10);
        return view('admin.products.index', ["products" => $products]);
    }
    
    public function getProductShow(){
        return view('admin.products.index');
    }

    public function getProductEdit(){
        return view('admin.products.index');
    }

    public function getProductDestroy(){
        return view('admin.products.index');
    }

    public function getPurchaseOrderLineList(){
        $purchaseOrderLines = PurchaseOrderLine::paginate(10);
        return view('admin.purchaseOrderLines.index', ["purchaseOrderLines" => $purchaseOrderLines]);
    }

    public function getPurchaseOrderLineShow($id){
        
    }

    public function getPurchaseOrderLineEdit($id){
        
    }
    
    public function getPurchaseOrderLineDestroy($id){
        
    }

    public function getPurchaseOrderLineCreate(){
        $products = Product::All();
        return view('admin.purchaseOrderLines.create', ["products" => $products]);
    }
    
    public function postPurchaseOrderLineInsert(Request $request, PurchaseOrderLine $purchaseOrderLine){
        $validator = Validator::make($request->all(), [
            'product' => 'required',
            'qty' => 'required',
            'price' => 'required',
            'discount' => 'required',
        ]);

        if ($validator->fails()) return redirect()->back()->withErrors($validator->errors());

        $purchaseOrderLine->product_id = $request->post('product');
        $purchaseOrderLine->qty = $request->post('qty');
        $purchaseOrderLine->price = $request->post('price');
        $purchaseOrderLine->discount = $request->post('discount');
        $purchaseOrderLine->total = ((int)$request->post('qty') * (int)$request->post('price')) * (100 -(int)($request->post('discount')))/100;
        $purchaseOrderLine->created_at = new DateTime();
        $purchaseOrderLine->updated_at = new DateTime();
        $purchaseOrderLine->save();

        return redirect()->intended(route('admin.purchase.order.lines'));
    }
    
    public function postPurchaseOrderLineUpdate(){
        return view('admin.purchaseOrderLines.create');
    }
}