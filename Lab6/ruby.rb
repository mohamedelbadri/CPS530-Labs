#!/usr/bin/ruby -w

require 'cgi'
cgi = CGI.new

print "Content-type: text/html\n\n"

puts "Test"
puts <<HERE
<!-- Skeleton CSS /!-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/skeleton/2.0.4/skeleton.min.css">

<!-- jQuery library -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="jquery-3.4.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Custom CSS to make FadeIn contents work -->
<style type="text/css">
#first
{
  text-colour: red;
  display:none;
}
#second
{
  text-colour: blue;
  display:none;
}
#third
{
  text-colour: green;
  display:none;
}
</style>
HERE

puts '<div class="container">'

puts '<h1>Hello,' + cgi['name'] + '</h1>'
puts '<br>'
phone = cgi['number']
address = cgi['address']

puts '<h2 id="first"> (' + phone[0...2] +')</h2>'

puts '<h2 id="second>"' + phone [4..7] +'</h2>'

puts '<h2 id="third"' + phone[7...phone.length]+'</h2>'

puts address.split.map(&:capitalize).join(' ')

puts '</div>'

puts "<script>"

puts <<SCRIPT 

    $(document).ready(function() {
      $('#first').fadeIn(3000);
      $('#second').fadeIn(4000);
      $('#third').fadeIn(6000);
    });
  
SCRIPT

    puts "</script>"

