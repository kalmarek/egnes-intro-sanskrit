#import "style.typ": *

#flex-heading-lv2(
  [#sandhi\ Vowels],
  [#sandhi],
)#general_index[sandhi][Vowel sandhi]

#[
#set enum(numbering: "(a)", indent: 0em, spacing: 2.5em)
#set par(spacing: 2em)

  #block(breakable: false)[

    #let breve(ch) = {
      context {
        let br = text(baseline: -1.5pt, [˘])
        let m1 = measure(ch)
        let m2 = measure(br)
        br + h(-m1.width / 2 - m2.width / 2) + ch
      }
    }
    #let both(a, b) = block(width: 3em)[#a#visible_space#b]
    #show table.cell.where(y: 0): upper
    #show table.cell.where(y: 1): romanization
    #set table.hline(stroke: .5pt)
    // #set table.vline(stroke: .6pt)

    #figure[
      // #line(length: 100%, stroke: .6pt)
      #table(
        columns: (3.5em,) * 8,
        fill: (x, y) => if (x < 7 and y >= 1 and calc.even(y)) { luma(95%) },
        inset: (x: 1em, y: 1.2em),
        row-gutter: 0em,
        column-gutter: 0em,

        table.cell(colspan: 7, inset: (x: 0em, y: 1em), align(center, [Final vowels])),
        block(height: 0em, move(dx: -2em, dy: .5em, [Initial Vowels])),
        // table.vline(start: 2, end: 13, x: 7),
        table.hline(start: 0, end: 7, y: 2),

        [#breve[ā]], [#breve[ī]], [#breve[ū]], [ṛ], [e], [ai],
        [au], [],
        [ā], [ya], [va], [ra], both([e], [']), both([ā], [a]), [āva], [#romanization[a]],
        [ā], [yā], [vā], [rā], both([a], [ā]), both([ā], [ā]), [āvā], romanization[ā],
        [e], [ī], [vi], [ri], both([a], [i]), both([ā], [i]), [āvi], romanization[i],
        [e], [ī], [vī], [rī], both([a], [ī]), both([ā], [ī]), [āvī], romanization[ī],

        [o], [yu], [ū], [ru], both([a], [u]), both([ā], [u]), [āvu], romanization[u],

        [o], [yū], [ū], [rū], both([a], [ū]), both([ā], [ū]), [āvū], romanization[ū],

        [ar], [yṛ], [vṛ], [ṝ], both([a], [ṛ]), both([ā], [ṛ]), [āvṛ], romanization[ṛ],

        [ai], [ye], [ve], [re], both([a], [e]), both([ā], [e]), [āve], romanization[e],

        [ai], [yai], [vai], [rai], both([a], [ai]), both([ā], [ai]), [āvai], romanization[ai],

        [au], [yo], [vo], [ro], both([a], [o]), both([ā], [o]), [āvo], romanization[o],

        [au], [yau], [vau], [rau], both([a], [au]), both([ā], [au]), [āvau], romanization[au],
      )
    ]<tables:vowel_sandhi>
  ]

#pagebreak(weak: true)
== #sandhi\ Final #romanization[ḥ]#general_index[sandhi][Final ḥ sandhi]

