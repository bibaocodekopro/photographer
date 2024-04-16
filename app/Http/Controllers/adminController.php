<?php

namespace App\Http\Controllers;

use App\Models\category;
use Illuminate\Http\Request;

class adminController extends Controller
{
    public function index(){
        return view('admin.dashboard');
    }

    public function view_product(){
        return view('admin.product.product');
    }
    
    public function view_add_product(){
        return view('admin.product.addproduct');
    }

    public function view_category(){
        $data = category::all();
        return view('admin.category.category',compact('data'));
    }

    public function view_add_category(){
        return view('admin.category.addCategory');
    }

   public function add_category(Request $request){
        $data = new category;
        $data->name = $request->name;
        $data->description=$request->description;
        $data->image=$request->image;
        $data->save();
        return redirect()->back()->with('message','Create category successfull!');
   }
   public function delete_category($id){
        $data = category::find($id);
        $data->delete();
        return redirect()->back()->with('message','Delete item successfull!');
   }
}
