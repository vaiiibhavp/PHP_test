<!DOCTYPE html>
<html lang="en">
<?php 
   require_once 'database/db_conn.php';
?>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>Web Form</title>
    <link rel="canonical" href="" />
    <link rel="shortcut icon" href="assets/images/favicon.ico">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
</head>

<body class="landing-body">
    <div class="wrapper">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col col-lg-6 col-12">
                    <div class="card mb-4">
                        <div class="card-body">
                            <h3 class="h4 mb-2">Address Validator</h3>
                            <p class="mb-4">Validate / Standardizes addresses using USPS</p>
                            <form id="register" method="POST">
                                <div class="mb-3">
                                    <label class="form-label">Address Line 1</label>
                                    <input type="text" class="form-control error" name="address_line_1">
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" >Address Line 2</label>
                                    <input type="text" class="form-control"  name="address_line_2">
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">City</label>
                                    <select class="select2 form-control select2-hidden-accessible"
                                        data-select2-placeholder="Select city" data-select2-id="select2-data-7-809c"
                                        tabindex="-1" aria-hidden="true" name="city">
                                        <option value="">Select City</option>
                                        <?php 
                                            $sql = "select id, city_name from city";
                                            $result = $conn->query($sql);
                                            if(mysqli_num_rows($result) > 0){
                                                    foreach($result as $city){?>
                                                            <option value="<?php echo $city['city_name']; ?>"><?php echo $city['city_name']; ?></option>
                                            <?php } }?>
                                    </select>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">State</label>
                                    <select class="select2 form-control select2-hidden-accessible"
                                        data-select2-placeholder="Select state" data-select2-id="select2-data-4-680y"
                                        tabindex="-1" aria-hidden="true" name="state">
                                        <option data-select2-id="select2-data-6-cshs">Select State</option>
                                        <?php
                                            $sql1 = "select id, state_name from states";
                                            $states = $conn->query($sql1);
                                            if(mysqli_num_rows($states) > 0){ 
                                                foreach($states as $st){
                                                ?>
                                                <option value="<?php echo $st['state_name']; ?>"><?php echo $st['state_name']; ?></option>
                                        <?php }}?>
                                    </select>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">ZIP code</label>
                                    <input type="text" class="form-control" name="zip_code">
                                </div>

                                <div class="mt-4 text-center">
                                    <!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                         data-bs-target="#saveAddressModal">VALIDATE</button> -->
                                    <button type="submit" class="btn btn-primary" data-bs-toggle="modal" id="validate" >VALIDATE</button>
                                <div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- Save Address Modal -->
    <div class="modal fade" id="saveAddressModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        aria-labelledby="addressLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title h5" id="addressLabel">Save Address</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form method="post" id="modal_address">
                <div class="modal-body">
                    <div class="position-relative">
                            <div class="mb-3">
                                <p class="mb-3">Which address format do you want to save?</p>
                                <div class="address_opt">
                                    <input type="radio" class="btn-check original" name="options" id="originalRadio" value="original" autocomplete="off" checked>
                                    <label class="btn btn-primary" for="originalRadio">ORIGINAL</label>
                                    <input type="radio" class="btn-check usps" name="options" value="usps" id="standardRadio" autocomplete="off">
                                    <label class="btn btn-primary" for="standardRadio">STANDARDIZED (USPS)</label>
                                </div>

                            </div>
                            <div class="address_box p-3" id="original">
                                <p class="mb-3"><strong>Address Line 1 : </strong> <span id="original_add1"></span></p>
                                <p class="mb-3"><strong>Address Line 2 : </strong> <span id="original_add2"></span></p>
                                <p class="mb-3"><strong>City : </strong> <span id="original_city"></span></p>
                                <p class="mb-3"><strong>State : </strong> <span id="original_state"></span></p>
                                <p><strong>Zip Code : </strong> <span id="original_pin"></span></p>

                                <input type="hidden" name="original[address_line_1]" id="origin_add1" value=''>
                                <input type="hidden" name="original[address_line_2]" id="origin_add2" value=''>
                                <input type="hidden" name="original[city]" id="origin_city" value=''>
                                <input type="hidden" name="original[state]" id="origin_state" value=''>
                                <input type="hidden" name="original[zip_code]" id="origin_pin" value=''>
                            </div>
                            <div class="address_box p-3" id="usps" style="display:none;">
                                <p class="mb-3"><strong>Address Line 1 : </strong> <span id="usps_add1"></span></p>
                                <p class="mb-3"><strong>Address Line 2 : </strong> <span id="usps_add2"></span></p>
                                <p class="mb-3"><strong>City : </strong> <span id="usps_city"></span></p>
                                <p class="mb-3"><strong>State : </strong> <span id="usps_state"></span></p>
                                <p><strong>Zip Code : </strong> <span id="usps_pin"></span></p>

                                <input type="hidden" name="uspsStd[address_line_1]" id="uspsStd_add1" value=''>
                                <input type="hidden" name="uspsStd[address_line_2]" id="uspsStd_add2" value=''>
                                <input type="hidden" name="uspsStd[city]" id="uspsStd_city" value=''>
                                <input type="hidden" name="uspsStd[state]" id="uspsStd_state" value=''>
                                <input type="hidden" name="uspsStd[zip_code]" id="uspsStd_pin" value=''>
                            </div>

                            <div class="alert alert-success mt-4" id="alert" role="alert" style="display:none;">
                                Address saved successfully!
                            </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" id="finalSave">Save</button>
                </div>
                </form>
            </div>
        </div>
    </div>
    

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>

