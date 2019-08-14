<?php  

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

use App\Book;
use App\Category;
use Image;
use File;
class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function category()
    {
        $books = Book::all();
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
    
}

        