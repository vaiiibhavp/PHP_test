<?php 
    require_once '../database/db_conn.php';
if($_POST){
    $address_line_1 = $address_line_2 = $city = $state = $zip_code ="";
    
    if(isset($_REQUEST['address_line_1'])){
        $address_line_1 = $_REQUEST['address_line_1'];
    }

    if(isset($_REQUEST['address_line_2'])){
        $address_line_2 = $_REQUEST['address_line_2'];
    }
    if(isset($_REQUEST['city'])){
        $city = $_REQUEST['city'];
    }
    if(isset($_REQUEST['state'])){
        $state = $_REQUEST['state'];
    }
    if(isset($_REQUEST['zip_code'])){
        $zip_code = $_REQUEST['zip_code'];
    }
   //
   if($address_line_1!='' || $address_line_2!='' || $city!='' || $state!='' ||  $zip_code!="" ){
        $request_doc_template ='<AddressValidateRequest USERID="408PROME4265">		
                                        <Address>
                                            <Address1>'.$address_line_1.'</Address1>
                                            <Address2>'.$address_line_2.'</Address2>
                                            <City>San Francisco</City>
                                            <State>California</State>
                                            <Zip5>'.$zip_code.'</Zip5>
                                            <Zip4></Zip4>
                                        </Address>
                                    </AddressValidateRequest>';
            // header('Content-Type: text/plain');
            // echo $request_doc_template; 
            
            //prepare xml doc for query string
            $doc_string = preg_replace('/[\t\n]/','',$request_doc_template);
            $doc_string =urlencode($request_doc_template);

            $url =  "http://production.shippingapis.com/ShippingAPI.dll?API=Verify&XML=".$doc_string;

            //perform the get
            $response = file_get_contents($url);
            $xml = simplexml_load_string($response) or die("Error: Cannot create Object");
            $usps_arr = json_decode(json_encode($xml), TRUE); 

            $data = [
                'original'=> [
                    'address1'=> $address_line_1,
                    'address2'=> $address_line_2,
                    'city'=> $city,
                    'state'=> $state,
                    'pin_code'=> $zip_code,
                ],
                'usps'=> [
                    'address1'=> $usps_arr['Address']['Address1'],
                    'address2'=> $usps_arr['Address']['Address2'],
                    'city'=> $usps_arr['Address']['City'],
                    'state'=> $usps_arr['Address']['State'],
                    'pin_code'=> $usps_arr['Address']['Zip5'],
                ]
            ];

            header('Content-type: application/json');
            echo json_encode( $data );
   }

   if(isset($_POST['options'])){
        
        $user_address_line_1 = $_POST['original']['address_line_1'];
        $user_address_line_2 = $_POST['original']['address_line_2'];
        $user_city = $_POST['original']['city'];
        $user_state = $_POST['original']['state'];
        $user_zip_code = $_POST['original']['zip_code'];

        $usps_std_address_line_1 = $_POST['uspsStd']['address_line_1'];
        $usps_std_address_line_2 = $_POST['uspsStd']['address_line_2'];
        $usps_std_city = $_POST['uspsStd']['city'];
        $usps_std_state = $_POST['uspsStd']['state'];
        $usps_std_zip_code = $_POST['uspsStd']['zip_code'];
        $result = $_POST;
        if($_POST['options'] == 'original'){
            $sql = "INSERT INTO address_validator (address_line_1, address_line_2, city_name, state_name, zip_code)
                    VALUES  ('$user_address_line_1 ', '$user_address_line_2', '$user_city', '$user_state', '$user_zip_code');";
        }else{
            $sql = "INSERT INTO address_validator (address_line_1, address_line_2, city_name, state_name, zip_code)
                    VALUES  ('$usps_std_address_line_1 ', '$usps_std_address_line_2', '$usps_std_city', '$usps_std_state', '$usps_std_zip_code');";
        }
        if($conn->query($sql)){
            header('Content-type: application/json');
            echo json_encode($result);
        }else{
            header('Content-type: application/json');
            echo json_encode(['success' => false,'data'=>$result,'message' => 'Address Not Saved Successfully!']);
        }
        
       
   }
}
    

    

