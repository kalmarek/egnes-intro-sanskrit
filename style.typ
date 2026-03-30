#import "@preview/hydra:0.6.1": hydra

#let serif-font = "Libertinus Serif"
#let sans-font = "Libertinus Sans"
#let sanskrit-font = "Annapurna SIL"
// #let sanskrit-font-fallback = "Noto Serif Devanagari"
#let sanskrit-font-fallback = "Tiro Devanagari Sanskrit"

#let text-size = 11pt
#let par-leading = 0.9em
#let par-spacing = 2em

#let margin_width = 50mm

#let indent(depth: 3.5em, above: 0em, below: 0em, content) = block(inset: (
  left: depth,
  top: above,
  bottom: below,
))[#content]

#let in-outline = state("in-outline", false)

#let flex-heading-lv2(outlined: true, long, short) = heading(level: 2, outlined: outlined, context if in-outline.get() {
  short
} else { long })

#let romanization(term) = text(maroon, weight: "bold", term)

#let root(term) = box(
  romanization[#text(font: "Baskervaldx", [√#sym.space.hair])#term]
  )

#let _sanskrit(term, font: sanskrit-font) = text(
  font: font,
  size: 1.4em,
  weight: "regular",
  fallback: false,
  top-edge: "x-height",
  term,
)

#let sanskrit(term, font: sanskrit-font) = text(lang: "san", _sanskrit(term, font: font))
#let sanskrit-fallback(term) = sanskrit(term, font: sanskrit-font-fallback)
#let sanskrit-traditional(term) = text(
  lang: "nep",
  stylistic-set: 15,
  _sanskrit(term)
)


#let table_sa(term) = text(size: 6 * text-size, sanskrit(term))
#let table_ro(term) = text(size: 2 * text-size, term)

#let devanāgarī = romanization[devanāgarī]
#let sandhi = romanization[sandhi]

#let lesson(title) = {
  heading(
    depth: 1,
    outlined: true,
    supplement: [Lesson],
    // numbering: english_numbers
    numbering: "1",
    [Lesson #title],
  )
}

#let chapter_summary(sections, page_break: true) = {
  let summary = sections
    .pairs()
    .map(((s, c)) => (
      [#s:],
      list(marker: none, tight: true, body-indent: 0em, ..c),
    ))
    .flatten()
  grid(
    columns: (7em, auto),
    row-gutter: 2em,
    ..summary
  )
  if page_break {
    pagebreak()
  }
}

#let english_numbers(first, ..nums) = {
  let vals = (
    "zero",
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine",
    "ten",
    "eleven",
    "twelve",
    "thirteen",
    "fourteen",
    "fifteen",
    "sixteen",
    "seventeen",
    "eighteen",
    "nineteen",
    "twenty",
  )
  if nums.pos().len() == 0 {
    return vals.at(first)
  }
}
#let lesson_number(first, ..other) = {
  if other.pos().len() == 0 {
    return [Lesson #english_numbers(first)]
  }
}

#let thesection(level: 1) = {
  return hydra(skip-starting: false, level)
}

#let page_head(inner, outer, lined: true) = {
  context {
    let W = 100% + margin_width
    let head = block(width: W, above: 1em)[
      #if calc.odd(here().page()) {
        [#inner #h(1fr) #outer]
      } else {
        [#outer #h(1fr) #inner]
      }
    ]
    move(dx: -margin_width)[
      #if lined {
        line(length: W, stroke: 0.5pt)
      }
      #head
    ]
  }
}

#let Lesson = counter("Lesson")
#let chapter(content) = [
  #set page(header: page_head([], []))
  #context {
    let n = context Lesson.get().first()
    v(2em)
    place(
      dx: -margin_width - 4mm,
      // dy: 1em,
      text(
        size: 10 * text-size,
        font: "TeX Gyre Termes",
        // size: 12*text-size,
        // font: "New Computer Modern",
        // weight: 400,
        n,
      ),
    )
    heading(supplement: [Lesson], outlined: true, [Lesson #Lesson.display(english_numbers)])
  }

  #chapter_summary(content)
  #pagebreak()
]

#import "@preview/drafting:0.2.2"

