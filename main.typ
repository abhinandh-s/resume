#let cv = include "resume.typ"

#let theme = [
  #html.elem("link", attrs: (rel: "stylesheet", href: "../style.css"))
  #html.script(src: "../theme.js")
  #html.button(id: "theme-toggle", class: "theme-btn")[Theme: Tomato]
]

#document("index.html", title: [Abhi's Resume])[
  #html.elem("link", attrs: (rel: "stylesheet", href: "style.css"))
  // Add the script and button
  #html.script(src: "theme.js")
  #html.button(id: "theme-toggle", class: "theme-btn")[Theme: Tomato]

  
  #title()
  This is the online version of *Abhi's Resume*.
  #cv

  == Other formats

  #link(<book-pdf>)[Download the complete book as PDF.]
]

#document("resume.pdf", title: [Abhi's Resume])[
  #set page(paper: "a4", margin: 2.5cm)
  #set text(size: 11pt)
  #cv
  #pagebreak()
] <book-pdf>


// Export these into the output bundle
#asset("style.css", read("static/style.css"))
#asset("variables.css", read("static/variables.css"))
#asset("base.css", read("static/base.css"))
#asset("components.css", read("static/components.css"))
#asset("theme.js", read("static/theme.js")) 
#asset("favicon.ico", read("images/favicon.ico", encoding: none))