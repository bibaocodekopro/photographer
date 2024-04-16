<!DOCTYPE html>
<html lang="en">

<head>
   
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Corona Admin</title>
    @include('admin.css')
</head>

<body>
    <div class="container-scroller">
        <!-- partial:partials/_sidebar.html -->
        @include('admin.sidebar')
        <!-- partial -->
        <div class="container-fluid page-body-wrapper">
            <!-- partial:partials/_navbar.html -->
            @include('admin.navbar')
            <!-- partial -->
            <div class="main-panel">
                <div class="col-12 grid-margin stretch-card">
                    <div class="card">
                      <div class="card-body">
                        @if (session()->has('message'))
                          <div class="alert alert-success">
                            {{session()->get('message')}}
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
                          </div>
                        @endif
                        <h2 class="card-title text-center">CREATE NEW CATEGORY</h2>
                        <form class="forms-sample" action="{{url('admin/add_category')}}" method="POST">
                          @csrf
                          <div class="form-group">
                            <label for="Name">Name of Category</label>
                            <input type="text" class="form-control" id="name" name='name' placeholder="Name">
                          </div>
                          <div class="form-group">
                            <label for="description">Decription</label>
                            <textarea class="form-control" name='description' id="description" rows="4"
                            placeholder="Description..."></textarea>
                          </div>        
                            <div class="form-group">
                              <label for="Image">Image</label>
                              <input type="file" name="image" class="form-control">
                            </div>
                          <button type="submit" class="btn btn-primary mr-2">Submit</button>
                          <button class="btn btn-dark">Cancel</button>
                        </form>
                      </div>
                    </div>
                  </div>
                <!-- content-wrapper ends -->
                <!-- partial:partials/_footer.html -->
            
                <!-- partial -->
            </div>
            <!-- main-panel ends -->
        </div>
        <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    @include('admin.script')
    <!-- End custom js for this page -->
</body>

</html>
