<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use Image;

class CategoryController extends Controller
{
    public function Allcategory(){
        $categorys = category::latest()->get();
        return view('backend.category.category_all',compact('categorys'));
    } // End Method 

    public function Addcategory(){
         return view('backend.category.category_add');
    } // End Method 

    public function Storecategory(Request $request){

        $image = $request->file('category_image');
        $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
        Image::make($image)->resize(300,300)->save('upload/category/'.$name_gen);
        $save_url = 'upload/category/'.$name_gen;

        category::insert([
            'category_name' => $request->category_name,
            'category_slug' => strtolower(str_replace(' ', '-',$request->category_name)),
            'category_image' => $save_url, 
        ]);

       $notification = array(
            'message' => 'category Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.category')->with($notification); 

    }// End Method 

    public function Editcategory($id){
        $category = category::findOrFail($id);
        return view('backend.category.category_edit',compact('category'));
    }// End Method 

    public function Updatecategory(Request $request){

        $category_id = $request->id;
        $old_img = $request->old_image;

        if ($request->file('category_image')) {

        $image = $request->file('category_image');
        $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
        Image::make($image)->resize(300,300)->save('upload/category/'.$name_gen);
        $save_url = 'upload/category/'.$name_gen;

        if (file_exists($old_img)) {
           unlink($old_img);
        }

        category::findOrFail($category_id)->update([
            'category_name' => $request->category_name,
            'category_slug' => strtolower(str_replace(' ', '-',$request->category_name)),
            'category_image' => $save_url, 
        ]);

       $notification = array(
            'message' => 'category Updated with image Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.category')->with($notification); 

        } else {

             category::findOrFail($category_id)->update([
            'category_name' => $request->category_name,
            'category_slug' => strtolower(str_replace(' ', '-',$request->category_name)), 
        ]);

       $notification = array(
            'message' => 'category Updated without image Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.category')->with($notification); 

        } // end else

    }// End Method 

    public function Deletecategory($id){

        $category = category::findOrFail($id);
        $img = $category->category_image;
        unlink($img ); 

        category::findOrFail($id)->delete();

        $notification = array(
            'message' => 'category Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification); 

    }// End Method



}
