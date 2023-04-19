<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\Category;
use App\Models\Comment;
use App\Models\Like;
use App\Models\PaymentCategory;
use App\Models\Post;
use App\Models\Purchase;
use App\Models\Type;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class UserPostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $post = Post::where('user_id', Auth::user()->id)->get();
        return view('post.index', compact('post'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $category = Category::all();
        $payment = PaymentCategory::all();
        $type = Type::all();
        return view('post.create', compact('category', 'payment', 'type'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    // public function store(Request $request)
    // {
    //     $post = new Post();
    //     $post->title = $request->title;
    //     $post->description = $request->description;
    //     $post->category_id = $request->category_id;
    //     $post->type_id = $request->type_id;
    //     $post->payment_category_id = $request->payment_category_id;
    //     $post->price = $request->price;
    //     $post->tags = $request->tags;
    //     $post->max_age = $request->max_age;
    //     $post->user_id = Auth::user()->id;
    //     uploadImage($request,$post,'image');
    //     $post->save();
    //     return redirect()->route('article.index');
    // }
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'category_id' => 'required|integer',
            'type_id' => 'required|integer',
            'payment_category_id' => 'required|integer',
            'tags' => 'nullable|string',
            'max_age' => 'required|integer|min:0',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        $post = new Post();
        $post->title = $request->title;
        $post->description = $request->description;
        $post->category_id = $request->category_id;
        $post->type_id = $request->type_id;
        $post->payment_category_id = $request->payment_category_id;
        $post->price = $request->price;
        $post->tags = $request->tags;
        $post->max_age = $request->max_age;
        $post->user_id = Auth::user()->id;
        uploadImage($request, $post, 'image');
        $post->save();
        return redirect()->route('article.index');
    }


   /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $article = Post::find($id);
        return view('post.show', compact('article'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

        $article = Post::find($id);
        $category = Category::all();
        $payment = PaymentCategory::all();
        $type = Type::all();
        return view('post.edit', compact('category', 'payment', 'type', 'article'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    // public function update(Request $request, $id)
    // {
    //     $post =  Post::find($id);
    //     $post->title = $request->title;
    //     $post->description = $request->description;
    //     $post->category_id = $request->category_id;
    //     $post->type_id = $request->type_id;
    //     $post->payment_category_id = $request->payment_category_id;
    //     $post->price = $request->price;
    //     $post->tags = $request->tags;
    //     $post->max_age = $request->max_age;
    //     $post->user_id = Auth::user()->id;
    //     uploadImage($request,$post,'image');
    //     $post->update();
    //     return redirect()->route('article.index');
    // }

    public function update(Request $request, $id)
    {
        $rules = [
            'title' => 'required|max:255',
            'description' => 'nullable',
            'category_id' => 'required',
            'tags' => 'nullable',
            'payment_category_id' => 'required',
            'price' => 'nullable|numeric',
            'type_id' => 'required',
            'max_age' => 'required',
            'image' => 'nullable|image|max:2048',
        ];
    
        $messages = [
            'title.required' => 'The title field is required.',
            'title.max' => 'The title may not be greater than :max characters.',
            'category_id.required' => 'The category field is required.',
            'payment_category_id.required' => 'The payment category field is required.',
            'type_id.required' => 'The type field is required.',
            'max_age.required' => 'The max age field is required.',
            'image.max' => 'The image may not be greater than :max kilobytes.',
            'image.image' => 'The file must be an image.',
        ];
    
        $validator = Validator::make($request->all(), $rules, $messages);
    
        if ($validator->fails()) {
            return redirect()->back()
                ->withErrors($validator)
                ->withInput();
        }

        $post =  Post::find($id);
        $post->title = $request->title;
        $post->description = $request->description;
        $post->category_id = $request->category_id;
        $post->type_id = $request->type_id;
        $post->payment_category_id = $request->payment_category_id;
        $post->price = $request->price;
        $post->tags = $request->tags;
        $post->max_age = $request->max_age;
        $post->user_id = Auth::user()->id;
        uploadImage($request, $post, 'image');
        $post->update();
        return redirect()->route('article.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    // public function destroy($id)
    // {
    //     $post = Post::find($id);
    //     $post->delete();
    //     return redirect()->back()->with('success','Post deleted successfully');
    // }

    public function destroy($id)
{
    // Find the post with the given ID
        $post = Post::find($id);

        $cart = Cart::where('post_id',$id)->get();
        foreach($cart as $cart){
            $cart->delete();
        }

        $comments = Comment::where('post_id',$id)->get();
        foreach($comments as $comments){
            $comments->delete();
        }

        $likes = Like::where('post_id',$id)->get();
        foreach($likes as $likes){
            $likes->delete();
        }

        $purchase = Purchase::where('post_id',$id)->get();
        foreach($purchase as $purchase){
            $purchase->delete();
        }

        // Delete the post itself
        $post->delete();

    
    return redirect()->back()->with('success','Post deleted successfully');
}

}