#[
    #let small = 0.6em
    #let large = 1.0em
    #set table(inset: (x, y) =>
      if y == 1 {(y: large)}
      else if y == 2 {(y: large)}
      else if y == 3 {(top: large, bottom: small)}
      else if y == 12 {(top: small, bottom: large)}
      else if y == 13 {(top: large, bottom: small)}
      else if y == 20 {(top: small, bottom: large)}
      else if y == 21 {(top: 1em, bottom: large)}
      else {(y: small)})

    #let ro(term) = romanization(term)
    #set par(leading: .5em)
    #set table.vline(
      stroke: (paint: luma(200), thickness: 0.5pt),
    )
    #set table.hline(
      stroke: (paint: luma(200), thickness: 0.5pt),
    )

    #table(
    columns: (1.2fr, 1fr, 1fr, 1fr, 0em),
    row-gutter: 0em,
    column-gutter: 1.5em,
    align: (center+bottom, center+bottom, center+bottom, left+bottom, left, center+horizon),
    table.hline(y: 2, start: 0, end: 3, stroke: (thickness: 0.5pt, paint: luma(0))),
    table.hline(y: 3, start: 0, end: 3, stroke: 0.5pt),
    table.hline(y: 13, start: 0, end: 3, stroke: 0.5pt),
    table.hline(y: 21, start: 0, end: 3, stroke: (thickness: 0.5pt, paint: luma(0))),

    table.vline(start: 3, end: 22, x: 1, stroke: 0.5pt),
    table.vline(start: 3, end: 22, x: 2, stroke: 0.5pt),

    table.cell(colspan: 3, align: top+center,
      upper([Final letters of first word])
    ), [], [],
    align(left, box(width: 8em)[
      Any vowel #ro[ḥ] or #ro[r]\
      (except #ro[aḥ] and #ro[āḥ])
      ]),
    [#ro[āḥ]], [#ro[aḥ]], table.cell(colspan: 2,align: left+top, block(height: 3.5em, upper([Initial letter of second word]))),

  [#ro[r]], [#ro[ā]], [~~#ro[a] #sidenote([
      Except that #ro[aḥ] + #ro[a] = #ro[o ']. For example:\
      #box(width: 100%)[#align(center)[#v(1em)
      #sanskrit[रामः] + #sanskrit[अत्र] = #sanskrit[रामोऽत्र]\
      #ro[rāmaḥ] + #ro[atra] = #ro[rāmo 'tra]]]])
      // #super([(2)])
    ], [vowels], align(center+horizon)[(a)],

  [#ro[r]], [#ro[ā]], [#ro[o]], [#ro[g]/#ro[gh]],
  table.cell(rowspan: 10, align: center+horizon,[(b)]),
  [#ro[r]], [#ro[ā]], [#ro[o]], [#ro[j]/#ro[jh]],
  [#ro[r]], [#ro[ā]], [#ro[o]], [#ro[ḍ]/#ro[ḍh]],
  [#ro[r]], [#ro[ā]], [#ro[o]], [#ro[d]/#ro[dh]],
  [#ro[r]], [#ro[ā]], [#ro[o]], [#ro[b]/#ro[bh]],

  [#ro[r]], [#ro[ā]], [#ro[o]], [nasals (#ro[n]/#ro[m])],
  [#ro[r]], [#ro[ā]], [#ro[o]], [#ro[y]/#ro[v]],
  [~~#ro[-]
    #sidenote([
      The #ro[ḥ] disappears, and if #ro[i] or #ro[u] precedes, it becomes #ro[ī] or #ro[ū].
      The #ro[r] disappears, and if #ro[a], #ro[i], or #ro[u] precedes, it becomes #ro[ā], #ro[ī], or #ro[ū].])
      // #super([(1)])
    ], [#ro[ā]], [#ro[o]], [#ro[r]],
  [#ro[r]], [#ro[ā]], [#ro[o]], [#ro[l]],
  [#ro[r]], [#ro[ā]], [#ro[o]], [#ro[h]],

  [#ro[ḥ]], [#ro[āḥ]], [#ro[aḥ]], [#ro[k]/#ro[kh]],
  table.cell(rowspan: 8, align: center+horizon,[(c)]),
  [#ro[ś]], [#ro[āś]], [#ro[aś]], [#ro[c]/#ro[ch]],
  [#ro[ṣ]], [#ro[āṣ]], [#ro[aṣ]], [#ro[ṭ]/#ro[ṭh]],
  [#ro[s]], [#ro[ās]], [#ro[as]], [#ro[t]/#ro[th]],
  [#ro[ḥ]], [#ro[āḥ]], [#ro[aḥ]], [#ro[p]/#ro[ph]],
  [#ro[ḥ]], [#ro[āḥ]], [#ro[aḥ]], [#ro[ś]],
  [#ro[ḥ]], [#ro[āḥ]], [#ro[aḥ]], [#ro[ṣ]/#ro[s]],
  [#ro[ḥ]], [#ro[āḥ]], [#ro[aḥ]], [end of line],
  // table.cell(colspan: 5)[
  // #set enum(numbering: "(1)", spacing: 1em)
  // + #block(width:106%)[The #ro[ḥ] disappears, and if #ro[i] or #ro[u] precedes, it becomes #ro[ī] or #ro[ū].
  //   The #ro[r] disappears, and if #ro[a], #ro[i], or #ro[u] precedes, it becomes #ro[ā], #ro[ī], or #ro[ū].]
  // + Except that #ro[aḥ] + #ro[a] = #ro[o ']. For example:
  //   #indent[
  //     #sanskrit[रामः] + #sanskrit[अत्र] = #sanskrit[रामोऽत्र]\
  //     #ro[rāmaḥ] + #ro[atra] = #ro[rāmo 'tra]
  //   ]
  // ]
)
// #v(-1.75em)
// #comment(lined: false)[][
//   #set enum(numbering: "(1)", spacing: 1em)
//   + The #ro[ḥ] disappears, and if #ro[i] or #ro[u] precedes, it becomes #ro[ī] or #ro[ū].
//     The #ro[r] disappears, and if #ro[a], #ro[i], or #ro[u] precedes, it becomes #ro[ā], #ro[ī], or #ro[ū].
//   + Except that #ro[aḥ] + #ro[a] = #ro[o ']. For example:
//     #indent[
//       #sanskrit[रामः] + #sanskrit[अत्र] = #sanskrit[रामोऽत्र]\
//       #ro[rāmaḥ] + #ro[atra] = #ro[rāmo 'tra]
//     ]
//   ]
]
Remember that final #romanization[s] follows the same rules as final #romanization[ḥ].

#pagebreak(weak: true)
== #sandhi\ Final #romanization[ḥ]

#align(center)[
  #let ro(t) = romanization(t)
  #let column_width = 2em
  #set table(row-gutter: .95em)
  #v(-1em)
  #table(
    columns: (auto, 5 * column_width, 3 * column_width, 3*column_width),
    inset: (left: 1.75em, right: .75em, y: 1em),
    row-gutter: 0em,
    align: (left, right, left),

    table.hline(y: 1, start: 1, stroke: (thickness: 0.5pt, paint: luma(200))),
    table.vline(start: 1, end: 3, x: 1, stroke: (thickness: 0.5pt, paint: luma(200))),
    table.vline(start: 1, end: 3, x: 2, stroke: (thickness: 0.5pt, paint: luma(200))),

    [], [],
    table(
      columns: 2 * (column_width,),
      ro[a], ro[ā],
      ro[i], ro[ā],
      ro[u], ro[ū],
      ro[ṛ], ro[ṝ],
      ro[ḷ], [],
      ro[e], ro[ai],
      ro[o], ro[au],
    ),
    table.cell(align: center+horizon)[(a)
    Vowels],

    table(
      columns: (2*column_width,),
      ro[ḥ],
      ro[ś],
      ro[ṣ],
      ro[s],
      ro[ḥ],
      [],
      ro[ḥ],
      ro[ḥ],
    ),

    table(
      columns: 3 * (column_width,),
      table.cell(rowspan: 6, []),
      ro[ka], ro[kha],
      ro[ca], ro[cha],
      ro[ṭa], ro[ṭha],
      ro[ta], ro[tha],
      ro[pa], ro[pha],
      [], [],
      ro[śa], ro[ṣa], ro[sa],
      table.cell(colspan: 3, [end of line]),
    ),

    table.cell(colspan: 2,
    table(
      columns: 4 * (column_width,),
      ro[ga], ro[gha], ro[ṅa], [],
      ro[ja], ro[jha], ro[ña], [],
      ro[ḍa], ro[ḍha], ro[ṇa], [],
      ro[da], ro[dha], ro[na], [],
      ro[ba], ro[bha], ro[ma], [],
      ro[ya], ro[ra], ro[la], ro[va],
      ro[ha], [], [], [],
    )
    ),
    [],
    table.cell(align: center, [(c)~~Unvoiced~consonants]),
    table.cell(colspan: 2, align: center, [(b)~~Voiced~consonants]),
  )
]

#[
  #set enum(numbering: "(a)", indent: 0em, spacing: 1.5em)
  + If the second word begins with a vowel:
    #indent(depth: 2em)[
      #v(-1em)
      #romanization[aḥ] becomes #romanization[a] (except #romanization[aḥ] + #romanization[a] = #romanization[o '])\
      #romanization[āḥ] becomes #romanization[ā]\
      vowel #romanization[ḥ] becomes #romanization[r]\
    ]
  + If the first letter of the second word is a voiced consonant:
    #indent(depth: 2em)[
      #v(-1em)
      #romanization[aḥ] becomes #romanization[o]\
      #romanization[āḥ] becomes #romanization[ā]\
      vowel #romanization[ḥ] becomes #romanization[r] (except before a word beginning in #romanization[r])
    ]
  + If the first letter of the second word is an unvoiced
    consonant, the #romanization[ḥ] (with any vowel in front of it) changes to the letter in the far left column.
]

#pagebreak(weak: true)
== #sandhi\ Final #romanization[m], #romanization[n], #romanization[t]#general_index[sandhi][Consonant sandhi]#general_index[sandhi][Final m]

#[
  #show table.cell.where(y: 0): upper
    #let small = 0.6em
    #let large = 1.0em
    #set table(inset: (x, y) =>
      if y == 1 {(y: large)}
      else if y == 2 {(top: large, bottom: large)}
      else if y == 3 {(top: large, bottom: small)}
      else if y == 12 {(top: small, bottom: large)}
      else if y == 13 {(top: large, bottom: small)}
      else if y == 21 {(top: 1em, bottom: 0em)}
      else {(y: small)})
    #let ro(term) = romanization(term)
    #set par(leading: .65em)
    #table(
    columns: (1fr, 1fr, 1.2fr, 1fr),
    // inset: 0em,
    row-gutter: 0em,
    column-gutter: (4*(0em), 1em),
    align: (..3*(center,), left),
    table.hline(y: 2, start: 0, end: 3, stroke: 0.5pt),
    table.hline(y: 3, start: 0, end: 3, stroke: (thickness: 0.5pt, paint: luma(200))),
    table.hline(y: 13, start: 0, end: 3, stroke: (thickness: 0.5pt, paint: luma(200))),
    table.hline(y: 21,start: 0, end: 3, stroke: 0.5pt),
    table.vline(x: 1, start: 2, end: 21, stroke: (thickness: 0.5pt, paint: luma(200))),
    table.vline(x: 2, start: 2, end: 21, stroke: (thickness: 0.5pt, paint: luma(200))),

    table.cell(colspan: 3, align: horizon+center,
      [Final letters of first word]
    ), block(height: 2.5em, [Initial letter of second word]),
    [#ro[t]], [#ro[n]], [#ro[m]], [],



  [#ro[d]], [~#ro[n]#sidenote[If the vowel before #ro[n] is short, #ro[n] becomes #romanization[nn].]], [#ro[m]], [vowels],

  [#ro[d]], [#ro[n]], [#ro[ṃ]], [#ro[g]/#ro[gh]],
  [#ro[j]], [#ro[ñ]], [#ro[ṃ]], [#ro[j]/#ro[jh]],
  [#ro[ḍ]], [#ro[ṇ]], [#ro[ṃ]], [#ro[ḍ]/#ro[ḍh]],
  [#ro[d]], [#ro[n]], [#ro[ṃ]], [#ro[d]/#ro[dh]],
  [#ro[d]], [#ro[n]], [#ro[ṃ]], [#ro[b]/#ro[bh]],

  [#ro[n]], [#ro[n]], [#ro[ṃ]], [nasals (#ro[n]/#ro[m])],
  [#ro[d]], [#ro[n]], [#ro[ṃ]], [#ro[y]/#ro[v]],
  [#ro[d]], [#ro[n]], [#ro[ṃ]], [#ro[r]],
  [#ro[l]], [~~#ro[ṃl]], [#ro[ṃ]], [#ro[l]],
  [~~~~~~~~~#ro[d]\(#ro[dh]\)#sidenote[The following #ro[h] becomes #ro[dh].]], [#ro[n]], [#ro[ṃ]], [#ro[h]],

  [#ro[t]], [#ro[n]], [#ro[ṃ]], [#ro[k]/#ro[kh]],
  [#ro[c]], [~~#ro[ṃś]], [#ro[ṃ]], [#ro[c]/#ro[ch]],
  [#ro[ṭ]], [~~#ro[ṃṣ]], [#ro[ṃ]], [#ro[ṭ]/#ro[ṭh]],
  [#ro[t]], [~~#ro[ṃs]], [#ro[ṃ]], [#ro[t]/#ro[th]],
  [#ro[t]], [#ro[n]], [#ro[ṃ]], [#ro[p]/#ro[ph]],

  [~~~~~~~~~#ro[c]\(#ro[ch])#sidenote[The following #ro[ś] becomes #ro[ch].]], [~~~~~~~~~#ro[ñ]\(#ro[ch])#sidenote[The following #ro[ś] _may_ become #ro[ch].]], [#ro[ṃ]], [#ro[ś]],
  [#ro[t]], [#ro[n]], [#ro[ṃ]], [#ro[ṣ]/#ro[s]],
  [#ro[t]], [#ro[n]], [#ro[ṃ]], [end of line],
  )
]


#pagebreak(weak: true)
== #sandhi\ Final #romanization[n]#general_index[sandhi][Final n]

Final #romanization[n] remains unchanged unless the following letter is in bold. Then:

  #align(right)[
  #let ro(t) = romanization(t)
  #let column_width = 1.5em
  #set table(row-gutter: 1.2em)
  #block(width: 125%)[
    #table(
    columns: (2*column_width, 4*column_width, 7*column_width, auto),
    inset: (x,y) => {
      let d = if x == 1 {
        (right: 1.75em)
      } else if x == 2 {
        (left: 1.75em)
      } else {
        (left: 0em)
      }
      if y == 1 {
        d.bottom = 0.0em
      } else if y == 2 {
        d.top = 0.75em
      }

      return d
    },
    column-gutter: 2em,
    align: (left, right, left, right),

    table.hline(y: 2, start: 0, stroke: (thickness: 0.5pt, paint: luma(200))),
    table.vline(start: 1, end: 3, x: 2, stroke: (thickness: 0.5pt, paint: luma(200))),

    table.cell(align: left)[#ro[n] becomes],
    table.cell(colspan: 2, [~]),
    table.cell(align: left)[#ro[n] becomes],

    table.cell(colspan: 2, [~]),
    table(
      columns: 2 * (column_width,),
      ro[a], ro[ā],
      ro[i], ro[ā],
      ro[u], ro[ū],
      ro[ṛ], ro[ṝ],
      ro[ḷ], [~],
      ro[e], ro[ai],
      ro[o], ro[au],
    ),
    table.cell(align: center+horizon)[#block(width: 4em)[#ro[nn] (e)\ (if~preceded~by a~short~vowel)]],

    table(
        columns: 1,
        [~],
        [(a)~#ro[ṃś]],
        [(b)~#ro[ṃṣ]],
        [(c)~#ro[ṃs]],
        [~],
        [~],
        [(d)~#ro[ñ(ch)]],
        [~]
      ),

    table(
      columns: 3 * (column_width,),
      table.cell(rowspan: 5, [~]),
      [ka], [kha],
      ro[ca], ro[cha],
      ro[ṭa], ro[ṭha],
      ro[ta], ro[tha],
      [pa], [pha],
      table.cell(colspan: 3, [~]),
      ro[śa], [ṣa], [sa],
      table.cell(colspan: 3, [end of line]),
    ),

    table(
      columns: 4 * (column_width,),
      [ga],   [gha],   [ṅa],   [~],
      ro[ja], ro[jha], [ña], [~],
      ro[ḍa], ro[ḍha], [ṇa], [~],
      [da], [dha], [na], [~],
      [ba], [bha], [ma], [~],
      [ya], [ra], ro[la], [va],
      [ha], [~], [~], [~],
    ),
    table(
      columns: (2*column_width,),
      [~],
      [#ro[ñ] (f)],
      [#ro[ṇ] (g)],
      [~],
      [~],
      [#ro[ṃl] (h)],
      [~],
      [~]
    )

  )
]
]
#[
  #set enum(numbering: "(a)", spacing: 1em)
+ #romanization[n + ca = ṃśca; n + cha = ṃścha]
+ #romanization[n + ṭa = ṃṣṭa; n + ṭha = ṃṣṭa]
+ #romanization[n + ta = msta; n + tha = ṃstha]
+ #romanization[n + śa = ñśa] or #romanization[ñcha]
+ #romanization[an + a = anna]\
  #romanization[an + i = anni]\
  #romanization[ān + u = ānu]
+ #romanization[n + ja = ñja; n + jha = ñjha]
+ #romanization[n + ḍa = ṇḍa; n + ḍha = ṇḍha]
+ #romanization[n + la = ṃlla]
]

== #sandhi\ Final #romanization[t]#general_index[sandhi][Final t]

  #[
  #let ro(t) = romanization(t)
  #let column_width = 1.5em
  #set table(row-gutter: 1.3em)
  #align(right)[
  #block(width: 125%)[
    #table(
    columns: (2*column_width, 4*column_width, 7*column_width, auto),
    inset: (x,y) => {
      let d = if x == 1 {
        (right: 1.75em)
      } else if x == 2 {
        (left: 1.75em)
      } else {
        (left: 0em)
      }
      if y == 1 {
        d.bottom = 0.25em
      } else if y == 2 {
        d.top = 0.75em
      }

      return d
    },
    row-gutter: 1em,
    column-gutter: 2em,
    align: (left, right, left, right),

    table.hline(y: 2, start: 0, stroke: (thickness: 0.5pt, paint: luma(200))),
    table.vline(start: 1, end: 3, x: 2, stroke: (thickness: 0.5pt, paint: luma(200))),

    table.cell(align: left)[#ro[t]~remains~#ro[t] except:],
    table.cell(colspan: 2, [~]),
    table.cell(align: left)[#ro[t] changes\ to #ro[d]~except:],

    table.cell(colspan: 2, [~]),
    table(
      columns: 2 * (column_width,),
      [a], [ā],
      [i], [ā],
      [u], [ū],
      [ṛ], [ṝ],
      [ḷ], [~],
      [e], [ai],
      [o], [au],
    ),
    table.cell(align: bottom+right)[#block(width: 4em)[(before~all~nasals)\ #ro[n] (d)]],

    table(
        columns: 1,
        [~],
        [(a)~#ro[c]],
        [(b)~#ro[ṭ]],
        [~],
        [~],
        [~],
        [(c)~#ro[c(ch)]],
        [~]
      ),


    table(
      columns: 3 * (column_width,),
      table.cell(rowspan: 5, [~]),
      [ka], [kha],
      ro[ca], ro[cha],
      ro[ṭa], ro[ṭha],
      [ta], [tha],
      [pa], [pha],
      table.cell(colspan: 3, [~]),
      ro[śa], [ṣa], [sa],
      table.cell(colspan: 3, align: right, [end of line]),
    ),

    table(
      columns: 4 * (column_width,),
      [ga],     [gha], ro[ṅa], [~],
      ro[ja], ro[jha], ro[ña], [~],
      ro[ḍa], ro[ḍha], ro[ṇa], [~],
      [da],     [dha], ro[na], [~],
      [ba],     [bha], ro[ma], [~],
      [ya],      [ra], ro[la], [va],
      ro[ha],     [~],    [~], [~],
    ),

    table(
      columns: (2*column_width,),
      align: right,
      [~],
      [#ro[j] (e)],
      [#ro[ḍ] (f)],
      [~],
      [~],
      [#ro[l] (g)],
      [#ro[d(dh)]~(h)],
      [~]
    )

  )
]
]
  ]

#[
  #set enum(numbering: "(a)", spacing: 1em)
+ #romanization[t + ca = cca; t + cha = ccha]
+ #romanization[t + ṭa = ṭṭa; t + ṭha = ṭṭha]
+ #romanization[t + śa = ccha]
+ #romanization[t +] all nasals #romanization[\= n]nasal
+ #romanization[t + ja = jja; t + jha = jjha]
+ #romanization[t + ḍa = ḍḍa; t + ḍha = ḍḍha]
+ #romanization[t + la = lla]
+ #romanization[t + ha = ddha] (#romanization[ha] becomes #romanization[dha].)
]



== #sandhi\ Final #romanization[m]#general_index[sandhi][Additional rules]

+ If the next word begins in a consonant, the #romanization[m] becomes #romanization[ṃ] and
  is pronouced (and could be written) as the nasal
  corresponding to the first letter of the next word.
+ If the next word begins in a vowel of the #romanization[m] is at the end of a
  line, the #romanization[m] remains the same. The #romanization[m] remains the same because the mouth is not preparing to close at a specific point of contact as it would if the next word began with a consonant.
  #v(2em)

== #sandhi\ Final #romanization[r]

+ Before a word beginning with a voiced letter (other than #romanization[r]), the #romanization[r]
  remains the same.
+ Before an unvoiced letter or the end of a line, #romanization[r] follows the same rules as #romanization[ḥ].
+ Final #romanization[r], whether original of derived from #romanization[ḥ], cannot stand before another #romanization[r]. The final #romanization[r] is dropped and the vowel before it made long if it is short.
  #v(2em)

== Final #romanization[P], #romanization[t], #romanization[k]

+ Before a voiced sound these letters become voiced, and before
  an unvoiced sound they remain the same.
+ Before a nasal these letters become the nasal of their row (#romanization[varga]).
+ Before #romanization[h] these letters become voiced and the #romanization[h] becomes their
  voiced aspirated counterpart.
  #v(2em)

== Final #romanization[ṅ] and #romanization[ṇ]#general_index[sandhi][Internal sandhi]
+ Like final #romanization[n], final #romanization[ṅ] becomes #romanization[ṅṅ] before vowels if the #romanization[ṅ] is
  preceded by a short vowel. Also, final #romanization[ṇ] becomes #romanization[ṇṇ] before
  vowels if the #romanization[ṇ] is preceded by a short vowel.
  #v(2em)

== Initial #romanization[ch]
+ Initial #romanization[ch] becomes #romanization[cch] if the first word ends in a short vowel.
  The #romanization[ch] also becomes #romanization[cch] after the preposition #romanization[ā] and #romanization[mā].
  #v(2em)

== Internal #sandhi #romanization[s] to #romanization[ṣ]
#table(
    columns: (1fr, 1fr, .8fr, 1fr),
    stroke: (paint: luma(200), thickness: 0.5pt),
    align: center+horizon,
    inset: (x: 1em, y: 1em),
    column-gutter: 0em,
    [any vowel (but #romanization[a] or #romanization[ā]), #romanization[k], or #romanization[r]],
    [in spite of\ intervening #romanization[ṃ] or #romanization[ḥ]],
    [changes #romanization[s] to #romanization[ṣ]],
    [unless final or followed\ immediately by #romanization[r]]
  )
  #v(2em)

== #romanization[n] to #romanization[ṇ]
#[
  #let ro(t) = romanization(t)

  #table(
    columns: (3em, 3fr, 1.2fr, 1.7fr),
    column-gutter: 0em,
    stroke: (paint: luma(200), thickness: 0.5pt),
    align: (center+horizon, left+horizon, center+horizon, center+horizon),
    inset: (x: .5em, y: .75em),
    [#ro[r],\ #ro[ṛ],\ #ro[ṝ],\ #box[or #ro[ṣ]]],
    [
    #block(above: .5em, below: .5em)[
      #table(
      columns: 6,
      align: center,
      inset: (x: 0.2em),
      row-gutter: 1em,
      column-gutter: 0em,
      table.cell(rowspan: 4, align: top+right, [unless]),
      [#ro[c],], [#ro[ch],], [#ro[j],], [#ro[jh],], [#ro[ñ],],
      [#ro[ṭ],], [#ro[ṭh],], [#ro[ḍ],], [#ro[ḍh],], [#ro[ṇ],],
      [#ro[t],], [#ro[th],], [#ro[d],], [#ro[dh],], [],
      [#ro[l],], [#ro[ś],], [#ro[s]],
      table.cell(colspan: 2, place([interferes]))
    )]

    ],
    [changes #ro[n] to #ro[ṇ]],
    [if followed by vowels, #ro[m], #ro[y], #ro[v] or #ro[n]]
  )
]
]
