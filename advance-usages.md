#### Example of Advance Usage

```ruby
require 'pepipost'
require 'json'

include Pepipost

api_key = 'your api_key here'

client = PepipostClient.new(api_key: api_key)

mail_send_controller = client.mail_send

body = Send.new

body.reply_to = 'you-reply-to-id-address@mydomain.name'
body.from = From.new

body.from.email = 'hello@your-register-domain-with-pepipost'
body.from.name = 'Example Pepi'
body.subject = 'Emailing with Pepipost is easy with [%NAME%]'
body.content = []

body.content[0] = Content.new

body.content[0].type = TypeEnum::HTML
body.content[0].value = '<html><body>Hey,<br><br>Do you know integration is even simpler in Pepipost, <br>with Ruby <br> Happy Mailing ! <br><br>Pepipost </body></html>'

body.content[1] = Content.new

body.content[1].type = TypeEnum::AMP
body.content[1].value = '<html><body>Hey,<br><br>Do you know integration is even simpler in Pepipost, <br>with Ruby <br> Happy Mailing ! <br><br>Pepipost </body></html>'

body.attachments = []

body.attachments[0] = Attachments.new

body.attachments[0].content = 'SGVsbG8gd2VsY29tZSB0byBQRVBJIHY1IEFQSQ=='
body.attachments[0].name = 'global-text-file.txt'

body.personalizations = []

body.personalizations[0] = Personalizations.new

body.personalizations[0].attributes = JSON.parse('{"NAME":"Pepipost team"}')
body.personalizations[0].headers = JSON.parse('{"key":"value"}')
body.personalizations[0].attachments = []

body.personalizations[0].attachments[0] = Attachments.new

body.personalizations[0].attachments[0].content = 'SGVsbG8gd2VsY29tZSB0byBQRVBJIHY1IEFQSQ=='
body.personalizations[0].attachments[0].name = 'personalized-test-file.txt'

body.personalizations[0].to = []

body.personalizations[0].to[0] = EmailStruct.new

body.personalizations[0].to[0].name = 'random-1'
body.personalizations[0].to[0].email = 'random-1@mydomain.name'

body.personalizations[0].to[1] = EmailStruct.new

body.personalizations[0].to[1].name = 'random-2'
body.personalizations[0].to[1].email = 'random-2@mydomain.name'

body.personalizations[0].cc = []

body.personalizations[0].cc[0] = EmailStruct.new

body.personalizations[0].cc[0].name = 'random-cc'
body.personalizations[0].cc[0].email = 'random-cc@mydomain.name'

body.personalizations[0].bcc = []

body.personalizations[0].bcc[0] = EmailStruct.new

body.personalizations[0].bcc[0].name = 'random-bcc'
body.personalizations[0].bcc[0].email = 'random-bcc@mydomain.name'

body.personalizations[0].token_to = '"{\"Arg1\":\"Value1\"}"'
body.personalizations[0].token_cc = '"{\"Arg1\":\"Value1\"}"'
body.personalizations[0].token_bcc = '"{\"Arg1\":\"Value1\"}"'

body.personalizations[1] = Personalizations.new

body.personalizations[1].attributes = JSON.parse('{"key":"value"}')
body.personalizations[1].headers = JSON.parse('{"key":"value"}')
body.personalizations[1].attachments = []

body.personalizations[1].attachments[0] = Attachments.new

body.personalizations[1].attachments[0].content = 'SGVsbG8gd2VsY29tZSB0byBQRVBJIHY1IEFQSQ=='
body.personalizations[1].attachments[0].name = 'personalized-test-file.txt'

body.personalizations[1].to = []

body.personalizations[1].to[0] = EmailStruct.new

body.personalizations[1].to[0].name = 'random-1'
body.personalizations[1].to[0].email = 'random-1@mydomain.name'

body.personalizations[1].cc = []

body.personalizations[1].cc[0] = EmailStruct.new

body.personalizations[1].cc[0].name = 'random-cc'
body.personalizations[1].cc[0].email = 'random-cc@mydomain.name'

body.personalizations[1].bcc = []

body.personalizations[1].bcc[0] = EmailStruct.new

body.personalizations[1].bcc[0].name = 'random-bcc'
body.personalizations[1].bcc[0].email = 'random-bcc@mydomain.name'

body.settings = Settings.new

body.settings.footer = true
body.settings.click_track = true
body.settings.open_track = true
body.settings.unsubscribe_track = true
body.settings.hepf = true
body.tags = ['Campaign']
body.bcc = []

body.bcc[0] = EmailStruct.new

body.bcc[0].name = 'random-bcc'
body.bcc[0].email = 'random-bcc@mydomain.name'

begin
  result = mail_send_controller.create_generatethemailsendrequest(body)
  puts (result)
rescue APIException => ex
  puts "Caught APIException: #{ex.message}"
end

```