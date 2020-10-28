





(function () {


    var Message;
    Message = function (arg) {
        this.text = arg.text, this.message_side = arg.message_side;
        this.draw = function (_this) {
            return function () {
                var $message;
                $message = $($('.message_template').clone().html());
                $message.addClass(_this.message_side).find('.text').html(_this.text);
                $('.messages').append($message);
                return setTimeout(function () {
                    return $message.addClass('appeared');
                }, 0);
            };
        }(this);
        return this;
    };
    $(function () {
        var getMessageText, message_side, sendMessage;
        getMessageText = function () {
            var $message_input;
            $message_input = $('.message_input');
            return $message_input.val();
        };
        sendMessage = function (text,message_side) {
            var $messages, message;
            if (text.trim() === '') {
                return;
            }
            $('.message_input').val('');
            $messages = $('.messages');
            // message_side = message_side === 'left' ? 'right' : 'left';
            message = new Message({
                text: text,
                message_side: message_side
            });
            message.draw();
            return $messages.animate({ scrollTop: $messages.prop('scrollHeight') }, 300);
        };
        $('.send_message').click(function (e) {
            var msg = getMessageText();
            ws.send(msg);
            console.log(msg);
            
            return sendMessage(msg,'right');
        });
        $('.message_input').keyup(function (e) {
            if (e.which === 13) {
                var msg = getMessageText();
            console.log(msg);
            ws.send(msg);
                return sendMessage(msg,'right');
            }
        });   
        talking = true;
        var ws = new WebSocket('ws://localhost:8081');
        
        ws.addEventListener("message", function (e) {
            var msg = e.data;
            console.log(msg);
            sendMessage(msg,'left');
            Speech(msg);
            
        });
        
        function Speech(say) {
            if ('speechSynthesis' in window && talking) {
                var utterance = new SpeechSynthesisUtterance(say);
                speechSynthesis.speak(utterance);
            }
        }     
    });
  }.call(this));