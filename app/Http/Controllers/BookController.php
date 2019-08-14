<?php  

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

use App\Book;
use App\Category;
use Image;
use File;
class BookController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $books = Book::paginate(2);
        
        $data = $books->toArray();
        if (!empty($data)) {
            $response = [
                'success' => true,
                'data' => $data,
                'message' => 'Products retrieved successfully.'
            ];
            return response()->json($response, 200);
            
        }
        
        else {
            $response = [
                
                'message' => 'Table is Empty.Insert Data then try.'
                ];
                return response()->json($response, 200);
        }
       

       
        

        

       // return view('index', compact('books'));
    }
    public function displayproduct()
    {
        $categoryname = Book::all();
        $data = $categoryname->toArray();
        if (!empty($data)) {
            $response = [
                'success' => true,
                'data' => $data,
                'message' => 'displayproduct retrieved successfully.'
            ];
            return response()->json($response, 200);
            
        }
        
        else {
            $response = [
                
                'message' => 'Table is Empty.Insert Data then try.'
                ];
                return response()->json($response, 200);
        }
       

       
        

        

       // return view('index', compact('books'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) 
    {
        $validatedData = $request->all();
        $validator = Validator::make($validatedData, [
            'product_name' => 'required|max:255',
            'product_desc' => 'required|max:1000',
            'book_price' => 'required|numeric',
            'product_image1' => 'required|image:jpeg,png,jpg,gif,svg|max:10000',
        ]);

        
        if ($validator->fails()) {
            $response = [
                'success' => false,
                'data' => 'Validation Error.',
                'message' => $validator->errors()
            ];
            return response()->json($response, 404);
        }

        if  ($request->hasFile('product_image1')) {
        
            $originalImage= $request->file('product_image1');
            $thumbnailImage = Image::make($originalImage);
            $thumbnailPath = public_path().'/thumbnail/';
            $originalPath = public_path().'/images/';
            $thumbnailImage->save($originalPath.time().$originalImage->getClientOriginalName());
            $thumbnailImage->resize(150,150);
            $thumbnailImage->save($thumbnailPath.time().$originalImage->getClientOriginalName()); 
            $book = new Book;
            $book->product_name = $request->product_name;
            $book->category_id = 0;
            $book->product_desc = $request->product_desc;
            $book->book_price = $request->book_price;
            
            $book->product_image1=time().$originalImage->getClientOriginalName();
            
            $data = $book->toArray();
            $response = [
                'success' => true,
                'data' => $data,
                'message' => 'Book stored successfully.'
            ];
            $book->save();


            }
            return response()->json($response, 201);
            //return redirect('/books')->with('success', 'Book is successfully saved');
        
        }

        /**
         * Display the specified resource.
         *
         * @param  int  $id
         * @return \Illuminate\Http\Response
         */
    public function show($id)
    {
            //
    }

        /**
         * Show the form for editing the specified resource.
         *
         * @param  int  $id
         * @return \Illuminate\Http\Response
         */
        public function edit($id)
        {
    
                
            $book = Book::findOrFail($id);
            $data = $book->toArray();
            if (is_null($book)) {
                $response = [
                'success' => false,
                'data' => 'Empty',
                'message' => 'Book not found.'
                ];
                return response()->json($response, 404);

            }


            $response = [
                'success' => true,
                'data' => $data,
                'message' => 'Book show Data successfully.'
            ];

            return response()->json($response, 200);
        
            
        // return view('edit', compact('book'));

        }
        public function productdetails($id)
        {
    
                
            $book = Book::findOrFail($id);
            $data = $book->toArray();
            if (is_null($book)) {
                $response = [
                'success' => false,
                'data' => 'Empty',
                'message' => 'Book not found.'
                ];
                return response()->json($response, 404);

            }


            $response = [
                'success' => true,
                'data' => $data,
                'message' => 'product details showed successfully.'
            ];

            return response()->json($response, 200);
        
            
        // return view('edit', compact('book'));

        }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        

        $validatedData = $request->all();
        $validatedData = $request->except('_token','_method');
        $validator = Validator::make($validatedData, [
            'product_name' => 'required|max:255',
            'product_desc' => 'required|max:1000',
            'book_price' => 'required|numeric',
            'product_image1' => 'required|image:jpeg,png,jpg,gif,svg|max:10000',
        ]);

        
        if ($validator->fails()) {
            $response = [
                'success' => false,
                'data' => 'Validation Error.',
                'message' => $validator->errors()
            ];
            return response()->json($response, 404);
        }
        
        $book = Book::findOrFail($id);
        
    
        if($request->hasFile('product_image1'))
        {
            
            $originalImage= $request->file('product_image1');
            $thumbnailImage = Image::make($originalImage);
            $thumbnailPath = public_path().'/thumbnail/';
            $originalPath = public_path().'/images/';
            $thumbnailImage->save($originalPath.time().$originalImage->getClientOriginalName());
            $thumbnailImage->resize(150,150);
            $thumbnailImage->save($thumbnailPath.time().$originalImage->getClientOriginalName()); 
            $book = new Book;
            $book->product_name = $request->product_name;
            $book->product_desc = $request->product_desc;
            $book->book_price = $request->book_price;
            $filepath = time().$originalImage->getClientOriginalName();
            $book->product_image1= $filepath;
            // $usersImage = public_path("thumbnail/".$book->product_image1);
            // if (File::exists($usersImage)) { // unlink or remove previous image from folder
            //     unlink($usersImage);
            // }
           
            BOOK::whereId($id)->update($validatedData);
            BOOK::whereId($id)->update(['product_image1'=>$filepath]);
            
            
        }
            
            
            
            // $book = Book::findOrFail($id);
            // $book=BOOK::whereId($id)->update(['product_image1'=>$filepath]);
        
            
            
        
        
            
            $data = $book->toArray();
            

            $response = [
                'success' => true,
                'data' => $data,
                'message' => 'Book Updated successfully.'
            ];
            
            return response()->json($response, 200);
            
            
            // return redirect('/books')->with('success', 'Book is successfully updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $book = Book::findOrFail($id);
        // if (is_null($book)) {
        //     $response = [
        //     'success' => false,
        //     'data' => 'Empty',
        //     'message' => 'Book not found.'
        //     ];
        //     return response()->json($response, 404);

        // }
            
        $usersImage = public_path("thumbnail/".$book->product_image1);
        if (File::exists($usersImage)) { // unlink or remove previous image from folder
            unlink($usersImage);
        }
        $book->delete();
        $data = $book->toArray();
        

        $response = [
            'success' => true,
            'data' => $data,
            'message' => 'Book deleted successfully.'
        ];

        return response()->json($response, 200);

        //return redirect('/books')->with('success', 'Book is successfully deleted');
    }
}

        