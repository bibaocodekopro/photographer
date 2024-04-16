<!DOCTYPE html>
<html lang="en">

<head>
    <base href="/public">
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
                <div class="card">
                    <div class="card-body">
                      <h3 class="card-title">Add product</h3>
                      <form class="forms-sample">
                        <div class="form-group d-flex">
                            <div class=" w-50 pr-5">
                                <label for="exampleInputName1">Name product</label>
                                <input type="text" class="form-control" id="exampleInputName1" placeholder="Name product">
                            </div>
                            <div class="w-50">
                                <label for="exampleInputName1">Fullname Customer</label>
                                <input type="text" class="form-control" id="exampleInputName1" placeholder="fullname customer">
                            </div>
                           
                        </div>
                        <div class="form-group">
                            <label for="exampleTextarea1">Description</label>
                            <textarea class="form-control" id="exampleTextarea1" rows="4" placeholder="description"></textarea>
                          </div>
                          <div class="form-group d-flex">
                            {{-- <div class="w-10 pr-3">
                                <label for="exampleInputName1">Time </label>
                                <input type="time" class="form-control" value=""/>
                              </div> --}}
                             <div class="w-10 pr-3">
                                <label for="exampleInputName1">Time </label>
                                <input type="text" id="datepicker"class="form-control" placeholder="Pick time"></p>
                              </div>
                              <div class="w-100 ">
                                <label for="exampleInputName1">Location</label>
                                <input type="text" class="form-control" id="exampleInputName1" placeholder="Location">
                              </div>
                          </div>
                         
                          <div class="form-group">
                            <label>File upload</label>
                            <input type="file" name="image"id="fileInput" class="form-control"multiple>
                          </div>   
                        <button type="submit" class="btn btn-primary mr-2">Submit</button>
                        <button class="btn btn-dark">Cancel</button>
                      </form>
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
