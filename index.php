<!DOCTYPE html>
<html lang="en">

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
                            <form action="" method="post">
                                <div class="mb-3">
                                    <label class="form-label">Address Line 1</label>
                                    <input type="text" class="form-control error">
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Address Line 2</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">City</label>
                                    <select class="select2 form-control select2-hidden-accessible"
                                        data-select2-placeholder="Select city" data-select2-id="select2-data-7-809c"
                                        tabindex="-1" aria-hidden="true">
                                        <option data-select2-id="select2-data-9-k35n"></option>
                                        <option value="b">Bangkok</option>
                                        <option value="d">Dubai</option>
                                        <option value="h">Hong Kong</option>
                                        <option value="k">Kuala Lumpur</option>
                                        <option value="l">London</option>
                                        <option value="n">New York City</option>
                                        <option value="m">Macau</option>
                                        <option value="p">Paris</option>
                                    </select>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">State</label>
                                    <select class="select2 form-control select2-hidden-accessible"
                                        data-select2-placeholder="Select state" data-select2-id="select2-data-4-680y"
                                        tabindex="-1" aria-hidden="true">
                                        <option data-select2-id="select2-data-6-cshs"></option>
                                        <option value="AL">Alabama</option>
                                        <option value="CA">California</option>
                                        <option value="DE">Delaware</option>
                                        <option value="FL">Florida</option>
                                        <option value="GA">Georgia</option>
                                        <option value="HI">Hawaii</option>
                                        <option value="ID">Idaho</option>
                                        <option value="KS">Kansas</option>
                                    </select>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">ZIP code</label>
                                    <input type="text" class="form-control">
                                </div>

                                <div class="mt-4 text-center">
                                    <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                        data-bs-target="#saveAddressModal">VALIDATE</button>
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
                <form action="" method="post">
                <div class="modal-body">
                    <div class="position-relative">
                        
                            <div class="mb-3">
                                <p class="mb-3">Which address format do you want to save?</p>
                                <div class="address_opt">
                                    <input type="radio" class="btn-check" name="options" id="originalRadio" autocomplete="off" checked>
                                    <label class="btn btn-primary" for="originalRadio">ORIGINAL</label>
                                    <input type="radio" class="btn-check" name="options" id="standardRadio" autocomplete="off">
                                    <label class="btn btn-primary" for="standardRadio">STANDARDIZED (USPS)</label>
                                </div>


                            </div>
                            <div class="address_box p-3">
                                <p class="mb-3"><strong>Address Line 1 : </strong> <span>185 Berry st</span></p>
                                <p class="mb-3"><strong>Address Line 2 : </strong> <span>STE 6100</span></p>
                                <p class="mb-3"><strong>City : </strong> <span>San Francisco</span></p>
                                <p class="mb-3"><strong>State : </strong> <span>CA</span></p>
                                <p><strong>Zip Code : </strong> <span>94107</span></p>

                            </div>

                            <div class="alert alert-success mt-4" role="alert">
                                Address saved successfully!
                            </div>
                        
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
                </form>
            </div>
        </div>
    </div>




    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>

</body>

</html>