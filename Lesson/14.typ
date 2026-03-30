#import "../style.typ": *

#{
  let content = (
    Alphabet: (
      [The #sandhi rules for final #romanization[ḥ]],
    ),
    Grammar: (
      [Verb prefixes and the imperfect active],
    ),
    Vocabulary: (
      [More verbs],
    ),
  )

  [#lesson[Fourteen]<Lesson:14>]
chapter_summary(page_break: true, content)
}

== Alphabet: #sandhi~rules for~final~#romanization[ḥ]#general_index[sandhi][Final ḥ sandhi]

Now we will memorize the sandhi rules for words ending in #romanization[ḥ].
These rules were presented in charts in @Lesson:9. Both charts in
@Lesson:9 present the same rules, but it will be easier to follow the
structure of the second chart on #ref(<sandhi:chart:alphabet>, form: "page"). While the first word ends
in #romanization[ḥ], the second word may begin with any letter of the alphabet.
Notice that the chart breaks the alphabet into three parts. The
chart is arranged according to which section of the alphabet the
second word begins. Here is one way of dividing the alphabet in
order to learn these rules:

#align(center)[
  #let ro(t) = romanization(t)
  #let column_width = 2em
  #table(
    columns: (5 * column_width, 6 * column_width),
    inset: (left: 1.75em, right: .75em, y: 1em),
    row-gutter: 0em,
    align: (right, left),

    table.hline(y: 1, start: 0, stroke: (thickness: 0.5pt, paint: luma(200))),
    table.vline(start: 1, end: 2, x: 1, stroke: (thickness: 0.5pt, paint: luma(200))),

    align(right + top, [(a)~~Vowels]),
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

    table(
      columns: 3 * (column_width,),
      table.cell(rowspan: 5, []),
      ro[ka], ro[kha], ro[ca], ro[cha], ro[ṭa], ro[ṭha],
      ro[ta], ro[tha], ro[pa], ro[pha],
      ro[śa], ro[ṣa], ro[sa],
      table.cell(colspan: 3, []),
    ),

    table(
      columns: 4 * (column_width,),
      ro[ga], ro[gha], ro[ṅa], [],
      ro[ja], ro[jha], ro[ña], [],
      ro[ḍa], ro[ḍha], ro[ṇa], [],
      ro[da], ro[dha], ro[na], [],
      ro[ba], ro[bha], ro[ma], [],
      ro[ya], ro[ra], ro[la], ro[va],
      ro[ha], [], [], [],
    ),
    table.cell(align: center, [(c)~~Unvoiced~consonants]),
    table.cell(align: center, [(b)~~Voiced~consonants]),
  )
]

