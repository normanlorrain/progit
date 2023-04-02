// Found in pandoc source (default.typst; yes confusing, renamed here), this is the Typst template referred to in the Pandoc template.
// Generate by pandoc --print-default-data-file=templates/default.typst


#set page(
$if(papersize)$
  paper: "$papersize$",
$endif$
  numbering: "1"
)
#set par(justify: true)
#set text(
$if(lang)$
  lang: "$lang$",
$endif$
$if(mainfont)$
  font: "$mainfont$",
$endif$
$if(fontsize)$
  size: $fontsize$,
$endif$
)
#set heading(
$if(numbering)$
  numbering: "$numbering$"
$endif$
)

#align(center)[#block(inset: 2em)[
  #text(weight: "bold", size: 18pt)[$title$] \
$for(author)$
  $author$ \
$endfor$
$if(date)$
  $date$
$endif$
]]

#let definition(term, ..defs) = [
  #strong(term) \
  #(defs.pos().join("\n"))
]

#let blockquote(body) = [
  #set text( size: 0.92em )
  #block(inset: (left: 1.5em, top: 0.2em, bottom: 0.2em))[#body]
]

#let horizontalrule = [
  #line(start: (25%,0%), end: (75%,0%))
]

#let endnote(num, contents) = [
  #stack(dir: ltr, spacing: 3pt, super[#num], contents)
]

$if(columns)$
#show: doc => columns($columns$, doc)
$endif$

$for(header-includes)$
$header-includes$

$endfor$
$for(include-before)$
$include-before$

$endfor$
$if(toc)$
#outline(
  title: auto,
  depth: none
);
$endif$

$body$

#v(1em)
#block[
#horizontalrule
#set text(size: .88em)
#v(3pt) // otherwise first note marker is swallowed, bug?

$notes$
]
$if(bibliographystyle)$

#set bibliography(style: "$bibliographystyle$")
$endif$
$for(bibliography)$

#bibliography("$bibliography$")
$endfor$
$for(include-after)$

$include-after$
$endfor$
