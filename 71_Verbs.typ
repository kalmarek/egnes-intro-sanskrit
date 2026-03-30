#import "style.typ": *

#pagebreak(weak: true)

#flex-heading-lv2(
  [Verbs],
  [Verbs]
)#general_index[Verb table]

#[
  #show table.cell: it => {
    if it.y == 0 {
      smallcaps(it)
    } else if it.x == 4 {
      it
    } else {
      sanskrit(it)
    }
  }
  #set par(leading: 1.25em)

  #align(right)[#block(width: 140%)[
#table(
  columns: 5,
  row-gutter: (2em, 3.3em),
  column-gutter: 1em,

  table.header(
    smallcaps[Root],
    smallcaps[Present],
    smallcaps[Gerund],
    smallcaps[Future],
    smallcaps[English],
  ),
  [अव गम्], [अवगच्छति], [अवगत्य\ अवगम्य], [अवगमिष्यति], [understand<tables:verb_forms:start>],

  [आ गम्], [आगच्छति], [आगत्य\ आगतम], [आगमिष्यति], [come],

  [आ नी], [आनयति], [आनीय], [आनेष्यति], [bring],

  [उद् भु], [उद्भवति], [उद्भूय], [उद्भविष्यति], [born],

  [उद् स्था], [उत्तिष्ठति], [उत्स्थाय], [उत्स्थासयति], [stand up],

  [उप गम्], [उपगच्छति], [उपगत्य\ उपगम्य], [उपगमिष्यति], [approach],

  [गम्], [गच्छति], [गतवा], [गमिष्यति], [go],

  [गुप्], [गोपयति], [गुपित्वा], [गोप्स्यति], [protect],

  [चिन्त्], [चिन्तयति\ चिन्तयते], [चिन्तयित्वा], [चिन्तयिष्यति\ चिन्तयिष्यते], [think],

  [जि], [जयति], [जित्वा], [जेष्यति], [conquer],

  [दृश्], [पश्यति], [दृष्ट्वा], [द्रक्ष्यति], [see],

  [नी], [नयति\ नयते], [नीत्वा], [नेष्यति], [lead],

  [पठ्], [पठति], [पठित्वा], [पठिष्यति], [read],

  [पश्], [पश्यति], [दृष्ट्वा], [द्रक्ष्यति], [see],

  [पा], [पिबति], [पीत्वा], [पास्यति], [drink],

  [प्रछ्], [पृच्छति], [पृष्ट्वा], [प्रक्ष्यति], [ask],

  [प्रति गम्], [प्रतिगच्छति], [प्रतिगत्य\ प्रतिगम्य], [प्रतिगमिष्यति], [return],

  [बुध्], [बोधति\ बोधते], [बुद्ध्वा], [बोधिष्यति], [know],

  [भाष्], [भाषते], [भाषित्वा], [भाषिष्यते], [speak],

  [भू], [भवति], [भूत्वा], [भविष्यति], [be],

  [मन्], [मन्यते], [मत्वा], [मंस्यति], [think],

  [रम्], [रमते], [रत्वा], [रंस्यते], [enjoy],

  [लभ्], [लभते], [लब्ध्वा], [लप्स्यते], [obtain],

  [वद्], [वदती], [उदित्वा], [वदिष्यति], [speak],

  [वस्], [वसति], [उषित्वा], [वत्स्यति], [live],

  [शुभ्], [शोबते], [शुभित्वा], [शोभिष्यते], [shine],

  [सेव्], [सेवते], [सेवित्वा], [सेविष्यते], [serve],

  [स्था], [तिष्ठति], [स्थत्वा], [स्थास्यति], [stand],

  [स्मि], [स्मियते], [स्मित्वा], [स्मेष्यते], [smile],

  [स्मृ], [स्मरति], [स्मृत्वा], [स्मरिष्यति], [remember],

  [हस्], [हसति], [हसितवा], [हसिष्यति], [laugh],
)
]
]
]
// todo: this is a hack
~<tables:verb_forms:end>

#pagebreak(weak: true)
#import "tables.typ"

#margin-heading[#text(size: 2em)[#root[as]]]
// #v(1em)
== Present~Indicative
#tables.conjugation(
  [//Root #root[as] (active) to be
  ],

  [3rd], [अस्ति], [स्तः], [सन्ति],
  [2nd], [असि], [सथः], [सथ],
  [1st], [अस्मि], [स्वः], [स्मः],

) #general_index(display : [#root[as] (active)])[as (active)]
#v(2em)

