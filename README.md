![pepipostlogo](https://pepipost.com/wp-content/uploads/2017/07/P_LOGO.png)

[![Gem Version](https://badge.fury.io/rb/pepipost_gem.svg)](https://badge.fury.io/rb/pepipost_gem)
[![Open Source Helpers](https://www.codetriage.com/pepipost/pepipost-sdk-ruby/badges/users.svg)](https://www.codetriage.com/pepipost/pepipost-sdk-ruby)
[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](./LICENSE.txt)
[![Twitter Follow](https://img.shields.io/twitter/follow/pepi_post.svg?style=social&label=Follow)](https://twitter.com/pepi_post)

# Ruby SDK :gem: for [Pepipost](http://www.pepipost.com/?utm_campaign=GitHubSDK&utm_medium=GithubSDK&utm_source=GithubSDK)

This gem contains methods for easily interacting with the Pepipost Email Sending API to send emails within few seconds.

We are trying to make our libraries a Community Driven. To help us building right things in proper order we would request you to help us by sharing comments, creating new issues or pull request.

## Table of Content
* [Installation](#installation)
* [Quick Start](#quickstart)
* [Sample Example](#steps)
* [Announcements](#announcements)
* [Roadmap](#roadmap)
* [About](#about)
* [License](#license)


<a name="installation"></a>
## Installation 

### Manually generate your own pepipost gem 

This client library is a Ruby gem which can be compiled and used in your Ruby on Rails project. This library requires a few gems from the RubyGems repository.

* Open the command line interface/terminal and navigate to the folder of your choice and run the below commands to download and navigate to the downloaded folder:
``` git clone https://github.com/pepipost/pepipost-sdk-ruby.git ```
* ``` cd pepipost-sdk-ruby ``` 

* ``` gem build pepipost.gemspec ``` to build the gem.
* ``` gem install pepipost-5.0.0.gem ``` to install pepipost gem

![Building Gem](https://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=pepipost-Ruby&workspaceName=pepipost-Ruby&projectName=pepipost_gem&gemName=pepipost&gemVer=5.0.0)

Once pepipost_gem is installed, use the sample example to [send test email](#steps). 

<a name="quickstart"></a>
## Quickstart

The following section explains how to use the Pepipost Gem in a new Rails project using RubyMine.

The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

1. Starting a new project

   Close any existing projects in RubyMine by selecting:

   * ``` File -> Close Project ``` 
   * Next, click on ``` Create New Project ``` to create a new project from scratch.

   ![Create a new project in RubyMine](https://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=pepipost_gem-Ruby&workspaceName=PepipostGem&projectName=pepipost_gem&gemName=pepipost_gem&gemVer=2.5.0)

   * Next, provide ``` TestApp ``` as the project name.
   * Choose ``` Rails Application ``` as the project type.
   * Click ``` OK ```.

   ![Create a new Rails Application in RubyMine - step 1](https://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=pepipost_gem-Ruby&workspaceName=PepipostGem&projectName=pepipost_gem&gemName=pepipost_gem&gemVer=2.5.0)

     In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) 
   * click ``` OK ```.

   ![Create a new Rails Application in RubyMine - step 2](https://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=pepipost_gem-Ruby&workspaceName=PepipostGem&projectName=pepipost_gem&gemName=pepipost_gem&gemVer=2.5.0)

   This will create a new Rails Application project with an existing set of files and folder.

2. Add reference of the gem
   
   * In order to use the Pepipost gem in the new project, add a gem reference.
   * Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node.
   * The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line:
    ``` gem 'pepipost_gem', '~> 2.5.0' ```

   ![Add references of the Gemfile](https://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=pepipost_gem-Ruby&workspaceName=PepipostGem&projectName=pepipost_gem&gemName=pepipost_gem&gemVer=2.5.0)

3. Adding a new Rails Controller

   * Once the ``` TestApp ``` project is created.
   * Folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path:
     ``` TestApp > app > controllers ```. 
   * Right click on this folder.
   * select ``` New -> Run Rails Generator ```.

   ![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=pepipost_gem-Ruby&workspaceName=PepipostGem&projectName=pepipost_gem&gemName=pepipost_gem&gemVer=2.5.0)

   * Selecting the said option will popup a small window where the generator names are displayed.
   * select the ``` controller ``` template.

   ![Create a new Controller](https://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=pepipost_gem-Ruby&workspaceName=PepipostGem&projectName=pepipost_gem&gemName=pepipost_gem&gemVer=2.5.0)

   * A  popup window will ask you for a Controller name and included Actions.
   * For controller name provide ``` Hello ```.
   * Include an action named ``` Index ```. 
   * Click ``` OK ```.

   ![Add a new Controller](https://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=pepipost_gem-Ruby&workspaceName=PepipostGem&projectName=pepipost_gem&gemName=pepipost_gem&gemVer=2.5.0)

   * A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```.
   * In this method, copy [sample example](#steps).
   * Run your project.

   ![Initialize the library](https://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=pepipost_gem-Ruby&workspaceName=PepipostGem&projectName=pepipost_gem&gemName=pepipost_gem&gemVer=2.5.0)

<a name="steps"></a>
## Usage

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

* Change your api-key and sending domain respectively
  * **apikey** will be available under Login to Pepipost -> Settings -> Integration  
  * **Sending Domain** will be available under Login to Pepiost -> Settings -> Sending Domains 
  
```
  *Note :: Domains showing with Active status on Sending Domain dashboard are only allowed to send any sort of emails.* In case there are no Sending Domain added under your account, then first add the domain, get the DNS (SPF/DKIM) settings done and get it reviewed by our compliance team for approval. Once the domain is approved, it will be in ACTIVE status and will be ready to send any sort of emails. 
```
* Save above file as sendEmail.rb
* run ``` ruby sendEmail.rb ```

<a name="announcements"></a>
# Announcements

v5.0 has been released! Please see the [release notes](https://github.com/pepipost/pepipost-sdk-ruby/releases/) for details.

All updates to this library are documented in our [releases](https://github.com/pepipost/pepipost-sdk-ruby/releases). For any queries, feel free to reach out us at dx@pepipost.com

<a name="roadmap"></a>
## Roadmap

If you are interested in the future direction of this project, please take a look at our open [issues](https://github.com/pepipost/pepipost-sdk-ruby/issues) and [pull requests](https://github.com/pepipost/pepipost-sdk-ruby/pulls). We would love to hear your feedback.

<a name="about"></a>
## About
pepipost-sdk-ruby library is guided and supported by the [Pepipost Developer Experience Team](https://github.com/orgs/pepipost/teams/pepis/members) .
This pepipost gem is maintained and funded by Pepipost Ltd. The names and logos for pepipost gem are trademarks of Pepipost Ltd.

<a name="license"></a>
## License
This code library was semi-automatically generated by APIMATIC v2.0 and licensed under The MIT License (MIT).
