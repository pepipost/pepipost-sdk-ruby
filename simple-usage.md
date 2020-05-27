#### Example of Advance Usage

```ruby
require 'pepipost'
require 'json'

include Pepipost

api_key = 'Your api_key here'

client = PepipostClient.new(api_key: api_key)

mail_send_controller = client.mail_send

body = Send.new

body.from = From.new

body.from.email = 'hello@your-register-domain-with-pepipost'
body.from.name = 'Example Pepi'
body.subject = 'Emailing with Pepipost is easy'
body.content = []

body.content[0] = Content.new

body.content[0].type = TypeEnum::HTML
body.content[0].value = '<html><body>Hey,<br><br>Do you know integration is even simpler in Pepipost, <br>with Ruby <br> Happy Mailing ! <br><br>Pepipost </body></html>'


body.personalizations = []

body.personalizations[0] = Personalizations.new

body.personalizations[0].to = []

body.personalizations[0].to[0] = EmailStruct.new

body.personalizations[0].to[0].name = 'random-1'
body.personalizations[0].to[0].email = 'random-1@mydomain.name'

begin
  result = mail_send_controller.create_generatethemailsendrequest(body)
  puts (result)
rescue APIException => ex
  puts "Caught APIException: #{ex.message}"
end
```