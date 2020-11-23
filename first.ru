require 'rack'

# Instances of Proc automatically have a call method that runs the block that
# they're initialized with.
my_server = 
     Proc.new do
          [200, { 'Content-Type' => 'text/html' }, ['<em>Hello</em>']]
     end
   
run my_server 
# =>
# [2020-11-23 16:28:56] INFO  WEBrick 1.4.2
# [2020-11-23 16:28:56] INFO  ruby 2.6.1 (2019-01-30) [x86_64-darwin19]
# [2020-11-23 16:28:56] INFO  WEBrick::HTTPServer#start: pid=66574 port=9292

#URL: http://localhost:9292/  <- localhost - to this computer only