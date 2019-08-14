<?php  

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

use App\Book;
use App\Category;
use Image;
use File;
class Productdata extends Controller
{

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
}
