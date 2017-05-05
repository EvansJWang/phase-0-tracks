Googling obvious helped!
I started with some pretty simple searches like
What is Jquery? How do i install it?
Benefits of Jquery
Jquery for beginners
examples of Jquery/ simple jquery projects

What i find really helpful are always the examples. I like to mess with the examples and then play around until i have a solid conceptual understanding of how to implement.

Basically JQuery helps you do Javascript with less code. I think it just adds a huge amount of shortcuts and if you understand Jquery can be very easy to read.

For example to select certain elements or classes or IDs it is simply $(#ID) or $(.CLASS) or $('element name here')

then followed by a . and the action
for example a simple $('p').hide(); will hide all of the <p> in the document.
It can also be extremely specific like $('p:first') which will only select the first <p> element.

or  $('tr:odd') which will select all <tr> odd elements

$(document).ready(function(){

   // jQuery methods go here...

});
this is extremely useful in order for the document to fully load before any of the scripts run.
the short hand is 
$(function(){

  //JQuery method

  });
})