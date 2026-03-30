#import "../style.typ": *
#import "../tables.typ"

#{
let content = (
  Alphabet: (
    [Ten rest of the alphabet #devanāgarī],
  ),
  Grammar: (
    [The instrumental and dative cases],
  ),
  Vocabulary: (
    [More nouns that end in short #romanization[a]],
  )
)

[#lesson[Five]<Lesson:5>]
chapter_summary(page_break: true, content)
}

== Alphabet
+ Here are the last five stops#general_index[devanagari script][Consonants]:
  #marginalia.wideblock(side: "inner")[
      #table(
        stroke: none,
        columns: 5*(1fr,),
        row-gutter: (2em, 6em, 2em),
        inset: (top: 3em),
        column-gutter: 2em,
        align: center,
    [#table_sa([प])#todo([Add stroke order])],
    table_sa([फ]),
    table_sa([ब]),
    table_sa([भ]),
    table_sa([म]),

    table_ro([pa]),
    table_ro([pha]),
    table_ro([ba]),
    table_ro([bha]),
    table_ro([ma]),
  )
  ]

+ Here are the semi-vowels:

      #table(
        stroke: none,
        columns: 4*(1fr,),
        row-gutter: (2em, 6em, 2em),
        inset: (top: 3em),
        column-gutter: 2em,
        align: center,

    [#table_sa([य])#todo([Add stroke order])],
    table_sa([र]),
    table_sa([ल]),
    table_sa([व]),

    table_ro([ya]),
    table_ro([ra]),
    table_ro([la]),
    table_ro([va]),
  )


+ #block(breakable: false)[Here are the sibilants and aspirate:#todo[Add stroke order]
        #table(
        stroke: none,
        columns: 4*(1fr,),
        row-gutter: 0em,
        inset: (top: 3em),
        column-gutter: 2em,
        align: center,

    [#table_sa([श])],
    table_sa([ष]),
    table_sa([स]),
    table_sa([ह]),

    table_ro([śa]),
    table_ro([ṣa]),
    table_ro([sa]),
    table_ro([ha]),
  )
]

+ Here is the #romanization[anusvāra] and #romanization[visarga] following #romanization[a]:#todo([Add stroke order])

    #table(
        stroke: none,
        columns: (10em, 10em),
        row-gutter: 0em,
        inset: (top: 2em),
        column-gutter: 2em,
        align: center,

    table_sa([आं]),
    table_sa([आः]),

    table_ro([aṃ]),
    table_ro([aḥ]),

  )


+ Here are the #grammar[jihvāmūlīya]["formed at the base of the tongue", #romanization[ḥ] before #romanization[k] or #romanization[kh]] (#romanization[ẖ]) and #general_index(display: romanization[upadhmānīya])[upadhmānīya]#grammar[upadhmānīya]["on-breathing", #romanization[ḥ] before #romanization[p] or #romanization[ph]] (#romanization[ḫ]). They are
  usually written the same way. If followed by #romanization[ka] or #romanization[kha], it is a
  #romanization[jihvāmūlīya]. If followed by #romanization[pa] or #romanization[pha], it is an #romanization[upadhmānīya]:
  #note(numbering: none)[Sometimes to distinguish the two, the rotated sign #sanskrit-fallback[ᳳ] is written for #romanization[jihvāmūlīya].]

  #[
    #let x = text(size: 6 * text-size, sanskrit-fallback[ᳲ])
    #table(
      columns: (10em, 10em),
      row-gutter: 0em,
      inset: (top: 1em),
      column-gutter: 2em,
      align: (center, center),
      [#x
      // #todo([Add stroke order])
      ], x,
      table_ro([ẖ]), table_ro([ḫ]),
    )
  ]

  The #romanization[upadhmaniya] (#romanization[ḫ]) may appear#note(numbering: none)[The #link("https://www.unicode.org/charts/PDF/U1CD0.pdf")[Vedic Extension of the Unicode Standard]  describes #text(size: 1.2em, sanskrit-fallback[ᳩ]) as `VEDIC SIGN ANUSVARA ANTARGOMUKHA` whereas #text(size: 1.2em, sanskrit-fallback[ᳶ]) is defined as
`VEDIC SIGN UPADHMANIYA`.]
  as #text(size: 1.4em, sanskrit-fallback[ᳩं]).

