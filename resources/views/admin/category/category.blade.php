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
                <div class="row" style="w-100">
                    <div class="card-body w-100">
                        @if (session()->has('message'))
                            <div class="alert alert-success">
                            {{session()->get('message')}}
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
                            </div>
                        @endif
                        <h2 class="card-title text-center">CATEGORY LIST</h2>
                        <div class="table-responsive w-100">
                            <table class="table w-100">
                                <thead class="w-100">
                                    <tr>
                                        <th style="width:5%">STT</th>
                                        <th  style="width:10%">Name</th>
                                        <th  style="width:50%">Description</th>
                                        <th  style="width:15%">Image</th>
                                        <th  style="width:25%">Options</th>
                                    </tr>
                                </thead>
                                <tbody style="w-100">
                                    @foreach ($data as $data)
                                    <tr>
                                        <td style="width:5%">{{$data->id}}</td>
                                        <td  style="width:10%">{{$data->name}}</td>
                                        <td  style="width:50%">{{$data->description}}</td>
                                        <td  style="width:15%">{{$data->image}}</td>
                                        <td  style="width:20%"><a  href=""class="btn btn-inverse-warning">Edit</a>
                                            <a onclick="return confirm('Are you sure to delete this item?')" href="{{url('admin/delete_category',$data->id)}}"class="btn btn-inverse-danger">Delete</a></td>       
                                    </tr>
                                    @endforeach                                                                      
                                </tbody>
                            </table>
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
