#### Example of Advance Usage

```ruby
require 'pepipost_gem'
require 'json'
include PepipostGem

client = PepipostGemClient.new
email_controller = client.email
api_key = 'api-key-here'
body = EmailBody.new

body.personalizations = []
body.personalizations[0] = Personalizations.new
body.personalizations[0].recipient = 'your-rcpt-email@gmail.com'
body.personalizations[0].x_apiheader = 'x_apiheader content'
body.personalizations[0].x_apiheader_cc = 'x_apiheader_cc content'
body.personalizations[0].attributes = Attributes.new('{"name":"pepi","love":"Emails"}').get_attributes
body.personalizations[0].attachments = []
body.personalizations[0].attachments[0] = Attachments.new
body.personalizations[0].attachments[0].file_content = '"SGVsbG8sIHRoaXMgZmlsZSBpcyBhbiBpbmZvcm1hdGlvbmFsIGZpbGU6OiBTZW5kaW5nIGVtYWlscyB0byB0aGUgaW5ib3ggaXMgd2hhdCB3ZSBkbywgYnV0IHRoYXTigJlzIG5vdCB0aGUgb25seSByZWFzb24gd2h5IGRldmVsb3BlcnMgYW5kIGVudGVycHJpc2VzIGxvdmUgdXMuIFdlIGFyZSB0aGUgb25seSBFU1AgdGhhdCBkb2VzbuKAmXQgY2hhcmdlIGZvciBlbWFpbHMgb3BlbmVkLg=="'
body.personalizations[0].attachments[0].file_name = 'Pepipost.txt'
body.personalizations[0].recipient_cc = ['my-cc-emailid@gmail.com']
body.personalizations[0].recipient_bcc = ['my-bcc-emailid@gmail.com']
body.personalizations[0].xheaders = Xheaders.new('{"custom_key1":"custom_value1","custom_key2":"custom_value2"}').get_xheaders

body.tags = 'tags'
body.from = From.new
body.from.from_email = 'pepi@net.xyz'
body.from.from_name = 'i am pepi'
body.subject = 'Pepipost mail through ruby sdk'
body.content = '<html><body>Hello, Welcome to Pepipost Family.<br>My name is [% name %].<br>my love is sending [% love %]</body> <br></html>'
body.ampcontent = '<!doctype html><html ⚡4email><head><meta charset="utf-8"><style amp4email-boilerplate>body{visibility:hidden}</style><script async src="https://cdn.ampproject.org/v0.js"></script></head><body>Hello, world. </body></html>'
body.attachments = []
body.attachments[0] = EmailBodyAttachments.new
body.attachments[0].file_content = '"SGVsbG8sIHRoaXMgZmlsZSBpcyBhbiBpbmZvcm1hdGlvbmFsIGZpbGU6OiBTZW5kaW5nIGVtYWlscyB0byB0aGUgaW5ib3ggaXMgd2hhdCB3ZSBkbywgYnV0IHRoYXTigJlzIG5vdCB0aGUgb25seSByZWFzb24gd2h5IGRldmVsb3BlcnMgYW5kIGVudGVycHJpc2VzIGxvdmUgdXMuIFdlIGFyZSB0aGUgb25seSBFU1AgdGhhdCBkb2VzbuKAmXQgY2hhcmdlIGZvciBlbWFpbHMgb3BlbmVkLg=="'
body.attachments[0].file_name = 'Pepipost_1.txt'

body.settings = Settings.new
body.settings.footer = 0
body.settings.clicktrack = 1
body.settings.opentrack = 1
body.settings.unsubscribe = 1
body.settings.bcc = 'my-bcc-emailid@gmail.com'

body.reply_to_id = 'reply@gmail.com'
# body.template_id = 19598

URL = 'https://<api-endpoint>'

begin
        result = email_controller.create_send_email(api_key, body, URL)
        puts JSON.pretty_generate(result)
rescue APIException => ex
        puts "Caught APIException: #{ex.message}"
end