#[
  #set enum(
    numbering: "(a) (1)",
    indent: 0em,
  )
  #let ro(t) = romanization(t)
  #let column_width = 3em

  + If the second word begins in a vowel, there are four rules: <Lesson:14:sandhi_final_h:examples:start>
    #indent(depth: 2em)[
      Second word begins in any of the following:
      #indent(depth: 1.5em, above: -1em)[
        #table(
          row-gutter: 1em,
          columns: 2 * (column_width,),
          ro[a], ro[ā],
          ro[i], ro[ā],
          ro[u], ro[ū],
          ro[ṛ], ro[ṝ],
          ro[ḷ], [],
          ro[e], ro[ai],
          ro[o], ro[au],
        )
      ]
    ]
    + If the first word ends in #romanization[aḥ] and the second begins in #romanization[a],
      the #romanization[aḥ] changes to #romanization[o], and #romanization[a] is deleted (marked by an
      apostrophe in roman script or #general_index(display: [#romanization[avagraha] ( #romanization['] )])[avagraha] #grammar[avagraha]["held apart, separation, pause", (#romanization[ ' ]), represents a missing #romanization[a]] in
      #devanāgarī). For example:

      #indent(depth: 1.5em, below: .5em)[
        #romanization[aḥ] + #romanization[a] = #romanization[o ']

        #sandhi-example([रामः], [अत्र], [रामोऽत्र], [rāmaḥ], [atra], [rāmo 'tra])
      ]
    + If the first word ends in #romanization[aḥ] and the second begins in any vowel (except #romanization[a]),
      the#errata[missing "the"] #romanization[aḥ] changes to #romanization[a]:

      #indent(depth: 1.5em, below: .5em)[
        #romanization[aḥ] + vowel = #{ romanization[a] + visible_space + [vowel] }

        #sandhi-example([रामः], [आगच्छति], [राम आगच्छति], [rāmaḥ], [āgacchati], [rāma āgacchati])
      ]
      #v(1fr)
    + If the first word ends in #romanization[āḥ] and the second begins in any vowel,
      the#errata[missing "the"] #romanization[āḥ] changes to #romanization[ā]:

      #indent(depth: 1.5em, below: .5em)[
        #romanization[āḥ] + vowel = #{romanization[ā] + visible_space + [vowel]}#errata["#romanization[ā]+vowel → \ "#{romanization[ā] + visible_space + [vowel]}"]

        #sandhi-example([नराः], [इति], [नरा इति], [narāḥ], [iti], [narā iti])
      ]
    + If the first word ends in any other vowel before the final
      #romanization[ḥ], and the second word begins in a vowel, then the #romanization[ḥ]
      changes to #romanization[r]. For example:

      #indent(depth: 1.5em, below: .5em)[
        #romanization[oḥ] + vowel = #romanization[or]vowel

        #sandhi-example([नद्योः], [अत्र], [नद्योरत्र], [nadyoḥ], [atra], [nadyor atra])
      ]

  + If the second word begins in a voiced consonant, there are
    three rules:
    #indent(depth: 2em)[
      Second word begins in any of the following:
      #indent(depth: 1.5em)[
        #table(
          columns: 4 * (column_width,),
          ro[ga], ro[gha], ro[ṅa], [],
          ro[ja], ro[jha], ro[ña], [],
          ro[ḍa], ro[ḍha], ro[ṇa], [],
          ro[da], ro[dha], ro[na], [],
          ro[ba], ro[bha], ro[ma], [],
          ro[ya], ro[ra], ro[la], ro[va],
          ro[ha], [], [], [],
        ),
      ]
    ]

    + If the first word ends in #romanization[aḥ], it becomes #romanization[o]:
      #indent(depth: 1.5em, below: .5em)[
        #romanization[aḥ] + voiced consonant = #{ romanization[o] + visible_space + [voiced consonant] }

        #sandhi-example([रामः], [गच्छति], [रामो गच्छति], [rāmaḥ], [gacchati], [rāmo gacchati])
      ]
    + If the first word ends in #romanization[āḥ], it becomes #romanization[ā]:
      #indent(depth: 1.5em, below: .5em)[
        #romanization[āḥ] + voiced consonant = #{ romanization[ā] + visible_space + [voiced consonant] }

        #sandhi-example([नराः], [गच्छन्ति], [नरा गच्छन्ति], [narāḥ], [gacchanti], [narā gacchanti])
      ]

    + If the first word ends in any other vowel before the final
      #romanization[ḥ], it becomes #romanization[r] (unless the second word begins with an #romanization[r]). For example:
      #indent(depth: 1.5em, below: .5em)[
        #romanization[oḥ] + voiced consonant = #{ romanization[or] + [voiced consonant] }

        #sandhi-example([नरयोः], [गच्छति], [नरयोर्गच्छति], [narayoḥ], [gacchati], [narayor gacchati])
      ]
      A double #romanization[r] does not occur. If the second word begins in #romanization[r],
      the first #romanization[r] is dropped and the preceding vowel made long,
      if it is short.

    Note that the last two rules (2 and 3) are the similar to the
    rules (3 and 4) for second words beginning in a vowel.

  + For the third group, the second word begins in an unvoiced
    consonant. For this group, the rules are the same when the
    first word ends in #romanization[aḥ], #romanization[āḥ], or any other vowel before the #romanization[ḥ].
    There are four rules:

    #indent(depth: 2em)[
      Second word begins in any of the following:
      #indent(depth: 1.5em, above: -1em)[
        #table(
          columns: 3 * (column_width,),
          ro[ka], ro[kha], table.cell(rowspan: 5, []),
          ro[ca], ro[cha], ro[ṭa], ro[ṭha],
          ro[ta], ro[tha], ro[pa], ro[pha],
          ro[śa], ro[ṣa], ro[sa],
          table.cell(colspan: 3, [end of line]),
        )
      ]
    ]
    + If the second word begins in #romanization[ca] or #romanization[cha], the #romanization[ḥ] (with any vowel proceeding it)
      changes to #romanization[ś]. For example:
      #indent(depth: 1.5em, below: .5em)[
        #romanization[aḥ] + #romanization[ca] = #romanization[aśca]

        #sandhi-example([रामः], [च], [रामश्च], [rāmaḥ], [ca], [rāmaś ca])
      ]
    + If the second word begins in #romanization[ṭa] or #romanization[ṭha], the #romanization[ḥ] changes to #romanization[ṣ]:
      #indent(depth: 1.5em, below: .5em)[
        #romanization[aḥ] + #romanization[ṭ] = #romanization[aṣṭ]

        #sandhi-example([रामः], [टीका], [रामषटीका], [rāmaḥ], [ṭīkā], [rāmaṣ ṭīkā])
      ]
    + If the second word begins in #romanization[ta] or #romanization[tha], the #romanization[ḥ] becomes #romanization[s]:
      #indent(depth: 1.5em, below: .5em)[
        #romanization[aḥ] + #romanization[ta] = #romanization[asta]

        #sandhi-example([रामः], [तत्र], [रामस्तत्र], [rāmaḥ], [tatra], [rāmas tatra])
      ]
    The above three rules might best be learned visually, using
    the #devanāgarī script. In each case the #romanization[ḥ] becomes the
    sibilant that corresponds with the following letter,
    whether palatal (#romanization[ca], #romanization[cha]), retroflex (#romanization[ṭa], #romanization[ṭha]), or dental
    (#romanization[ta], #romanization[tha]):

    #indent(above: 1em, below: 1em)[
    #table(
      columns: 6,
      column-gutter: 3*(1em, 2em),
      sanskrit[श्च], sanskrit[श्छ],
      sanskrit[ष्ट], sanskrit[ष्ठ],
      sanskrit[स्त], sanskrit[सः],
      romanization[śca], romanization[ścha],
      romanization[ṣṭa], romanization[ṣṭha],
      romanization[sta], romanization[stha]
    )
    ]
    4. All other unvoiced consonants (#romanization[ka], #romanization[kha], #romanization[pa], #romanization[pha], #romanization[śa], #romanization[ṣa], and #romanization[sa]) cause the #romanization[ḥ] to stay #romanization[ḥ]. The end of the line also causes the #romanization[ḥ] to stay #romanization[ḥ]. For example:
      #indent(depth: 1.5em, below: .5em)[
        #set par(
          spacing: 3em,
        )
        #romanization[aḥ] + #romanization[k] = #{romanization[aḥ]+visible_space+romanization[k]}
        #sandhi-example([रामः], [कुत्र], [रामः कुत्र], [rāmaḥ], [kutra], [rāmaḥ kutra])
      ]<Lesson:14:sandhi_final_h:examples:end>
]