#let todo(term) = {
  drafting.margin-note(page-offset-x: 15mm, margin-left: margin_width - 8mm, text(red.darken(40%))[*TD*: #term])
}

#let errata(term) = {
  // set par(leading: 0.5em)
  drafting.margin-note(
    stroke: blue,
    page-offset-x: 15mm,
    // page-offset-y: -1em,
    margin-left: margin_width - 8mm,
    par(leading: 0.5em, text(blue.darken(40%))[
      *Errata*:\
      #term])
  )
}


#let notecounter = counter("notecounter")
#let sidenote(numbered: true, content) = {
  if numbered {
    notecounter.step()
    text(weight: "bold", super(context { notecounter.display() }))
  }
  let note = {
    par(leading: 0.5em, [#if numbered {
        text(weight: "bold", {
          super(context { notecounter.display() })
        })
      }
      #text(size: 0.7em, font: sans-font, content)
    ])
  }
  drafting.margin-note(
    stroke: none,
    page-offset-x: 12mm,
    margin-left: margin_width,
    dy: auto,
  )[#note]
}

// large devanagari letters in tables:

#let dagger = super(text(size: 1.5em, baseline: -0.3em, sym.ast))

#let small(term) = text(size: 0.8*text-size, term)

#let text-underbrace(content, label, spacing: 0.3em, left: 0.1em, right: 0.1em, alignment: center) = {
  context {
    let content-width = measure(content).width
    let brace-height = spacing - 1pt

    let bbb = box[
      #stack(
        dir: ttb,
        spacing: spacing,
        curve(
          // fill: blue.lighten(80%),
          stroke: 0.04em,
          curve.move((-left, -brace-height)),
          curve.line((-left, 0pt)),
          curve.line((content-width + right, 0pt)),
          curve.line((content-width + right, -brace-height)),
        ),
        align(alignment,
        if alignment == center {
          block(width: 0em, small(label))
        } else {
          small(label)
        }),
      )
    ]
    let m = measure(bbb)

    box[#content #place(dy: spacing, bbb)]
  }
}

#let margin-heading(content) = [
  #set align(left)
  #set text(text-size, font: sans-font, weight: "semibold")
  #context {
    let parheadwidth = 20% * page.width
    let body_size = measure(content)
    let heading_text = block(content, width: parheadwidth)
    let measured_size = measure(heading_text)

    v(par.spacing, weak: true)
    block(
      breakable: false,
      above: 0em,
      below: -measured_size.height,
    )[
      #move(dx: -margin_width, heading_text)
      // #v(-measured_size.height - 0.65em)
      // #if measured_size.height == body_size.height and body_size.width > parheadwidth.to-absolute() {
      // } else {
      //   v(-measured_size.height - 0.65em)
      // }
    ]
  }
]

#let breve(ch) = {
  context {
    let br = text(baseline: -1.5pt, [˘])
    let m1 = measure(ch)
    let m2 = measure(br)
    br + h(-m1.width / 2 - m2.width / 2) + ch
  }
}

#let visible_space = text-underbrace(left: 0em, right: 0em)[#sym.space.en][]

