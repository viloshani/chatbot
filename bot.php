<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Bank Chatbot</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
    <div class="wrapper">
        <div class="title">ABC Bank Chatbot</div>
        <div class="form">
            <div class="bot-inbox inbox">
                <div class="icon">
                    <i class="fas fa-user"></i>
                </div>
                <div class="msg-header">
                    <p>Hello there, how can I help you?</p>
                </div>
            </div>
        </div>
        <div class="typing-field">
            <div class="input-data">
                <input id="data" type="text" placeholder="Type something here.." required>
                <button id="send-btn">Send</button>
            </div>
        </div>
    </div>

    <script>

        function optionClick(value){
            $("#data").val(value);
            $('#send-btn').click();
        }

        $(document).ready(function(){
            $('#data').keypress(function(event) {
                if (event.which === 13) {
                    $('#send-btn').click();
                }
            });

            $("#send-btn").on("click", function(){
                $value = $("#data").val();
                $msg = '<div class="user-inbox inbox"><div class="msg-header"><p>'+ $value +'</p></div></div>';
                $(".form").append($msg);
                $("#data").val('');
                
                // start ajax code
                $.ajax({
                    url: 'message.php',
                    type: 'POST',
                    data: 'text='+$value,
                    success: function(result){
                        let data = JSON.parse(result);
                        let reply_html = "";
                        let options_html = "";

                        //reply
                        data.forEach(replyMsg => {
                            reply_html = replyMsg['reply'];

                            //options
                            replyMsg.options.forEach(optionItem => {
                                options_html += '<p class="options" onClick="optionClick('+ optionItem['id'] +')">' + optionItem['id'] + ': '+optionItem['option'] +'</p>';
                            });   
                        });
                        $replay = '<div class="bot-inbox inbox"><div class="icon"><i class="fas fa-user"></i></div><div class="msg-header"><p>'+ reply_html +'</p>'+ options_html +'</div></div>';

                        $(".form").append($replay);
                        $(".form").scrollTop($(".form")[0].scrollHeight);
                    }
                });
            });
        });
    </script>
    
</body>
</html>