+ Here is the entire alphabet in #devanāgarī #general_index(display: [Alphabet in #devanāgarī])[alphabet in devanagari], script:
  #[
    #let sa(term) = text(size: 1em, sanskrit-fallback(term))
    #let sa(term) = text(size: 1em, sanskrit(term))
    #let ro(term) = text(size: 1em, romanization(term))
  #table(
    columns: (6.5em, 1.5em, auto, 5em, auto),
    column-gutter: 0.3em,
    row-gutter: 2em,
    align: (left, right, left+bottom, right, left+bottom),

    table.cell(rowspan: 8, align: top, [Vowels],),
      sa([अ]), ro([a]), sa([आ]), ro([ā]),
      sa([इ]), ro([i]), sa([ई]), ro([ī]),
      sa([उ]), ro([u]), sa([ऊ]), ro([ū]),
      sa([ऋ]), ro([ṛ]), sa([ॠ]), ro([ṝ]),
      sa([ऌ]), ro([ḷ]), [], [],
      sa([ए]), ro([e]), sa([ऐ]), ro([ai]),
      sa([ओ]), ro([o]), sa([औ]), ro([au]),
      sa([आं]), [#ro([aṃ]) (#ro([ṃ]))], sa([आः]), [#ro([aḥ]) (#ro[ḥ])],
  )
  #v(-1em)
  #align(right)[#line(stroke: 0.5pt, length: 100%-6em)]
  #v(-1em)
  #table(
    columns: (6em, ..10*(1.8em,)),
    align: (left+bottom, right, left+bottom, right, left+bottom, right, left+bottom, right, left+bottom, right),
    column-gutter: 0.3em,
    row-gutter: 2em,

    [Velar],       sa([क]), ro([ka]), sa([ख]), ro([kha]), sa([ग]), ro([ga]), sa([घ]), ro([gha]), sa([ङ]), ro([ṅa]),
    [Palatal],     sa([च]), ro([ca]), sa([छ]), ro([cha]), sa([ज]), ro([ja]), sa([झ]), ro([jha]), sa([ञ]), ro([ña]),
    [Retroflex],   sa([ट]), ro([ṭa]), sa([ठ]), ro([ṭha]), sa([ड]), ro([ḍa]), sa([ढ]), ro([ḍha]), sa([ण]), ro([ṇa]),
    [Dental],      sa([त]), ro([ta]), sa([थ]), ro([tha]), sa([द]), ro([da]), sa([ध]), ro([dha]), sa([न]), ro([na]),
    [Labial],      sa([प]), ro([pa]), sa([फ]), ro([pha]), sa([ब]), ro([ba]), sa([भ]), ro([bha]), sa([म]), ro([ma]),
    [Semi-vowels], sa([य]), ro([ya]), sa([र]), ro([ra]),  sa([ल]), ro([la]), sa([व]), ro([va]),  sa([]), ro([]),
    [Sibilants],   sa([श]), ro([śa]), sa([ष]), ro([ṣa]),  sa([स]), ro([sa]), sa([ह]), ro([ha]),  sa([]), ro([]),
  )
  ]

#pagebreak(weak: true)

== Grammar: Instrumental and Dative
+ We will now learn two new cases: the instrumental (#grammar[vibhakti][tṛtīyā]["third", instrumental]) and the
  dative (#grammar[vibhakti][caturthī]["fourth", dative]).

+ The instrumental#general_index[Case][Instrumental] is used for accompaniment. For example:
  #indent(below: 1em)[
    #romanization[gajena saha rāmah gacchati] (without #sandhi)\
    (#romanization[gajena saha rāmo gacchati]) (with sandhi)\
    Rama goes #text-underbrace[with the elephant][(instrumental)].
  ]

  The word #romanization[saha], "together", is sometimes used after the
  instrumental to indicate accompaniment.

+ The instrumental is also used to express instrumentality, or "by
  means of". (Although this usage is derived from the first, it is used
  more frequently.) For example:
  #indent(below: 1em)[
    I write #text-underbrace[with a pen][(instrumental)].
  ]
+ The dative#general_index[Case][Dative] is used for the indirect object. It shows "purpose". For
  example:
  #indent(below: 1em)[
    #romanization[rāmaḥ putrāya aśvam gacchati] (without #sandhi)\
    (#romanization[rāmaḥ putrayāśvaṃ gacchati]) (with #sandhi)\
    Rama goes to the horse #text-underbrace[for the son][(dative)].
  ]
  #indent(below: 1em)[
    #romanization[rāmaḥ putrāya pustakam paṭhati] (without #sandhi)\
    (#romanization[rāmaḥ putrāya pustakaṃ paṭhati]) (with #sandhi)\
    Rama reads the book #text-underbrace[to the son][(dative)].
  ]

