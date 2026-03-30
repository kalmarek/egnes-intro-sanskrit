#let titlepage(
  title: lorem(3),
  subtitle: lorem(2),
  publisher: (),
  ..authors) = {
  let by = authors
    .pos()
    .join(linebreak())
    // .map(smallcaps)

  set page(
    margin: (left: 18mm, right: 18mm, top: 18mm, bottom: 18mm),
    header: none,
  )

  set align(center)
  set text(
      font: "Baskervaldx",
      weight: 400,
      ligatures: true,
  )
  {
    v(1fr)
    text(size: 3em, tracking: -.5pt, title)
    v(1fr)
    text(size: 1.3em, upper(subtitle))
    v(1fr)
    text(size: 1.5em, smallcaps(by))


    v(50%)
  }
  {
    set text(size: 1.3em)
    block(width: 65%)[
      #upper(publisher.name) #upper(publisher.sub)
      #text([ #sym.bullet ]) #upper(publisher.city)
    ]
  }

  set page(
    margin: (left: 18mm, right: 18mm, top: 34mm, bottom: 18mm),
    header: none,
  )

  [
    #set par(spacing: 3em, leading: 0.5em)
    #[#set text(
      size: 1em,
      font: "Libertinus Serif",
      weight: 400,

    )
    _3rd Reprint: Delhi, *2018*_\
    _Fourth Revised Edition: Delhi, 2011_\
    // _Second Revised Edition: Delhi, 1996_\
    // _Third revised Edition: Delhi, 2003_\
    _First Indian Edition: Delhi, 1994_\
    _First Published: California, 1989_
    ]
    #v(.5fr)
    #set text(size: 1em
      , font: "BaskervilleF")

    © 1989 by #upper([#by])\
    All Rights Reserved

    ISBN: 978-81-208-1140-9 (Cloth)\
    ISBN: 978-81-208-3814-7 (Paper)

    #v(.5fr)
    #text(size: 1.3em, tracking: 1.3pt, weight: 500, upper(publisher.name))
    #v(-3em)
    #par(leading: 0.35em)[
    41 U.A. Bungalow Road, Jawahar Nagar, Delhi 110 007\
    1 B, Jyoti Studio Compound, Kennedy Bridge, Nana Chowk, Mumbai 400 007\
    203 Royapettah High Road, Mylapore, Chennai 600 004\
    236, 9th Main III Block, Jayanagar, Bangalore 560 011\
    8 Camac Street, Kolkata 700 017\
    Ashok Rajpath, Patna 800 004\
    Chowk, Varanasi 221 001]
    #v(2fr)

    #[
      #set text(size: 0.9em, font: "Libertinus Serif")
    The distribution of this book
    is *prohibited*
    without
    \ the written *permission of the publisher*.\
    For private use only.\



    Typeset using `typst` with love.\
    #datetime.today().display("[day] [month repr:long] [year]").
    ]

    // #text(size: 0.9em, spacing: 200%)[
    // Printed in India\
    // #upper([
    //   By Jainendra Prakash Jain at Shri Jainendra Press\
    //   A-45 Naraina, Phase-I, New Delhi 110 028\
    //   and Published by Narendra Prakash Jain for\
    //   #publisher.name #publisher.sub,\
    //   #publisher.address
    // ])
    // ]
  ]
  pagebreak()
}

#titlepage.with(
  title: [Introduction to Sanskrit],
  subtitle: [part one],
  publisher: (
    name: [Motilal Banarsidass],
    sub: [Publishers Private Limited],
    city: [Delhi],
    address: [Bungalow Road, Delhi 110 007]
  ),
  [Thomas Egenes]
)()


