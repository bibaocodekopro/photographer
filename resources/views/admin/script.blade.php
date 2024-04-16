<script src="admin-template/assets/vendors/js/vendor.bundle.base.js"></script>
<!-- endinject -->
<!-- Plugin js for this page -->
<script src="admin-template/assets/vendors/chart.js/Chart.min.js"></script>
<script src="admin-template/assets/vendors/progressbar.js/progressbar.min.js"></script>
<script src="admin-template/assets/vendors/jvectormap/jquery-jvectormap.min.js"></script>
<script src="admin-template/assets/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="admin-template/assets/vendors/owl-carousel-2/owl.carousel.min.js"></script>
<!-- End plugin js for this page -->
<!-- inject:js -->
<script src="admin-template/assets/js/off-canvas.js"></script>
<script src="admin-template/assets/js/hoverable-collapse.js"></script>
<script src="admin-template/assets/js/misc.js"></script>
<script src="admin-template/assets/js/settings.js"></script>
<script src="admin-template/assets/js/todolist.js"></script>
<!-- endinject -->
<!-- Custom js for this page -->
<script src="admin-template/assets/js/dashboard.js"></script>
{{-- date picker --}}
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script>
    $(function() {
        $("#datepicker").datepicker();
    });
</script>
{{-- date picker --}}
<script>
    document.getElementById('fileInput').addEventListener('change', function(event) {
    const files = event.target.files;
    for (let i = 0; i < files.length; i++) {
        const file = files[i];
    }
});
</script>
