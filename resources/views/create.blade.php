@extends('layout')

@section('content')
<style>
  .uper {
    margin-top: 40px;
  }
</style>
<div class="card uper">
  <div class="card-header">
    Add Book
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
      <form method="post" action="{{ route('books.store') }}" enctype="multipart/form-data">
          <div class="form-group">
              @csrf
              <label for="name">Book Name:</label>
              <input type="text" class="form-control" name="book_name"/>
          </div>
          <div class="form-group">
              <label for="price">Book ISBN Number :</label>
              <input type="text" class="form-control" name="isbn_no"/>
          </div>
          <div class="form-group">
              <label for="quantity">Book Price :</label>
              <input type="text" class="form-control" name="book_price"/>
          </div>
          <div class="form-group">
              <label for="imageupload">Image Upload</label>
              <input type="file" class="form-control" name="product_image1"/>
          </div>
          <button type="submit" class="btn btn-primary">Create Book</button>
      </form>
  </div>
</div>
@endsection