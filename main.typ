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
  #cv

  This is the online version of *Abhi's Resume*.

 

  - #link(<html-introduction>)[Introduction]

  == Other formats

  #link(<book-pdf>)[Download the complete book as PDF.]
]

#document("book.pdf", title: [Example Book])[
  #set page(paper: "a4", margin: 2.5cm)
  #set text(size: 11pt)

  #align(center)[
    #text(24pt, weight: "bold")[Example Book]
    #v(1em)
    A demonstration book built with Typst.
  ]
  #pagebreak()

  #outline(title: [Contents])
  #pagebreak()

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