#let heading_lvl2(outlined: true, in-outline-as: none, vowel, gender) = {
  flex-heading-lv2(
    outlined: outlined,
    [
      #text(size: 2em)[#romanization(vowel)]\
      #upper[#gender]
    ],
    if in-outline-as == none { [#gender #romanization(vowel)] } else { in-outline-as },
  )
}

#let comment(lined: true, inset: (:), mark, content) = {
  set par(leading: 0.6em)
  set text(size: 0.9em)
  block(breakable: false, inset: inset, stack(
    dir: ttb,
    spacing: 0.5em,
    if lined {
      line(
        stroke: 0.5pt,
        length: 30%,
      )
    },
    [#mark #content],
  ))
}

#let declension_table(
  columns: (10%, 30%, 30%, 30%),
  align: (left, left + horizon, left + horizon, left + horizon),
  row-gutter: (2em, 3em),
  function: sanskrit,
  header: ([], [#smallcaps[Singular]], [#smallcaps[Dual]], [#smallcaps[Plural]]),
  fill: none,
  comment_below: none,
  ..content,
) = {
  show table.cell: it => {
    if it.y == 0 {
      it
    } else if it.x == 0 {
      it
    } else {
      function(it)
    }
  }
  set block(fill: fill, outset: .75em, radius: 2pt) if fill != none

  context {
    let T = table(
      columns: (..columns,),
      align: (..align,),
      row-gutter: row-gutter,
      column-gutter: 1em,
      inset: (x: 0em, y: 0em),
      if header != [] {
        table.header(..header)
      },
      ..content,
    )
    let C = if comment_below != none {
      let comment-spacing = if type(row-gutter) == array {
        -row-gutter.last()
      } else {
        -row-gutter
      }
      comment(lined: true, inset: (
        left: columns.at(0) + 1em, // column gutter
        top: comment-spacing / 2,
      ))[\*][#comment_below]
    }
    block(
      above: 1.5em,
      breakable: false,
      T + C,
    )
  }
}

#let alternate(a,b,c,d) = {
  table(columns: 2, row-gutter: 0.5em, column-gutter: 0.3em,
  align: (left, center),
    sanskrit(a), sanskrit(b), romanization(c), [(#romanization(d))]
  )
}


#let sandhi-example(
  equal: [=],
  a-sa,
  b-sa,
  c-sa,
  a-ro,
  b-ro,
  c-ro,
  ..options,
) = {
  block(breakable: false,
  table(
    columns: (auto, auto, auto, auto, auto),
    column-gutter: .5em,
    row-gutter: 1em,
    ..options,
    sanskrit(a-sa), [+], sanskrit(b-sa), equal, sanskrit(c-sa),
    romanization(a-ro), [+], romanization(b-ro), equal, romanization(c-ro),
  ))
}

#let devanagari_enum(body) = context {
  let items = body
    .children
    .filter(x => x.func() == enum.item)
    .enumerate()
    .map(((i, x)) => [#x.body~#box[#sanskrit[।#numbering("१", i + 1)।]]])
  enum(..items)+v(enum.spacing/2)
}

#import "@preview/marginalia:0.2.3" as marginalia

#show: marginalia.show-frame

#show: marginalia.setup.with(
  inner: ( far: 10mm, width: margin_width, sep: 5mm ),
  outer: ( far: 5mm, width: 18mm, sep: 0mm ),
  top: 32mm,
  bottom: 20mm,
  // book: false,
  // clearance: 12pt,
)
#let note = marginalia.note.with(side: "inner", text-style: (font: sans-font, size: 0.75*text-size))

#let compound-vigraha(compound_sa, compound_ro, vigraha_sa, vigraha_ro, compound_en, analysis_en) = block(breakable: false)[
  #table(
      columns: (auto, auto, auto, ),
      column-gutter: 1.5em,
      [
        #sanskrit[#compound_sa]\
        #romanization[#compound_ro]\
      ],
      [#romanization[vigraha:]],
      [
        #sanskrit[#vigraha_sa]\
        #romanization[#vigraha_ro]
      ],
      [#compound_en],
      [analysis:],
      [#analysis_en],
  )
]

#let pages(l1, l2, supplement: "page") = {
  if supplement == "page"{
    let p1 = ref(l1, form: "page", supplement: none)
    let p2 = ref(l2, form: "page", supplement: none)
    if p1 == p2 {
      [page #p1]
    // } else if p2 == p1+1 {
    //   [pages #p1 and #p2]
    } else {
      [pages #p1]+[--]+[#p2]
    }
  } else {
    panic("Not implemented yet")
  }
}

#import "@preview/in-dexter:0.7.2": index

#let grammar(
  ..terms, term, supplement) = {
  let display = romanization(term)
  if supplement != none {
    display = [#display: #supplement]
  }

  romanization[#term];
  index(
    index: "grammar",
    apply-casing: false,
    display: box(width: 85%)[#par[#display]],
    ..terms,
    term
  )
}

#let general_index = index.with(index: "general",     apply-casing: false)

// #let general_index(
//   // display: none,
//   ..terms) = {
//   // if display == none {
//     index(
//       index: "general",
//       ..terms,
//     )
//   // } else {
//   // index(
//   //   index: "general",
//   //   display: display,
//   //   ..terms,
//   // )
//   // }
// }
