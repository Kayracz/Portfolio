ready = ->
  Typed.new '.element',
    strings: [
      'Hellooo, I am Kayra'
      "My goal is to build tools to create meaningfull businesses, "
      "facilitate processes and simplify app users life in general."
       "Welcome to my webpage !"
    ]
    typeSpeed: 0
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready
