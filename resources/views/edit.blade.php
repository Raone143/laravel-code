@extends('layout')

@section('content')
<style>
  .uper {
    margin-top: 40px;
  }
</style>
<div class="card uper">
  <div class="card-header">
    Edit Book
  </div>
  <div class="card-body">
    @if ($errors->any())
      <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
              <li>{{ $error }}</li>
            @endforeach
        </ul>
      </div><br />
    @endif
      <form action="{{ route('books.update', $book->id) }}" method="post" enctype="multipart/form-data">
      
          <div class="form-group">
         
          @csrf
          @method('PUT')
            
          <div class="form-group">
              <img src="{{URL::to('/')}}/thumbnail/{{$book->product_image1}}" class="img-thumbnail" width="75" >
          </div>
    
              <label for="name">Book Name:</label>
              <input type="text" class="form-control" name="book_name" value="{{$book->book_name}}"/>
          </div>
          <div class="form-group">
              <label for="price">Book ISBN Number :</label>
              <input type="text" class="form-control" name="isbn_no" value="{{$book->isbn_no}}"/>
          </div>
          <div class="form-group">
              <label for="quantity">Book Price :</label>
              <input type="text" class="form-control" name="book_price" value="{{$book->book_price}}"/>
          </div>
           <div class="form-group">
              <label for="imageupload">Image Upload</label>
              <input type="file" class="form-control" name="product_image1"/>
          </div>
          <button type="submit" class="btn btn-primary">Update Book</button>
      </form>
  </div>
</div>
@endsection