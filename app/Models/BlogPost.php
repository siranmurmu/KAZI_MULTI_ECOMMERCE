<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BlogPost extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function blogcategory(){ //BlogPost belongs to BlogCategory
        return $this->belongsTo(BlogCategory::class,'category_id','id');
    }

    //category_id from BlogPost
    //id from BlogCategory
}
