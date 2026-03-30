#import "style.typ": *

#pagebreak(weak: true)
#flex-heading-lv2[Numerals\ Cardinal~Numbers][Numerals]
#place[#v(3em)#margin-heading[(see #pages(<section:numbers>, <section:numbers_end>))]]
#columns(2)[
  #set enum(indent: 0em, body-indent: 3em, spacing: 2.8em)
  #smallcaps[Numerals]
  + #sanskrit[१]
  + #sanskrit[२]
  + #sanskrit[३]
  + #sanskrit[४]
  + #sanskrit[५] #h(1em) #sanskrit-traditional[( ५ )]

  + #sanskrit[६]
  + #sanskrit[७]
  + #sanskrit[८] #h(1em) #sanskrit-traditional[( ८ )]
  + #sanskrit[९] #h(1em) #sanskrit-traditional[( ९ )]
  + #sanskrit[१०]
  #colbreak()

  #smallcaps[Cardinal numbers]
  #set enum(numbering: english_numbers, number-align: left, body-indent: 3em
    )
  + #sanskrit[एक]
  + #sanskrit[द्वि]
  + #sanskrit[त्रि]
  + #sanskrit[चतुर्]
  + #sanskrit[पञच]

  + #sanskrit[षष्]
  + #sanskrit[सप्तम्]
  + #sanskrit[अष्टम्]
  + #sanskrit[नव]
  + #sanskrit[दश]
]#v(1em)

== Ordinal Numbers
#columns(2)[
  #set enum(spacing: 2em)
  #table(
    columns: 2,
    [First], [#sanskrit[प्रथम]],
    [Second], [#sanskrit[द्वितीय]],
    [Third], [#sanskrit[तृतीय]],
    [Fourth], [#sanskrit[चतुर्थ]#h(1em)or#h(1em)#sanskrit[तुरीय]],
    [Fifth], [#sanskrit[पञ्वम]],
  )
  #colbreak()
  #table(
    columns: 2,
    [Sixth], [#sanskrit[षष्ठ]],
    [Seventh], [#sanskrit[सप्तम]],
    [Eights], [#sanskrit[अष्टम]],
    [Ninth], [#sanskrit[नवम]],
    [Tenth], [#sanskrit[दशम]],
  )
]
