#import "../style.typ": *
#import "../tables.typ"

#{
let content = (
  Alphabet: (
    [The #sandhi rules for final #romanization[ḥ]],
  ),
  Grammar: (
    [The middle voice and "have"],
  ),
  Vocabulary: (
    [Verbs in the middle voice],
  )
)

[#lesson[Nine]<Lesson:9>]
chapter_summary(page_break: true, content)
}

== Alphabet: #box[#sandhi Rules] #box[for final #romanization[ḥ]]#general_index[sandhi][Final ḥ sandhi]
+ The following chart describes the changes that take place when the
  first word ends in #romanization[ḥ] (which was originally #romanization[s]). There are three
  categories: #romanization[aḥ], #romanization[āḥ], and #romanization[ḥ] preceded by any other vowel.

  #[
#let small = 0.6em
    #let large = 0.85em
    #set table(inset: (x, y) => {
    let d = (:)
    if x < 3{
      if x == 0 {d.left = 1.4*2.4em}
      else if x in (1,2) {d.left = 2.4em}
    }
    if y in (1,2) {d.left = 0em}

    if y == 0 {d.y = 0em}
    else if y == 1 {d.y = large}
      else if y == 2 {d.top = large; d.bottom = large}
      else if y == 3 {d.top = small; d.bottom = small}
      else if y == 12 {d.top = small; d.bottom = large}
      else if y == 13 {d.top = large; d.bottom = small}
      else if y == 21 {d.top = 1em; d.bottom = large}
      else {d.y = small}
    return d
    })

    #let ro(term) = romanization(term)
    #set par(leading: .5em)
    #set table.vline(
      stroke: (paint: luma(200), thickness: 0.5pt),
    )
    #set table.hline(
      stroke: (paint: luma(200), thickness: 0.5pt),
    )

    #let a-note-counter = counter("a-note")
    #a-note-counter.update(0)
    #let a-note = note.with(
      counter: a-note-counter,
      numbering: (..i) => text(
        weight: "bold",
        font: sans-font,
        size: 0.75*text-size,
        style: "normal",
        numbering("1. ", ..i)
        ),
      anchor-numbering: (.., i) => text(
        weight: "bold",
        font: sans-font,
        size: 0.75*text-size,
        baseline: -.5em,
        [#i],
      ),
      flush-numbering: false,
    )

    #table(
    columns: (1.2fr, 1fr, 1fr, 0.8fr, 0em),
    row-gutter: 0em,
    column-gutter: 1.5em,
    align: (left+bottom, left+bottom, left+bottom, left+bottom, left, center+horizon),

    table.hline(y: 2, start: 0, end: 3, stroke: (paint: luma(0))),
    table.hline(y: 22, start: 0, end: 3, stroke: (paint: luma(0))),

    table.hline(y: 4, start: 0, end: 3),
    table.hline(y: 14, start: 0, end: 3),

    table.vline(start: 3, end: 22, x: 1),
    table.vline(start: 3, end: 22, x: 2),

    table.cell(colspan: 3, align: horizon+center,
      upper([Final letters of first word])
    ), [], [],
    table.cell([
      Any vowel #ro[r]\
      Any vowel #ro[ḥ]\
      #box(width: 8em, [(except #ro[aḥ] and #ro[āḥ])])
      ]),
    ro[āḥ],
    ro[aḥ],
    table.cell(colspan: 2,align: left+top, block(width: 5em, height: 3.5em, upper([Initial letter of second word]))),

  table.cell(colspan: 3, align:left, [Then #ro[ḥ] or #ro[r] becomes]), [], [],
  [#ro[r]], [#ro[ā]], [#ro[a]
  #a-note[
      Except that #ro[aḥ] + #ro[a] = #ro[o]#visible_space#ro[']. For example:

      #box(width: 100%)[#align(center)[
        #sandhi-example(row-gutter:1.0em, inset: 0em)[रामः][अत्र][रामोऽत्र][rāmaḥ][atra][rāmo 'tra],
      ]]]
    ], [vowels], align(center+horizon)[(a)],

  [#ro[r]], [#ro[ā]], [#ro[o]], [#ro[g]/#ro[gh]],
  table.cell(rowspan: 10, align: center+horizon,[(b)]),
  [#ro[r]], [#ro[ā]], [#ro[o]], [#ro[j]/#ro[jh]],
  [#ro[r]], [#ro[ā]], [#ro[o]], [#ro[ḍ]/#ro[ḍh]],
  [#ro[r]], [#ro[ā]], [#ro[o]], [#ro[d]/#ro[dh]],
  [#ro[r]], [#ro[ā]], [#ro[o]], [#ro[b]/#ro[bh]],

  [#ro[r]], [#ro[ā]], [#ro[o]], block(width: 125%)[nasals (#ro[n]/#ro[m])],
  [#ro[r]], [#ro[ā]], [#ro[o]], [#ro[y]/#ro[v]],
  [#ro[–]
    #a-note([
      The #ro[ḥ] disappears, and if #ro[i] or #ro[u] precedes, it becomes #ro[ī] or #ro[ū].
      \ The #ro[r] disappears, and if #ro[a], #ro[i], or #ro[u] precedes, it becomes #ro[ā], #ro[ī], or #ro[ū].])
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
  [#ro[ḥ]], [#ro[āḥ]], [#ro[aḥ]], block(width: 125%)[end of line],
)]

+ If the first word ends in #romanization[aḥ], then use the third column. If the
  first word ends in #romanization[āḥ], then use the middle column. If the first
  word ends in any other vowel before the #romanization[ḥ] or any vowel before the #romanization[r]
  (including #romanization[ar] or #romanization[ār]), then use the first column.
+ Here are some examples:
  #table(
    columns: (1fr, 1fr),
    row-gutter: (2em, 3em),
    [#smallcaps[Without] #sandhi], [#smallcaps[With] #sandhi],

    [#sanskrit[रामः गच्छति]\ #romanization[rāmaḥ gacchati]],
    [#sanskrit[रामो गच्छति]\ #romanization[rāmo gacchati]],

    [#sanskrit[वीराः गच्छन्ति]\ #romanization[vīrāḥ gacchanti]],
    [#sanskrit[वीरा गच्छन्ति]\ #romanization[vīrā gacchanti]],

    [#sanskrit[रामः पश्यति]\ #romanization[rāmaḥ paśyati]],
    [#sanskrit[रामः पश्यति]\ #romanization[rāmaḥ paśyati]],

    [#sanskrit[वीराः पश्यन्ति]\ #romanization[vīrāḥ paśyanti]],
    [#sanskrit[वीराः पश्यन्ति]\ #romanization[vīrāḥ paśyanti]],
  )
  Additional examples are given on
  //pages 183--187
  #pages(
    <Lesson:14:sandhi_final_h:examples:start>,
    <Lesson:14:sandhi_final_h:examples:end>
  ).
+ Final #romanization[s] should be treated as #romanization[ḥ]. For example, #romanization[rāmas] follows the
  same rules as #romanization[rāmaḥ]. Either would become #romanization[rāmo] before #romanization[gacchati].
+ After these #sandhi rules have been applied, if the first word ends
  in a vowel (including #romanization[ḥ]), then there is a break between words in
  #devanāgarī. For now, words that do not follow the #sandhi
  rules presented in Lessons #ref(<Lesson:8>, supplement: none) and #ref(<Lesson:9>, supplement: none) should be kept separate.

  In this text, when writing in roman script, words are usually
  separated, unless the #sandhi change is a result of two vowels
  joining together, such as #romanization[bhavārjuna]. For example:

  #table(
    columns: (1fr, 1fr),
    row-gutter: (2em, 3em),
    [#smallcaps[Without] #sandhi], [#smallcaps[With] #sandhi],

    [#sanskrit[रामः चिन्तयति]\ #romanization[rāmaḥ cintayati]],
    [#sanskrit[रामश्चिन्तयति]\ #romanization[rāmaś cintayati]],

    [#sanskrit[रामः तिष्ठति]\ #romanization[rāmaḥ tiṣṭhati]],
    [#sanskrit[रामस्तिष्ठति]\ #romanization[rāmas tiṣṭhati]],

    [#sanskrit[गच्छति इति]\ #romanization[gacchati iti]],
    [#sanskrit[गच्छतीति]\ #romanization[gacchatīti]],

    [#sanskrit[भव अर्जुन]\ #romanization[bhava arjuna]],
    [#sanskrit[भवार्जुन]\ #romanization[bhavārjuna]],
  )

+ Notice that the chart is divided into three groups on the right side: (a), (b), and (c). These three groups are determined by the first
  letter of the second word. The groups are:
  #[
    #set enum(numbering: "(a)", spacing: 1em)
    #indent[
      + Vowels
      + Voiced consonants
      + Unvoiced consonants (The end of the line is\
        considered to be unvoiced.)
    ]
  ]
  #v(25%)

+ The following chart (described in more detail in @Lesson:14) puts
  the #sandhi changes into these three groups. It gives the same
  information as the first chart, but in a more conceptual form, so that
  later on it will be easier to memorize. Each group represents the
  first letter of the second word:
  #[
    #let ro(term) = romanization(term)

    #set table(inset: (x, y) => {
      if y == 6 {
        (left: 1em, bottom: .5em, top: 0.5em)
      } else if y == 7 {
        (left: 1em, top: .8em, bottom: 0em)
      } else {
        (left: 1em, top: .5em, bottom: 0em)
      }
    })
    #v(-2em)
    #table(
      // inset: (bottom: 0em, top: 0.5em, left: 1em),
      row-gutter: .5em,
      columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr,),

      table.hline(y: 7,start: 0, stroke: (thickness: 0.5pt, paint: luma(200))),
      table.vline(start: 7, end: 15, x: 4, stroke: (thickness: 0.5pt, paint: luma(200))),

      table.cell(rowspan: 7, colspan: 4, []),
      ro[a], ro[ā], table.cell(colspan: 2, rowspan: 7, align(center+horizon, [(a)\ Vowels])),
      ro[i], ro[ī],
      ro[u], ro[ū],
      ro[ṛ], ro[ṝ],
      ro[ḷ], [],
      ro[e], ro[ai],
      ro[o], ro[au],

      ro[ḥ], ro[], ro[ka], ro[kha], ro[ga], ro[gha],  ro[ṅa], ro[],
      ro[ś], ro[], ro[ca], ro[cha], ro[ja], ro[jha],  ro[ña], ro[],
      ro[ṣ], ro[], ro[ṭa], ro[ṭha], ro[ḍa], ro[ḍha],  ro[ṇa], ro[],
      ro[s], ro[], ro[ta], ro[tha], ro[da], ro[dha],  ro[na], ro[],
      ro[ḥ], ro[], ro[pa], ro[pha], ro[ba], ro[bha],  ro[ma], ro[],
      ro[], ro[], ro[], ro[], ro[ya], ro[ra],  ro[la], ro[va],
      ro[ḥ], ro[śa], ro[ṣa], ro[sa], ro[ha], ro[],  ro[], ro[],
      ro[ḥ], table.cell(colspan: 3, [end of line]), ro[], ro[], ro[], ro[],
      table.cell(colspan: 4, align: center, [(c) Unvoiced consonants]),
      table.cell(colspan: 4, align: center, [(b) Voiced consonants]),
    )<sandhi:chart:alphabet>
  ]
  #[
    #set enum(numbering: "(a)", spacing: 1em)
    #set par(spacing: 1em)
    #v(-1em)
      + If the second word begins in a vowel:
        #indent(depth: 2em)[
          #romanization[aḥ] becomes #romanization[a] (except #romanization[aḥ] + #romanization[a] = #romanization[a '])\
          #romanization[āḥ] becomes #romanization[ā]\
          vowel #romanization[ḥ] becomes #romanization[r]
        ]
      + If the first letter of the second word is a voiced consonant:
        #indent(depth: 2em)[
          #romanization[aḥ] becomes #romanization[o]\
          #romanization[āḥ] becomes #romanization[ā]\
          vowel #romanization[ḥ] becomes #romanization[r] (except before a word beginning in #romanization[r])
        ]
      + If the first letter of the second word is an unvoiced consonant,
        the #romanization[ḥ] changes to the letter in the far left column.
  ]

#pagebreak()
== Grammar: Middle Verbs#general_index[Middle endings, middle voice]

+ Now we will learn the middle endings (#grammar[ātmanepada]["word for oneself", middle endings, middle voice])#general_index[Active endings, active voice]. For
  the middle voice#general_index[Voice, active and middle], the fruit of action is said to go to the agent (#romanization[ātman]).
  For the active voice, the fruit of action goes to someone else
  (#romanization[para]). Many verbs usually take active endings, many usually take
  middle endings and some verbs take both endings.
+ Here is the formation of the middle verb #root[bhāṣ] (to speak):
  #tables.conjugation-table(
    columns: (5em, auto, auto, auto),
    align: left,
    function: romanization,
    row-gutter: (1.5em, 2.5em),
      [Third], [bhāṣate], [bhāṣete], [bhāṣante],

      [Second], [bhāṣase], [bhāṣethe], [bhāṣadhve],

      [First], [bhāṣe], [bhāṣāvahe],
      [bhāṣāmahe]
  )

   Note that the present middle endings are listed on #ref(<tables:verb_endings:present>, form: "page"). //page 316.
+ Although most of the verbs we have learned (before #root[bhāṣ]) are
  usually seen with active endings, they occasionally take middle
  endings also (in situations where the fruit of action goes more to the
  agent). One verb, #root[cint], regularly takes both active and middle
  endings, and so is classified as #romanization[ubhayapada]. (See #ref(<def:active_middle_passive>, form: "page")) Verbs
  that regularly take both endings will be listed like this: #romanization[cintayati~#[#sym.hyph.nobreak]te].

== "have"#general_index(display: ["Have"])[Have]
4. There is no verb for "have" in Sanskrit. "Have" is formed with the
  genitive and #root[bhū]. For example:

  #indent[
    #sanskrit[विरस्य पुत्रो भवति ।]\
    #romanization[vīrasya putro bhavati]\
    Of the hero a son is. (becomes)\
    The hero has a son.
  ]

#pagebreak(weak: true)
== Vocabulary
  #import "../vocab.typ"
  #import vocab: indeclinable, verb, neuter,
  #vocab.list(columns: 3,
  [एव], indeclinable[eva], [only, ever, indeed#errata[_indeed_ is used in the answers]],
  [गृहम्], neuter[gṛham], [house],
  [जलम्], neuter[jalam], [water],
  [जि], verb(label: [active])[ji][jayati], [he conquers],
  [दुःखम्], neuter[duḥkham\*], [suffering],
  [भाष्], verb(label: [middle])[bhāṣ][bhāṣate], [he speaks],
  [मन्], verb(label: [middle])[man][manyate], [he thinks],
  [लभ्], verb(label: [middle])[labh][labhate], [he obtains],
  [सुखम्], neuter[sukham], [happiness],
  [सेव्], verb(label: [middle])[sev][sevate], [he serves],
  )#v(-1em)
  #comment(inset: (left: 5.5em))[#romanization[\*]][When the #romanization[ḥ] occurs in the middle of a word, it is pronounced as a
breath of air.]

#pagebreak(weak: true)
== Exercises
#[
  #set enum(spacing: 3em, indent: 0em, body-indent: 0.7em)
  #let sanskrit(term) = text(size: 1.1em, _sanskrit(term))

+ Put in the correct #sandhi for the following phrases:
  #block(height: 4*3.1em)[
    #columns(2)[
    + #sanskrit[रामः गच्छति]
    + #sanskrit[बालाः आगच्छन्ति]
    + #sanskrit[वीरौ आगच्छतः]
    + #sanskrit[शिष्यः अत्र]
    + #sanskrit[रामः इति]
    + #sanskrit[देवाः स्मरन्ति]
    + #sanskrit[पत्रः पश्यति]
    + #sanskrit[अश्वः वदति]
  ]]

+ Take out the #sandhi in the following phrases:
  #block(height: 4*3.1em)[#columns(2)[
    + #sanskrit[रामो गच्छति]
    + #sanskrit[कुत्रागच्छसि]
    + #sanskrit[सुर्यश्चन्द्रश्च]
    + #sanskrit[गजैर्वीरः]
    + #sanskrit[अश्वा आगच्छन्ति]
    + #sanskrit[रामः पुत्रश्च]
    + #sanskrit[गजैः सह]
    + #sanskrit[फलयोर्जलम्]
  ]
  ]

+ Translate the following sentences into English. Take out the
  #sandhi (for vowels and final #romanization[ḥ]), and then translate:

  #[
  #set par(spacing: 1.5em)
  #set enum(spacing: 5em)
  + #sanskrit[वीरस्य बालो भवति~।]\
    #romanization[vīrsya bālo bhavati]

    #sanskrit[(वीरस्य बालो भवति~।)]
  + #sanskrit[सुखम् ज्ञानस्य फलम् भवति~।]\
    #romanization[sukham jñānasya phalam bhavati]

    #sanskrit[(सुखं ज्ञानस्य फलं भवति~।)]
  + #sanskrit[शिष्या गृहात् जलम् आचार्याय लभन्ते~।]\
    #romanization[śiṣyā gṛhāt jalam ācāryāya labhante]

    #sanskrit[(शिष्या गृहाज्जलमाचार्याय लभन्ते~।)]
  + #sanskrit[रामस्तत्र जलाय गच्छतीति वीरो वदति~।]\
    #romanization[rāmas tatra jalāya gacchtīti vīro vadati]

    #sanskrit[(रामस्तत्र जलाय गच्छतीति वीरो वदति~।)]
  + #sanskrit[शिष्य आचार्यम् सेवते~।]\
    #romanization[śiṣya ācāryam sevate]

    #sanskrit[(शिष्य आचार्यं सेवते~।)]
  + #sanskrit[शिष्या ज्ञानम् आचार्यात् लभन्ते~।]\
    #romanization[śiṣyā jñānam ācāryāt labhante]

    #sanskrit[(शिष्या ज्ञानमाचार्याल्लभन्ते~।)]
  + #sanskrit[राम कथम् दुःखम् जयसि~।]\
    #romanization[rāma katham duḥkham jayasi]

    #sanskrit[(राम कथं दुःखं जयसि~।)]
  + #sanskrit[पुत्रो गृहात् नृपस्याश्वेषु गच्छति~।]\
    #romanization[putro gṛhāt nṛpasyāśveṣu gacchati]

    #sanskrit[(पुत्रो गृहान्नृपस्याश्वेषु गच्छति~।)]

  + #sanskrit[अमृतम् सुखस्य फलम् भवतीति चिन्तयते~।]\
    #romanization[amṛtam sukhasya phalam bhavatīti cintayate]

    #sanskrit[(अमृतं सुखस्य फलं भवतीति चिन्तयते~।)]

  + #sanskrit[आचार्यो ज्ञानस्य पुस्तकम् शिष्याय पठति~।]\
    #romanization[ācāryo jñānasya pustakam śiṣyāya paṭhati]

    #sanskrit[(आचार्यो ज्ञानस्य पुस्तकं शिष्याय पठति~।)]
]

+ Translate the following sentences into Sanskrit. First write in
  roman, then #devanāgarī, and then write again with the (vowel
  and final #romanization[ḥ]) #sandhi:

  #[
    #set enum(spacing: 3em)
  + The water is in Rama's hands.
  + The boy reads the book.
  + The hero stands ever in the house of the king.
  + The boys obtain the fruits from the forest.
  + "You conquer suffering with knowledge", the teacher says.
  + From the fruit the boy obtains water. (Use singular for "fruit".)
  + “I see truth in the sun and the moon”, says Rāma.
  + Without knowledge there is suffering.
  + "I do not come from the village”, the king’s son says.
  + The hero and the boy live in the forest.
  ]

]


#pagebreak(weak: true)
== Summary Sheet#general_index(display: [Lesson Nine])[Summary sheets][Lesson 09]<summary9>

#indent(depth: 2em)[
  #tables.conjugation-gacchati()
]

=== Verbs Primarily Taking Active Endings (#romanization[parasmaipada])
#table(
    columns: (6em, 1fr, 2fr),
    row-gutter: 2em,
    [#romanization[ā] + #root[gam]], romanization[āgacchati], [he comes],
    root([gam]), romanization([gacchati]), [he goes],
    root([ji]), romanization([jayati]), [he conquers],
    root([paṭh]), romanization([paṭhati]), [he reads],
    [#root[paś] (#root[dṛś])], romanization([paśyati]), [he sees],
    root([prach]), romanization([pṛcchati]), [he asks],
    root([bhū]), romanization([bhavati]), [he is],
    root([vad]), romanization([vadati]), [he speaks, he says],
    root([vas]), romanization([vasati]), [he lives],
    root([sthā]), romanization([tiṣṭhati]), [he stands],
    root([smṛ]), romanization([smarati]), [he remembers],
  )

#pagebreak(weak:true)


#indent(depth: 2em, tables.conjugation-bhasate())

=== Verbs Primarily Taking Middle Endings (#romanization[ātmanepada])

#table(
    columns: (6em, 7em, 2fr),
    row-gutter: 2em,
    root([bhāṣ]), romanization([bhāṣate]), [he speaks],
    root([man]), romanization([manyate]), [he thinks],
    root([labh]), romanization([labhate]), [he obtains],
    root([sev]), romanization([sevate]), [he serves],
)

=== Verbs Regularly Taking Both Endings (#romanization[ubhayapada])
#table(
    columns: (6em, 7em, 2fr),
    row-gutter: 2em,
    root([cint]), [#romanization([cintayati]) #romanization[-te]], [he thinks],
  )

#pagebreak(weak: true)

=== Masculine Nouns

#tables.declension-narah

#columns(2)[
  #table(
    columns: (5em, auto),
        romanization([aśvaḥ]), [horse],
        romanization([ācāryaḥ]), [teacher],
        romanization([gajaḥ]), [elephant],
        romanization([grāmaḥ]), [village],
        romanization([candraḥ]), [moon],
        romanization([naraḥ]), [man],
        romanization([nṛpaḥ]), [king],
        romanization([putraḥ]), [son],
        romanization([bālaḥ]), [boy],
        romanization([mṛgaḥ]), [deer],
        romanization([rāmaḥ]), [Rāma],
        romanization([vīraḥ]), [hero],
        romanization([śiṣyaḥ]), [student],
        romanization([sūryaḥ]), [sun],
        romanization([hastaḥ]), [hand],
      )
  ]

=== Neuter nouns

#tables.declension-phalam

#columns(2)[
  #table(
    columns: (5em, auto),
    romanization([amṛtam]), [immortality],
    romanization([gṛham]), [house],
    romanization([jalam]), [water],
    romanization([jñānam]), [knowledge],
    romanization([duḥkham]), [suffering],
    romanization([pustakam]), [book],
    romanization([phalam]), [fruit],
    romanization([vanam]), [forest],
    romanization([śāstram]), [scripture],
    romanization([satyam]), [truth],
    romanization([sukham]), [happiness],
    romanization([sūktam]), [hymn],
  )
]
=== Indeclinables
#table(
  columns: (5em, auto),
  romanization([atra]), [here],
  romanization([iti]), [end of quote],
  romanization([eva]), [only, ever],
  romanization([katham]), [how (used like #romanization[kutra])],
  romanization([kutra]), [where],
  romanization([ca]), [and],
  romanization([tatra]), [there],
  romanization([na]), [not],
  romanization([vā]), [or],
  romanization([vinā]), [without],
  romanization([saha]), [with],
)

#pagebreak(weak: true)
== Rāmāyaṇa
Translate the following, using the vocabulary given afterward:

#block(above:3em)[
  #set par(spacing: 1.7em)
  #set enum(spacing: 4em)
+ #sanskrit[अयोध्यायाम् दशरथो नाम नृपो वसति~।]

  #sanskrit[(अयोध्यायां दशरथो नाम नृपो वसति~।)]
+ #sanskrit[दशरथस्य चत्वारः पुत्रा भवन्ति~।]

  #sanskrit[(दशरथस्य चत्वारः पुत्रा भवन्ति~।)]
+ #sanskrit[पुत्रा रामो भरतो लक्ष्मणः शत्रुध्रो भवन्ति~।]

  #sanskrit[(फुत्रा रामो भरतो लक्ष्मणः शत्रुध्रो भवनति~।)]
+ #sanskrit[सामः सुन्दरः शान्तो वीरश्च भवति~।]

  #sanskrit[(रामः सुन्दरः शान्तो वीरश्च भवति~।)]
+ #sanskrit[नृपो रामे स्निह्यति~।]

  #sanskrit[(नृपो रामे स्निह्यति~।)]
+ #sanskrit[रामो मिथिलाम् लक्ष्मणेन सह गच्छति~।]

  #sanskrit[(रामो मिथिलं लक्ष्मणेन सह गच्छति~।)]
+ #sanskrit[तत्र रामः सीताम् पश्यति~।]

  #sanskrit[(तत्र रामः सीतां पश्यति~।)]
+ #sanskrit[शितायाम स्निह्यामीति रामो वदति~॥]

  #sanskrit[(सीतायां स्निह्यामीति रामो वदति~॥)]
]

== Vocabulary
#import "../vocab.typ"
#import vocab: adjective, indeclinable, verb, masculine, feminine,


+ #feminine[ayodhyā] the city of Ayodhyā (The locative is
  #romanization[ayodhyāyām], "in Ayodhyā".)\
  #masculine(label: [mas. noun])[daśarathaḥ] Daśaratha, the king of Ayodhyā\
  #indeclinable()[nāma] by name
+ #vocab.generic(label: [nom.])[catvāraḥ] four (used as an adjective)
+ #romanization[bharataḥ], #romanization[lakṣmaṇaḥ], #romanization[śatrughnaḥ] name of Rāma's brothers
+ #adjective(label: [adjective])[sundara][] beautiful
  #adjective(label: [adjective])[śanta][] peaceful
  #romanization[vīra] strong (here and adjective -- strong like a hero)
+ #vocab.generic(label: [3rd. per. sing. verb])[snihyati] he loves (used with locative)
+ #feminine()[mithilā] city of Mithilā (the accusative is #romanization[mithilām])
+ #feminine()[sītā] Sita (the accusative is #romanization[sītām])
+ The locative of #romanization[sītā] is #romanization[sītāyām].