+ #block(breakable: false)[Here is how they are formed:

  Stem: #romanization[nara] (masculine) man
  #declension_table(
    columns: (6em, .8fr, 1fr, 1fr),
    function: romanization,
    row-gutter: (1.5em, 2em),
    comment_below: ["with the elephant" is #romanization[gajena] (See below.)],
    [Instrumental], [nareṇa\*], [narābhyām], [naraiḥ],
    [Dative], [narāya], [narābhyām], [narebhyaḥ],
  )

]

+ We will learn the following #sandhi rule in more detail in @Lesson:11. For now, when a word contains an #romanization[r] or #romanization[ṛ], it often changes the
  following #romanization[n] to #romanization[ṇ]. For example: #romanization[nareṇa], #romanization[putreṇa], #romanization[mrgeṇa],
  #romanization[rameṇa]. But #romanization[aśvena], #romanization[gajena]. <sandhi:n_to_ṇ_with_r>

+ The word order#general_index[Word order] is not rigid in Sanskrit. Usually the instrumental
  goes near the word most closely associated with it, and the dative
  goes before the verb. (More will be said about word order later.)

+ The verbs #romanization[vadati] (he says) and #romanization[prcchati] (he asks) often take a
  "double accusative"#general_index[Double accusative]: the object talked about and the person
  addressed. Usually the person addressed is placed closer to the
  verb. The context will give you the correct meaning. For example:
  #indent[
    #romanization[rāmaḥ mṛgam putram vadati] (without #sandhi)\
    (#romanization[rāmo mṛgaṃ putraṃ vadati]) (with #sandhi)\
    Rama speaks to the son about the deer.
  ]


#pagebreak(weak: true)

