# Getting started

Pepipost is a cloud-based SMTP relay service that delivers highly personalised transactional emails to the inbox within seconds of your customer’s transaction

## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build pepipost_gem.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install pepipost_gem-2.5.0.gem ```

![Building Gem](https://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=pepipost_gem-Ruby&workspaceName=pepipost_gem-Ruby&projectName=pepipost_gem&gemName=pepipost_gem&gemVer=2.5.0)

## How to Use

The following section explains how to use the PepipostGem Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](https://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=pepipost_gem-Ruby&workspaceName=PepipostGem&projectName=pepipost_gem&gemName=pepipost_gem&gemVer=2.5.0)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](https://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=pepipost_gem-Ruby&workspaceName=PepipostGem&projectName=pepipost_gem&gemName=pepipost_gem&gemVer=2.5.0)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](https://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=pepipost_gem-Ruby&workspaceName=PepipostGem&projectName=pepipost_gem&gemName=pepipost_gem&gemVer=2.5.0)

This will create a new Rails Application project with an existing set of files and folder.

### 2. Add reference of the gem

In order to use the PepipostGem gem in the new project we must add a gem reference. Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'pepipost_gem', '~> 2.5.0' ```

![Add references of the Gemfile](https://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=pepipost_gem-Ruby&workspaceName=PepipostGem&projectName=pepipost_gem&gemName=pepipost_gem&gemVer=2.5.0)

### 3. Adding a new Rails Controller

Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=pepipost_gem-Ruby&workspaceName=PepipostGem&projectName=pepipost_gem&gemName=pepipost_gem&gemVer=2.5.0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=pepipost_gem-Ruby&workspaceName=PepipostGem&projectName=pepipost_gem&gemName=pepipost_gem&gemVer=2.5.0)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](https://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=pepipost_gem-Ruby&workspaceName=PepipostGem&projectName=pepipost_gem&gemName=pepipost_gem&gemVer=2.5.0)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=pepipost_gem-Ruby&workspaceName=PepipostGem&projectName=pepipost_gem&gemName=pepipost_gem&gemVer=2.5.0)

## How to Test

You can test the generated SDK and the server with automatically generated test
cases as follows:

  1. From terminal/cmd navigate to the root directory of the SDK.
  2. Invoke: `bundle exec rake`

## Initialization

### 

API client can be initialized as following.

```ruby

client = PepipostGem::PepipostGemClient.new
```

The added initlization code can be debugged by putting a breakpoint in the ``` Index ``` method and running the project in debug mode by selecting ``` Run -> Debug 'Development: TestApp' ```.

![Debug the TestApp](https://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=pepipost_gem-Ruby&workspaceName=PepipostGem&projectName=pepipost_gem&gemName=pepipost_gem&gemVer=2.5.0&initLine=client%2520%253D%2520PepipostGemClient.new)



# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [EmailController](#email_controller)

## <a name="email_controller"></a>![Class: ](https://apidocs.io/img/class.png ".EmailController") EmailController

### Get singleton instance

The singleton instance of the ``` EmailController ``` class can be accessed from the API Client.

```ruby
email_controller = client.email
```

### <a name="create_send_email"></a>![Method: ](https://apidocs.io/img/method.png ".EmailController.create_send_email") create_send_email

> *Tags:*  ``` Skips Authentication ``` 

> This Endpoint sends emails with the credentials passed.


```ruby
def create_send_email(api_key = nil,
                          body = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| api_key |  ``` Optional ```  | Generated header parameter. Example value ='5ce7096ed4bf2b39dfa932ff5fa84ed9ed8' |
| body |  ``` Optional ```  | The body passed will be json format. |


#### Example Usage

```ruby
api_key = 'api_key'
body = EmailBody.new

result = email_controller.create_send_email(api_key, body)

```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 405 | Method not allowed |



[Back to List of Controllers](#list_of_controllers)



