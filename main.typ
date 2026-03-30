#import "style.typ": *

#set page(
  width: 190mm,
  height: 250mm,
  // margin: (left: 18mm + textindent, right: 18mm, top: 34mm, bottom: 21mm),
  header: context {
    let thesection = hydra(skip-starting: true, 1)
    let inner = upper(thesection)
    let outer = counter(page).display()
    if thesection != none {
      page_head(inner, outer)
    } else {
      page_head([], [])
    }
  },
  footer: none,
  header-ascent: 30% + 2em,
  footer-descent: 0em,
)

#import "@preview/marginalia:0.2.3" as marginalia

#show: marginalia.setup.with(
  inner: (far: 15mm, width: margin_width - 8mm, sep: 8mm),
  outer: (far: 0mm, width: 18mm, sep: 0mm),
  top: 32mm,
  bottom: 20mm,
  // book: false,
  // clearance: 12pt,
)

#set text(
  style: "normal",
  weight: "regular",
  hyphenate: false,
  size: text-size,
  font: serif-font,
  ligatures: true,
)

#set par(
  leading: par-leading,
  spacing: par-spacing,
  linebreaks: "optimized",
)

#set enum(
  spacing: par-spacing,
  numbering: "1. a.",
  indent: -1.25em,
  number-align: right,
)

#let enum-level = state("enum-level", 1)
#show enum.item: it => {
  enum-level.update(l => l + 1)
  it
  enum-level.update(l => l - 1)
}
#show enum: it => context {
  set enum(indent: 0em, body-indent: 0.75em) if enum-level.get() == 2
  set enum(indent: 1em) if enum-level.get() != 2
  it
}

#set table(
  stroke: none,
  inset: 0.0em,
  row-gutter: 1.5em,
  column-gutter: 1em,
  align: left,
)
// #show table: it => {
//   block(
//     // inset: (y:1em),
//     // spacing: 2em,
//     it
//   )
// }

#set heading(
  outlined: false,
)

#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  Lesson.step()
  set text(
    size: 1.2 * text-size,
    font: sans-font,
    weight: "semibold",
  )
  box[
    #v(4em)
    #context {
      let n = Lesson.get().first()
      place(
        dx: -margin_width - 4mm,
        // dy: -3em,
        text(
          size: 10 * text-size,
          font: "TeX Gyre Termes",
          // size: 12*text-size,
          // font: "New Computer Modern",
          // weight: 400,
          [#n],
        ),
      )
    }
    #upper(it.body)
  ]
}


#show heading.where(level: 2): it => [
  #margin-heading(upper(it.body))
]

#show heading.where(level: 3): it => {
  block(above: 2em, below: 1.5em, smallcaps(text(it.body)))
}

#set outline.entry(fill: [])

#show outline.entry.where(level: 1): it => {
  show outline.entry: t => text(weight: "bold", font: sans-font, upper(t))
  [#v(2em) #it]
}

#show outline.entry.where(level: 2): it => {
  in-outline.update(true)
  it
  in-outline.update(false)
}

#drafting.set-page-properties()
#drafting.note-outline(level: 3)

#include "00_Titlepage.typ"

#show: marginalia.show-frame

#set page(
  numbering: "i",
)
#[
  #show heading.where(level: 1): it => {
    set text(
      size: 1.2 * text-size,
      font: sans-font,
      weight: "semibold",
    )
    [#upper(it.body)]
  }

  #outline(title: [Contents], depth: 2)
]


#pagebreak(weak: true)

#include "01_Introduction.typ"

#set par(spacing: 2.5em)
#set enum(spacing: 2.5em)
#set page(
  numbering: "1",
)
#counter(page).update(1)
#counter(heading).update(0)

#include "Lesson/01.typ"
#include "Lesson/02.typ"
#include "Lesson/03.typ"
#include "Lesson/04.typ"
#include "Lesson/05.typ"
#include "Lesson/06.typ"
#include "Lesson/07.typ"
#include "Lesson/08.typ"
#include "Lesson/09.typ"
#include "Lesson/10.typ"
#include "Lesson/11.typ"
#include "Lesson/12.typ"
#include "Lesson/13.typ"
#include "Lesson/14.typ"
#include "Lesson/15.typ"
#include "Lesson/16.typ"
#include "Lesson/17.typ"
#include "Lesson/18.typ"

#include "50_Answers.typ"
#include "70_Declensions.typ"
#include "71_Verbs.typ"
#include "72_Prefixes.typ"
#include "73_Numbers.typ"
#include "74_Sandhi.typ"
#include "75_Vocabulary.typ"
#include "80_Quotations.typ"
#include "90_Index.typ"
