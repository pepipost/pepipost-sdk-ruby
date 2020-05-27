## Table of Content
* [fetch event logs](#example1)
* [fetch summary stats](#example2)
* [Domain Add](#example3)
* [Domain delete](#example4)
* [Suppression add](#example5)
* [Suppression delete](#example6)
* [create subaccount](#example7)
* [update subaccount](#example8)
* [enable/disable subaccount](#example9)
* [delete subaccount](#example10)
* [set recurring credit in subaccount](#example11)
* [add credit in subaccount](#example12)
* [get credit details of subaccount](#example13)

<a name="example1"></a>
## fetch event logs  

```ruby
require 'pepipost'

include Pepipost

api_key = 'your api_key here'

client = PepipostClient.new(api_key: api_key)

events_controller = client.events
startdate = Date.iso8601('2016-03-13')
events = EventsEnum::SENT
sort = SortEnum::ASC
enddate = Date.iso8601('2020-05-26')
subject = 'test'
email = 'email@gmail.com'

begin
  result = events_controller.get_events_get(startdate, events, sort, enddate, nil, nil, subject, nil, nil, email)
rescue APIException => ex
  puts "Caught APIException: #{ex.message}"
end
```

<a name="example2"></a>
## fetch summary stats 

```ruby
require 'pepipost'

include Pepipost

api_key = 'your api_key here'

client = PepipostClient.new(api_key: api_key)

stats_controller = client.stats
startdate = Date.iso8601('2016-03-13')
enddate = Date.iso8601('2020-05-26')
aggregated_by = AggregatedByEnum::WEEK
offset = 100
limit = 1

begin
  result = stats_controller.get_stats_get(startdate, enddate, aggregated_by, offset, limit)
rescue APIException => ex
  puts "Caught APIException: #{ex.message}"
end
```
<a name="example3"></a>
## Domain Add  

```ruby
require 'pepipost'

include Pepipost

api_key = 'your api_key here'

client = PepipostClient.new(api_key: api_key)

domain_controller = client.domain
body = DomainStruct.new
body.domain = 'example.com'
body.envelope_name = 'test'

begin
  result = domain_controller.add_domain(body)
rescue APIException => ex
  puts "Caught APIException: #{ex.message}"
end
```

<a name="example4"></a>
## Domain delete 

```ruby
require 'pepipost'

include Pepipost

api_key = 'your api_key here'

client = PepipostClient.new(api_key: api_key)

domain_delete_controller = client.domain_delete
body = DeleteDomain.new
body.domain = 'example.com'

begin
  result = domain_delete_controller.delete_domain(body)
rescue APIException => ex
  puts "Caught APIException: #{ex.message}"
end
```

<a name="example5"></a>
## Suppression add  

```ruby
require 'pepipost'

include Pepipost

api_key = 'your api_key here'

client = PepipostClient.new(api_key: api_key)

suppression_controller = client.suppression
body = AddEmailOrDomainToSuppressionList.new
body.domain = 'example.com'
body.email = 'email@gmail.com'

begin
  result = suppression_controller.add_domain_or_email_to_suppression_list(body)
rescue APIException => ex
  puts "Caught APIException: #{ex.message}"
end
```

<a name="example6"></a>
## Suppression delete 

```ruby
require 'pepipost'

include Pepipost

api_key = 'your api_key here'

client = PepipostClient.new(api_key: api_key)

suppression_controller = client.suppression
body = RemoveEmailOrDomainToSuppressionList.new
body.domain = 'example.com'
body.email = 'email@gmail.com'

begin
  result = suppression_controller.remove_domain_or_email_to_suppression_list(body)
rescue APIException => ex
  puts "Caught APIException: #{ex.message}"
end
```

<a name="example7"></a>
## create subaccount  

```ruby
require 'pepipost'

include Pepipost

api_key = 'your api_key here'

client = PepipostClient.new(api_key: api_key)

subaccounts_create_subaccount_controller = client.subaccounts_create_subaccount
body = CreateSubaccount.new
body.username = 'name'
body.email = 'email1.gmail.com'
body.setpassword = '0'
body.password = 'pwd'

begin
  result = subaccounts_create_subaccount_controller.create_subaccounts_create_subaccount_post(body)
rescue APIException => ex
  puts "Caught APIException: #{ex.message}"
end
```

<a name="example8"></a>
## update subaccount  

```ruby
require 'pepipost'

include Pepipost

api_key = 'your api_key here'

client = PepipostClient.new(api_key: api_key)

subaccounts_update_subaccount_controller = client.subaccounts_update_subaccount
body = UpdateSubaccount.new
body.username = 'username'
body.new_email = 'email@gmail.com'
body.new_password = 'pwd'
body.confirm_password = 'pwd'

begin
  result = subaccounts_update_subaccount_controller.create_subaccounts_update_subaccount_post(body)
rescue APIException => ex
  puts "Caught APIException: #{ex.message}"
end
```

<a name="example9"></a>
## enable/disable subaccount  

```ruby
require 'pepipost'

include Pepipost

api_key = 'your api_key here'

client = PepipostClient.new(api_key: api_key)

subaccounts_controller = client.subaccounts
body = EnableOrDisableSubacoount.new
body.username = 'username'
body.disabled = true

begin
  result = subaccounts_controller.update_subaccounts_patch(body)
rescue APIException => ex
  puts "Caught APIException: #{ex.message}"
end
```

<a name="example10"></a>
## delete subaccount 

```ruby
require 'pepipost'

include Pepipost

api_key = 'your api_key here'

client = PepipostClient.new(api_key: api_key)

subaccounts_delete_controller = client.subaccounts_delete
body = DeleteSubacoount.new
body.username = 'username'

begin
  result = subaccounts_delete_controller.delete_subaccounts_delete_delete(body)
rescue APIException => ex
  puts "Caught APIException: #{ex.message}"
end
```

<a name="example11"></a>
## set recurring credit in subaccount 

```ruby
require 'pepipost'

include Pepipost

api_key = 'your api_key here'

client = PepipostClient.new(api_key: api_key)

setrecurringcreditddetails_controller = client.setrecurringcreditddetails
body = UpdateRecurringCredisOfSubaccount.new
body.username = 'username'
body.recurring_credit = 10
body.timeperiod = TimeperiodEnum::MONHTLY

begin
  result = setrecurringcreditddetails_controller.create_setrecurringcreditddetails_post(body)
rescue APIException => ex
  puts "Caught APIException: #{ex.message}"
end
```

<a name="example12"></a>
## add credit in subaccount 

```ruby
require 'pepipost'

include Pepipost

api_key = 'your api_key here'

client = PepipostClient.new(api_key: api_key)

subaccounts_setsubaccountcredit_controller = client.subaccounts_setsubaccountcredit
body = UpdateCredisOfSubaccount.new
body.username = 'username'
body.action = ActionEnum::DECREASE
body.amount = 100

begin
  result = subaccounts_setsubaccountcredit_controller.create_subaccounts_setsubaccountcredit_post(body)
rescue APIException => ex
  puts "Caught APIException: #{ex.message}"
end
```

<a name="example13"></a>
## get credit details of subaccount  

```ruby
require 'pepipost'

include Pepipost

api_key = 'your api_key here'

client = PepipostClient.new(api_key: api_key)

subaccounts_get_sub_accounts_controller = client.subaccounts_get_sub_accounts
limit = '100'
offset = '0'

begin
  result = subaccounts_get_sub_accounts_controller.get_subaccounts_get_sub_accounts_get(limit, offset)
rescue APIException => ex
  puts "Caught APIException: #{ex.message}"
end
```