== Imperfect

#tables.conjugation(
  [//Root #root[as] (active) to be
  ],

  [3rd], [आसीत्], [आस्ताम्], [आसन्],
  [2nd], [आसीः], [आस्तम्], [आस्त],
  [1st], [आसम्], [आस्व], [आस्म],

) #general_index(display : [#root[as] (imperfect)])[as (imperfect)]

#pagebreak(weak: true)
== Present Active#general_index[Verb table]
#tables.conjugation(
  [Root #root[gam] (active) go],
  [3rd], [गच्छति], [गच्छतः], [गच्छन्ति],
  [2nd], [गच्छसि], [गच्छथः], [गच्छथ],
  [1st], [गच्छामि], [गच्छावः], [गच्छामः],
)

== Present Middle
#tables.conjugation(
  [Root #root[bhāṣ] (middle) speak],
  [3rd], [भाषते], [भाषेते], [भाषन्ते],
  [2nd], [भाषसे], [भाषेथे], [भाषध्वे],
  [1st], [भाषे], [भाषावहे], [भाषामहे]
)

== Endings <tables:verb_endings:present>

#grid(columns: (1fr, 1fr),
  align(center)[#smallcaps[Present Active]\
    #v(-1em)
    #tables.conjugation-table(
      columns: (2em, 3em, 3em, 4em),
      function: sanskrit,
      header-text: (text(size: 0.8em)[Singular], text(size: 0.8em)[Dual], text(size: 0.8em)[Plural]),
    [3rd], [ति], [तस्], [अन्ति],
    [2nd], [सि], [थस्], [थ],
    [1st], [मि], [वस्], [मस्],
    )
  ],
  align(center)[#smallcaps[Present Middle]\
    #v(-1em)
    #tables.conjugation-table(
      columns: (1.5em, 3em, 3em, 4em),
      function: sanskrit,
      header-text: (text(size: 0.8em)[Singular], text(size: 0.8em)[Dual], text(size: 0.8em)[Plural]),

  [],[ते], [इते], [अन्ते],
  [],[से], [इथे], [ध्वे],
  [], [इ], [वहे], [महे],
  )]
)

Note that when a word is formed, final #romanization[s] becomes #romanization[ḥ] due to #sandhi.

== Imperfect Active#general_index[Imperfect active]
#tables.conjugation(
  [Root #root[gam] (active) go],
  [3rd], [अगच्छत्], [अगच्छताम्], [अगच्छन्],
  [2nd], [अगच्छः], [अगच्छतम्], [अगच्छत],
  [1st], [अगच्छम्], [अगच्छाव], [अगच्छाम],
)

== Imperfect Middle#general_index[Imperfect middle]

#tables.conjugation(
  [Root #root[bhāṣ] (middle) speak],
  [3rd], [अभाषत], [अभाषेताम्], [अभाषन्त],
  [2nd], [अभाषथाः], [अभाषेथाम्], [अभाषध्वम्],
  [1st], [अभाषे], [अभाषावहि], [अभाषामहि]
)

== Endings <tables:verb_endings:imperfect>

#grid(columns: (1fr, 1fr),
  align(center)[#smallcaps[Imperfect Active]\
    #v(-1em)
    #tables.conjugation-table(
      columns: (2em, 3em, 3em, 4em),
      function: sanskrit,
      header-text: (text(size: 0.8em)[Singular], text(size: 0.8em)[Dual], text(size: 0.8em)[Plural]),
    [3rd], [त्], [ताम्], [अन्],
    [2nd], [स्], [तम्], [त],
    [1st], [अम्], [व], [म],
    )
  ],
  align(center)[#smallcaps[Imperfect Middle]\
    #v(-1em)
    #tables.conjugation-table(
      columns: (1.5em, 3em, 3em, 4em),
      function: sanskrit,
      header-text: (text(size: 0.8em)[Singular], text(size: 0.8em)[Dual], text(size: 0.8em)[Plural]),

  [],[त], [इताम्], [अन्त],
  [],[थास्], [इथाम्], [ध्वम्],
  [], [इ], [वहि], [महि],
  )]
)

Note that when a word is formed, final #romanization[s] becomes #romanization[ḥ] due to #sandhi.