</body>

</html>

<script>
    $("#finalSave").click(function(){
        var formData = $('#modal_address').serialize();
        $.ajax({
            type: 'POST',
            url: 'api/insert_data.php',
            //url: 'db_conn.php',
            data: formData,
            success: function(data) {
                console.log(data);
                $("#alert").show();
            },
            error: function(error) {
                console.log(error);
            }
        });
    });
$(document).ready(function() {
    $('.original').on('click', function () {
        $("#original").show();
        $("#usps").hide();
    });

    $('.usps').on('click', function () {
        $("#original").hide();
        $("#usps").show();
    });
    $("#register").submit(function(e) { 
        e.preventDefault();
        $.ajax({
            type: 'POST',
            url: 'api/insert_data.php',
            //url: 'db_conn.php',
            data: $('#register').serialize(),
            success: function(result) {
                console.log(result);
                //value set to modal div
                $("#original_add1").html(result.original.address1);
                $("#original_add2").html(result.original.address2);
                $("#original_city").html(result.original.city);
                $("#original_state").html(result.original.state);
                $("#original_pin").html(result.original.pin_code);

                //value set to hidden fields
                $("#origin_add1").val(result.original.address1);
                $("#origin_add2").val(result.original.address2);
                $("#origin_city").val(result.original.city);
                $("#origin_state").val(result.original.state);
                $("#origin_pin").val(result.original.pin_code);

                //value set to modal div
                $("#usps_add1").html(result.usps.address1);
                $("#usps_add2").html(result.usps.address2);
                $("#usps_city").html(result.usps.city);
                $("#usps_state").html(result.usps.state);
                $("#usps_pin").html(result.usps.pin_code);

                //value set to hidden fields
                $("#uspsStd_add1").val(result.usps.address1);
                $("#uspsStd_add2").val(result.usps.address2);
                $("#uspsStd_city").val(result.usps.city);
                $("#uspsStd_state").val(result.usps.state);
                $("#uspsStd_pin").val(result.usps.pin_code);

                $('#saveAddressModal').modal('show');
                console.log("Signup was successful");
            },
            error: function() {
                console.log("USPS object not created");
            }
        });
    });
});


</script>