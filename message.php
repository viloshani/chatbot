<?php
// connecting to database
$conn = mysqli_connect("localhost", "root", "", "abc_chatbot") or die("Database Error");
$getMesg = mysqli_real_escape_string($conn, $_POST['text']);

// $get_reply = "SELECT id,reply FROM chatbot WHERE queries = '$getMesg' OR queries LIKE '%$getMesg%'";
$get_reply = "SELECT id,reply FROM chatbot WHERE queries = '$getMesg' UNION ALL SELECT id,reply FROM chatbot WHERE queries LIKE '%$getMesg%' AND NOT EXISTS (SELECT 1 FROM chatbot c WHERE c.queries = '$getMesg') limit 1";
$run_reply_query = mysqli_query($conn, $get_reply) or die("Error");

if(mysqli_num_rows($run_reply_query) > 0){
    while ($reply_data = mysqli_fetch_assoc($run_reply_query)) {
        $reply_id = $reply_data['id'];
        $reply_msg = $reply_data['reply'];
        
        //options
        $get_options = "SELECT id, option FROM chatbot_options WHERE chatbot_id = $reply_id";
        $run_option_query = mysqli_query($conn, $get_options) or die("Error");

        $options = [];
        while ($option_data = mysqli_fetch_assoc($run_option_query)) {
            $options[] = $option_data;
        }

        $response[] = [
            'id' => $reply_id,
            'reply' => $reply_msg,
            'options' => $options
        ];
    }
    echo json_encode($response, JSON_PRETTY_PRINT);
}else{
    $response[] = [
            'id' => 0,
            'reply' => "Please contact us for more details, please visit www.abc.net, cs@abc.com, 0112345678. Have a great day! :)",
            'options' => []
        ];
    echo json_encode($response, JSON_PRETTY_PRINT);
}


?>