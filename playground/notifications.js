require 'rubygems'
require 'notification'

gmail = GmailNotifier.new(:name => 'dsls.in.ruby', :password => 'dslsinruby', :to => 'lpolicastro84@gmail.com')
sms   = SmsNotifier.new(gmail, '305-205-9541')


message = "Hello World"
email.notify(message)
sms.notify(message)
