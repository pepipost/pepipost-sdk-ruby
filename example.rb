require 'pepipost_apiv_10'

data = {
    "api_key"=>"yoursecretapikey",
    "recipients"=> ["recipient1@example.com","recipient2@example.com"],
    "email_details" => {
        "fromname" => "sender name",
        "subject" => "This is a test email sent usig Pepipost SDK for Ruby",
        "from" => "from@example.com",
        "content" => "<p>This is a test email sent using Pepipost SDK for Ruby</p>",
    }
}


email = PepipostApiv10::Email.new 
response = email.send data

print response

