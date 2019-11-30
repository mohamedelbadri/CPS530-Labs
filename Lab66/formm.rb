#!/usr/local/bin/ruby -w

print "Content-type: text/html\n\n" 
require 'cgi' 
cgi = CGI.new 
print '<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>'
print '<script> $(document).ready(function(){ $("#div1").fadeIn(3000); $("#div2").fadeIn(6000); $("#div3").fadeIn(9000);}); </script>'
puts "<div>Hello, " + cgi['name'] + " How are you? </div>" 
print '<br>'
puts "<div>Your Address is: " + cgi['address'].split.map(&:capitalize).join(' ') + "</div>" 
print '<br>'
print 'Your Number: ' 
print '<div id="div1" style="display:none; font-size:100px; color:blue;"> (' 
puts cgi['number'][0, 3] + ')'  
print '</div>'
print '<div id="div2" style="display:none;  font-size:100px; color:red;">' 
puts cgi['number'][4, 3] 
print '-</div>'
print '<div id="div3" style="display:none; font-size:100px; color:green;">' 
puts cgi['number'][7,5] 
print '</div>'