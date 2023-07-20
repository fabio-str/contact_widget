class SmsService
    attr_reader :message

    def initialize(message)
        @message = message
    end

    def send_text!
        params = { number: '123456789', message: body }
        response = HTTParty.get(ENV['SMS_Server'], body: params )
        JSON.parse(response.body)
    end

    def body
        "[#{ message.name }] #{ message.content }"
    end

end