== Vocabulary

  #import "../vocab.typ"
  #import vocab: indeclinable, masculine
  #vocab.list(columns: 2,
    [#indeclinable(label: [indeclinable])[tatra]], [there],
    [#masculine(label: [masculine])[nṛpaḥ]], [king],
    [#masculine(label: [masculine])[bālaḥ]], [boy],
    [#masculine(label: [masculine])[vīraḥ]], [hero],
    [#indeclinable(label: [indeclinable])[saha]], [with, together\ (sometimes used after the instrumental as a marker of accompaniment)],
  )

Remember that word order is less rigid in Sanskrit than in English.
Even more than English, words can be placed in several different
orders and still be correct.

#pagebreak(weak: true)
== Exercises
+ Learn the alphabet in #devanāgarī.

+ Lear the forms for the instrumental and dative. By now you have
  learned four cases.
+ Leam the vocabulary and keep up with all past vocabulary.
+ Translate the following sentences. (Remember that more than one
  word order will still be correct in Sanskrit as well as English.)

  #[
  + #romanization[kutra vīrāḥ tiṣṭhanti]\
    (#romanization[kutra vīrās tiṣṭhanti])
  + #romanization[bālau gajena saha tatra bhavataḥ]\
    (#romanization[bālau gajena saha tatra bhavataḥ])
  + #romanization[nṛpaḥ aśvam gacchati]\
    (#romanization[nṛpo 'śvaṃ gacchati])
  + #romanization[aśvena saha vīraḥ nṛpān gacchati]\
    (#romanization[aśvena saha vīro nṛpān gacchati])
  + #romanization[mṛgeṇa saha rāmaḥ vasati]\
      (#romanization[mṛgeṇa saha rāmo vasati])
  + #romanization[gajaiḥ saha bālāḥ gacchanti]\
    (#romanization[gajaiḥ saha bālā gacchanti])
  + #romanization[narāḥ putram vadanti]\
    (#romanization[narāḥ putraṃ vadanti])
  + #romanization[vīrāḥ mṛgān rāmam pṛcchanti] (same as 5b. below)\
      (#romanization[vīrā mṛgān rāmaṃ pṛcchanti])
  + #romanization[tatra bālaḥ nṛpāya gacchati]\
      (#romanization[tatra bālo nṛpāya gacchati])
  ]

+ #block(breakable: false)[Translate the following sentences into Sanskrit:

  + The boys go to the horses.
  + The son asks the king about the deer. (double accusative)
  + The king remembers the man.
  + The hero lives with the son.
  + The boy asks the king and the king remembers.
  + There are no elephants with the son.
  + Where does Rama live?
  + The king or the hero speaks to the boy.
  + The hero goes for the boy.
  + The elephants are there with the horses.
  + I remember the king.
  + You are going there with the boy
  ]
  #v(1fr)

+ #block(breakable: false)[Translate the following sentences into English:

  + #romanization[aśvaiḥ saha vīraḥ gacchati]\
    (#romanization[aśvaiḥ saha vīro gacchati])
  + #romanization[tatra nṛpāya narāḥ gacchanti]\
    (#romanization[tatra nṛpāya narā gacchanti])
  + #romanization[vīrau tisṭhataḥ vadataḥ ca]\
    (#romanization[vīrau tisṭḥato vadataś ca])
  + #romanization[mṛgāḥ tatra vasanti] \
    (#romanization[mṛgās tatra vasanti])
  + #romanization[kutra bālābhyām saha nṛpaḥ gacchati]\
    (#romanization[kutra bālābhyāṃ saha nṛpo gacchati])
  + #romanization[rāmaḥ aśvam putram pṛcchati]\
    (#romanization[rāmo ’śvaṃ putraṃ pṛcchati])
  + #romanization[tatra gajāh na tiṣṭhanti]\
    (#romanization[tatra gajā na tiṣṭhanti])
  + #romanization[vīraḥ nṛpam bālam vadati]\
    (#romanization[vīro nṛpaṃ bālaṃ vadati])
  + #romanization[mṛgaiḥ aśvaiḥ ca saha gajaḥ vasati]\
    (#romanization[mṛgair aśvaiś ca saha gajo vasati])
  + #romanization[kutra tiṣṭhāmaḥ]\
    (#romanization[kutra tiṣṭhāmaḥ])
  ]

+ #block(breakable: false)[Translate the following sentences into Sanskrit:

  + The king lives there with the two boys.
  + Where are you going with the elephants?
  + The man goes there for the horse.
  + The boy does not remember the king.
  + I am speaking to the king about the two elephants.
  + The king goes to the horse for the son.
  + Where are we standing?
  + The man asks the boy about the horse.
  + Rāma goes there for the man.
  + Where are all the deer?
  ]

#pagebreak(weak: true)
== Summary Sheet#general_index(display: [Lesson Five])[Summary sheets][Lesson 05]<summary5>
#indent(depth: 2em)[
#tables.conjugation-gacchati()
]
=== Verbs
#table(
    columns: (6em, 1fr, 2fr),
    root([gam]), romanization([gacchati]), [he goes, she goes],
    root([prach]), romanization([pṛcchati]), [he asks],
    root([bhū]), romanization([bhavati]), [he is],
    root([vad]), romanization([vadati]), [he speaks, he says],
    root([vas]), romanization([vasati]), [he lives],
    root([sthā]), romanization([tiṣṭhati]), [he stands],
    root([smṛ]), romanization([smarati]), [he remembers]
  )

#pagebreak(weak: true)
  #columns(2)[
    === Nouns
    #table(
      columns: (6em, auto),

      romanization([aśvaḥ]), [horse],
      romanization([gajaḥ]), [elephant],
      romanization([naraḥ]), [man],
      romanization([nṛpaḥ]), [king],
      romanization([putraḥ]), [son],
      romanization([bālaḥ]), [boy],
      romanization([mṛgaḥ]), [deer],
      romanization([rāmaḥ]), [Rāma],
      romanization([vīraḥ]), [hero],
    )
    #colbreak()
    === Indeclinables
    #table(
      columns: (5em, auto),
      romanization([kutra]), [where],
      romanization([ca]), [and],
      romanization([na]), [not],
      romanization([vā]), [or],
      romanization([saha]), [with, toghether (used after instrumental)],

  )]

#[
  #let ro(term) = romanization(term)
  #set par(leading: 0.5em)
  #declension_table(
    columns: (6em, .8fr, 1fr, 1fr),
    align: (left, left+horizon, left+horizon, left+horizon),
    function: romanization,
    row-gutter: (1.0em, 1.5em),
    fill: luma(240),
    comment_below: [#romanization[gajena], #romanization[gajānām] (See #ref(<sandhi:n_to_ṇ_with_r>, form: "page").)],
    [Nominative\ (subject)], [naraḥ], [narau], [narāḥ],
    [Accusative\ (object)], [naram], [narau], [narān],
    [Instrumental\ (with)], [nareṇa\*], [narābhyām], [naraiḥ],
    [Dative\ (for)], [narāya], [narābhyām], [narebhyaḥ],
    // [Ablative\ (from)], [narāt], [narābhyām], [narebhyaḥ],
    // [Genitive\ (of, 's)], [narasya], [narayoḥ], [narāṇām\*],
    // [Locative\ (in, on)], [nare], [narayoḥ], [nareṣu],
    // [Vocative\ (O)], [nara], [narau], [narāḥ]
  )
]