#pagebreak(weak: true)
== Grammar: Verb~prefixes#general_index[Prefixes]

+ Verb prefixes (#grammar[upasarga]["discharged near", verb prefix]) are placed before verbs to modify the
  basic meaning of the verb. They are used much like verb prefixes
  in English, such as "receive" and "perceive." We have already learned
  one prefix, #romanization[ā], which changes "he~goes" (#romanization[gacchati]) to "he~comes"
  (#romanization[āgacchati]).

+ Here are two additional prefixes:
  #indent(below: 1em)[
    #table(
      columns: (7em, 1fr),
      row-gutter: 2*(1em, 2em),
      [#romanization[upa]], [towards, near], [#romanization[upagacchati]], [he goes towards, he approaches],
      [#romanization[prati]], [back to, against], [#romanization[pratigacchati]], [he goes back, he returns]
      )
  ]
== The Imperfect#general_index[Imperfect active]
3. The imperfect (#grammar[lakāra][laṅ][imperfect]) indicates past action. It is traditionally
  described~as action done "not of today", (#grammar[anadyantana]["not of today", past sense of imperfect]), or in the
  past. It is formed by putting an augment (#grammar[āgama][augment]) #general_index[Augment for imperfect], #romanization[a], before the
  present stem. The #romanization[a] is called "maker of the past tense" (#grammar[bhūta-karaṇa]["maker of the past tense", the letter #romanization[a] as used in forming the imperfect]). The imperfect uses slightly different endings, called
  secondary endings, or the imperfect endings. For example:

  #indent[
    #table(
      columns: 8*(auto,),
      column-gutter: (.75em, .75em, .75em, .75em, 1.5em, 1.5em, 2em,),
      table.header(
        block(width: 0em, align(center)[#smallcaps[augment]]),
        [],
        block(width: 0em, smallcaps[stem]),
        [],
        block(width: 0em, align(center)[#smallcaps[ending]]),
        [],
        block(width: 1em)[#smallcaps[imperfect]]),
      romanization[a], [+], romanization[gaccha], [+], [t],
      [_becomes_],
      romanization[agacchat], [he went],

      romanization[a], [+], romanization[vada], [+], [t],
      [_becomes_],
      romanization[avadat], [he spoke],
    )
  ]

#pagebreak(weak: true)
== Imperfect Active~Verbs
4. Here is the formation for the imperfect:

  #import "../tables.typ"
  #[
    #let sa(t) = sanskrit(t)
    #let ro(t) = romanization(t)
    #align(right)[
  #tables.conjugation-table(
      columns: (auto, 1fr, 1fr, 1fr),
      row-gutter: (1.5em, 2.5em),
      [Third],
      [#sa[अगच्छत्]\ #ro[agacchat]],
      [#sa[अगच्छताम्]\ #ro[agacchatām]],
      [#sa[अगच्छन्]\ #ro[agacchan]],

      [Second],
      [#sa[अगच्छः]\ #ro[agacchaḥ]],
      [#sa[अगच्छतम्]\ #ro[agacchatam]],
      [#sa[अगच्छत]\ #ro[agacchata]],

      [First],
      [#sa[अगच्छम्]\ #ro[agaccham]],
      [#sa[अगच्छाव]\ #ro[agacchāva]],
      [#sa[अगच्छाम]\ #ro[agacchāma]],
    )
  ]
  ]
  Note that the imperfect active endings are listed on #ref(<tables:verb_endings:imperfect>, form: "page").

+ Here are the endings for the present indicative that we have
  already learned. Notice that the imperfect has similar endings,
  but shorter:

  #[
    #let sa(t) = sanskrit(t)
    #let ro(t) = romanization(t)
    #align(right)[
  #tables.conjugation-table(
      columns: (auto, 1fr, 1fr, 1fr),
      row-gutter: (1.5em, 2.5em),
      [Third],
      [#sa[गच्छति]\ #ro[gacchati]],
      [#sa[गच्छतः]\ #ro[gacchataḥ]],
      [#sa[गच्छन्ति]\ #ro[gacchanti]],

      [Second],
      [#sa[गच्छसि]\ #ro[gacchasi]],
      [#sa[गच्छथः]\ #ro[gacchathaḥ]],
      [#sa[गच्छथ]\ #ro[gacchatha]],

      [First],
      [#sa[गच्छामि]\ #ro[gacchāmi]],
      [#sa[गच्छावः]\ #ro[gacchāvaḥ]],
      [#sa[गच्छामः]\ #ro[gacchāmaḥ]],
    )
  ]
]
  #v(1fr)
+ The imperfect puts the augment, #romanization[a], after the prefix but before the
  stem. The #sandhi rules apply here. Study these examples:
  #indent(depth: 2em, above: 1em, below: 1em)[
    #let sa(t) = sanskrit(t)
    #let ro(t) = romanization(t)
    #table(
      columns: 9,
      align: left+top,

      column-gutter: .75em,
      row-gutter: (2em, ..3*(2em, 3em)),
      table.header(
        block(width: 2em, align(center)[#smallcaps[prefix]]),
        [],
        block(width: 1em, align(center)[#smallcaps[augment]]),
        [],
        block(width: auto, smallcaps[stem]),
        [],
        block(width: 1em, align(center)[#smallcaps[ending]]),
        [],
        block(width: auto)[#smallcaps[imperfect]]),
      sa[प्रति], [+], sa[अ], [+], sa[गच्छ], [+], sa[त्], [=], sa[प्रतयगच्छत्],
      ro[prati], [+],
      ro[a], [+],
      ro[gaccha], [+],
      ro[t], [=],
      [#ro[pratyagacchat]\ he returned],

      sa[उप], [+], sa[अ], [+], sa[गच्छ], [+], sa[त्], [=], sa[उपागच्छत्],
      ro[upa], [+],
      ro[a], [+],
      ro[gaccha], [+],
      ro[t], [=],
      [#ro[upāgacchat]\ he approached],

      sa[आ], [+], sa[अ], [+], sa[गच्छ - अ], [+], sa[अम्], [=], sa[आगच्छत्],
      ro[ā], [+],
      ro[a], [+],
      [#ro[gaccha] - #ro[a]], [+],
      ro[am], [=],
      [#ro[āgaccham]\ I came],
    )
  ]

+ Often a prefix may affect whether a verb takes active or middle
  endings. The dictionary will indicate which endings should be used.

#pagebreak(weak: true)
== Vocabulary
#[
  #show table.cell: it => {
    if it.y == 0 {
      smallcaps(it)
    } else {
      it
    }
  }
#import "../vocab.typ"
  #import vocab: adjective, indeclinable, feminine, masculine, neuter, pronoun, verb,
  #table(
    row-gutter: (2em, ..8*(1em, 2.5em)),
    columns: (1.4fr, 1fr, 1.5fr),
    table.header(table.cell(colspan: 2, [Sanskrit]), [English]),
    [#sanskrit[आ] + #sanskrit[नी]], [#sanskrit[आनयति]], table.cell(rowspan: 2, align: bottom)[he brings],
    [#romanization[ā] + #root[nī] (active)\*],
    [#romanization[ānayati]],

    [#sanskrit[उप] + #sanskrit[गम्]], [#sanskrit[उपगच्छति]], table.cell(rowspan: 2, align: bottom)[he goes towards, approaches],
    [#romanization[upa] + #root[gam] (active)],
    [#romanization[upagacchati]],

        [#sanskrit[गुप्]], [#sanskrit[गोपायति]], table.cell(rowspan: 2, align: bottom)[he protects],
    [#root[gup] (active)],
    [#romanization[gopāyati]],

    [#sanskrit[नी]], [#sanskrit[नयति]], table.cell(rowspan: 2, align: bottom)[he leads],
    [#root[nī] (#romanization[ubhayapada])\*],
    [#romanization[nayati] #romanization[-te]],

        [#sanskrit[पा]], [#sanskrit[पिबति]], table.cell(rowspan: 2, align: bottom)[he drinks],
    [#root[pā] (active)],
    [#romanization[pibati]],

        [#sanskrit[प्रति] + #sanskrit[गम्]], [#sanskrit[प्रतिगच्छति]], table.cell(rowspan: 2, align: bottom)[he goes back, returns],
    [#romanization[prati] + #root[gam] (active)],
    [#romanization[pratigacchati]],

        [#sanskrit[बुध]], [#sanskrit[बोधति]], table.cell(rowspan: 2, align: bottom)[he knows],
    [#root[budh] (#romanization[ubhayapada])],
    [#romanization[bodhati] #romanization[-te]],

    [#sanskrit[हस्]], [#sanskrit[हसति]], table.cell(rowspan: 2, align: bottom)[he laughs],
    [#root[has] (active)],
    [#romanization[hasati]],
  )#v(-1em)
  #comment([\*], [Note that #root[nī] and #root[budh] are #romanization[ubhayapada], but #romanization[ā] + #root[nī] is active.])

The gerund forms for each of these verbs is listed in the back of the
text (#pages(
    <tables:verb_forms:start>,
    <tables:verb_forms:end>
  )).
  // (pages 312-314).
Remember that if the verb has a prefix, it forms a
gerund with #romanization[-ya] rather than #romanization[-tvā].
]

#pagebreak(weak: true)
== Exercises
+ Memorize the sandhi rules that take place when the first word
  ends in #romanization[ḥ].
+ Memorize the endings for the imperfect active.
+ Translate the following sentences into English:
  #set enum(spacing: 5em)
  #set par(leading: 3em, spacing: 3em);

  #devanagari_enum[
  + #sanskrit[यदा शिष्यो जलमानयति तदाचार्यस्तत्पिबति]
  + #sanskrit[बालो वापीं गजाननयत्]
  + #sanskrit[यो नरो ग्राममुपगच्छति तं कविर्वदति]
  + #sanskrit[वीरः कुपितान्नृपाद्ग्रामं गोपायतीति रामोऽवदत्]
  + #sanskrit[वाप्यं गजं दृष्त्वार्षिरहसदहसच्च]#errata[#sanskrit[दृष्ट्वर्षि[...]] → #sanskrit[दृष्ट्वार्षि]
  the absolutive is missing the long #romanization[ā].]
  + #sanskrit[सुन्दरीं तव पत्नीं बोधामीति कन्या वीरमवदत्]
  + #sanskrit[यस्मिन्गृहे पत्न्यवसत्तत्सा प्रत्यगच्छत्]
  + #sanskrit[ऋषिः शान्तिं सत्यं सिद्धिममृतं सुखं च बोधति]
  + #sanskrit[वीरः सेनाया ग्राममगोपायत्]
  + #sanskrit[सुन्दरं नृपं दृष्ट्वा बालोऽहसत्]
  ]

+ Translate the following into Sanskrit:
  #set enum(spacing: 3em)
  #set par(spacing: 3em)

  + The poet read the book as if he were drinking water.
  + The hero asked, "How do I protect the village from the army?"
  + How did sages live without fire?
  + If the horses go back to the river, then the boy leads them to the forest. (Use double accusative.)
  + When a man does not know suffering, then he approaches perfection.
  + The king, named Rāma, brought his wife, Sītā, a garland.
  + By means of knowledge, a man conquers ignorance.
  + The child drank the water which came from the river.
  + Having seen the river, the girl returned to her house.
  + The boy led the horses from the river to the forest. (Use double accusative.)

