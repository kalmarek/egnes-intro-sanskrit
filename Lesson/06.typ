#import "../style.typ": *
#import "../tables.typ"

#{
let content = (
  Alphabet: (
    [How vowels are formed when they follow
consonants],
  ),
  Grammar: (
    [The ablative and the genitive],
    [The use of #romanization[iti]]
  ),
  Vocabulary: (
    [More nouns in #romanization[a]],
  )
)

[#lesson[Six]<Lesson:6>]
chapter_summary(page_break: true, content)
}

== Alphabet: Vowels after consonants
+ Words are formed by putting letters together. The vowel
  characters learned so far are used only when they are the first
  letter of a word. For example, #romanization[eka] (one) is written:
  #indent(above: 1em, below: 1em)[
    #table(
      columns: (2em, auto),
      column-gutter: 2em,
      align: bottom,
      sanskrit[एक],
      romanization[eka]
    )
  ]
+ A consonant without a vowel following it is written with a short
  stroke#general_index(display: romanization[virāma])[virama] (#grammar[virāma]["pause", oblique stroke that removes the #romanization[a]]) beneath it. For example:
    #indent(above: 1em, below: 1em)[
      #grid(
        columns: (1fr, 2fr),
            table(
      columns: (2em, auto),
      row-gutter: 2em,
      align: bottom,
      sanskrit[क], romanization[ka],
      sanskrit[क्], romanization[k],
    ),
        table(
      columns: (2em, auto),
      row-gutter: 2em,
      align: bottom,
      sanskrit[प], romanization[pa],
      sanskrit[प्], romanization[p],
    )
    )
]

+ When a vowel follows a consonant, the vowel is written in
 contracted form. The #romanization[a] is replaced by other vowels. Here are the
 vowel forms#general_index[devanagari script][Vowels following consinants]:
 #[
 #let sa(term) = text(size:4em, sanskrit(term))
 #let ro(term) = text(size:14pt, romanization(term))
 #block(inset: 1em)[
 #table(
    stroke: none,
    columns: (3em, 1fr, 3em, 1fr),
    row-gutter: 5em,
    column-gutter: 1em,
    align: (left+bottom, left, left+bottom, left),
    ro([ga]), sa([ग]),
    ro([gā]), sa([गा]),

    ro([gi]), sa([गि]),
    ro([gī]), sa([गी]),

    ro([gu]), sa([गु]),
    ro([gū]), sa([गू]),

    ro([gṛ]), sa([गृ]),
    ro([gṝ]), sa([गॄ]),

    ro([ge]), sa([गे]),
    ro([gai]), sa([गै]),

    ro([go]), sa([गो]),
    ro([gau]), sa([गौ]),
  )
]]

+ Note that the sign for the #romanization[i] is written before the consonant, even
  though the #romanization[i] is sounded after the consonant. When written by
  hand, the curved line on top should touch the vertical line of the
  consonant. For example:
  #indent(above: 1em, below: 1em)[#sanskrit[गि]]
  Often, due to typesetting, the #romanization[i] will not touch at all. For example:
  #indent(above: 1em, below: 1em)[
    #let w = 0.98em
    #text[
    #sanskrit-fallback[ि]#h(-w)#box(baseline: 1pt)[#square(fill: luma(255).transparentize(0%), height: w+1pt)] #h(-(w+.7pt)*1.26) #sanskrit-fallback[ग]]
  ]
+ #block(breakable: false)[These vowel signs may follow all consonants, including the
  semi-vowels, sibilants, and aspirate. For example:

  #let sa(term) = text(size: 1.2em, sanskrit(term))
  #let ro(term) = romanization(term)
  #table(
    columns: (auto,auto,auto,auto, auto,auto,auto, auto, ),
    column-gutter: 2em,
    row-gutter: (1.25em, 2.5em)*4,

    sa[च],sa[चा],sa[चि],sa[ची],sa[चु],sa[चू],sa[चृ],sa[चॄ],
    ro[ca],ro[cā],ro[ci],ro[cī],ro[ju],ro[jū],ro[cṛ],ro[cṝ],
    sa[चे],sa[चौ],sa[चो],sa[चौ], table.cell(colspan: 4, []),
    ro[ce],ro[cai],ro[co],ro[cau], table.cell(colspan: 4, []),

    sa[ज],sa[जा],sa[जि],sa[जी],sa[जु],sa[जू],sa[जृ],sa[जॄ],
    ro[ja],ro[jā],ro[ji],ro[jī],ro[ju],ro[jū],ro[jṛ],ro[jṝ],
    sa[जे],sa[जै],sa[जो],sa[जौ], table.cell(colspan: 4, []),
    ro[je],ro[jai],ro[jo],ro[jau], table.cell(colspan: 4, []),
  )
  ]

+ Sometimes these signs are put in different places. For example:
  #indent[
    #table(
      columns: (auto, auto),
      align: bottom,
      row-gutter: 2em,

      [#romanization[ru] is written:], sanskrit[रु],
      [#romanization[rū] is written:], sanskrit[रू],
      [#romanization[hṛ] is written:], sanskrit[हृ],
    )
  ] <vowels_after_consonants:ru_hr>
  We will leam more of these forms in the next lesson.
+ Here are more examples of how words are formed by putting letters
  together:
  #indent[
    #table(
      columns: (1fr, 1fr, 2fr),
      sanskrit[गज], sanskrit[वीर], sanskrit[वसति],
      romanization[gaja], romanization[vīra], romanization[vasati]
    )
  ]

#pagebreak(weak: true)
== Grammar: Ablative and Genetive
+ Now we will learn the ablative (#grammar[vibhakti][pañcamī]["fifth", ablative]) and the genitive (#grammar[vibhakti][ṣaṣṭhī]["sixth", genitive])
  cases (#romanization[vibhakti]).
+ The ablative#general_index[Case][Ablative] is used for origin or source. It usually means "from".
  It is also used for comparison. For example:
  #indent(below: 1em)[
    #table(
      columns: (auto, auto),
      row-gutter: (1.5em, 3em),

      [#romanization[gajāt āgacchati]\ (#romanization[gajād āgacchati])], [],
      [He comes #text-underbrace[from the elephant][(ablative)].], [],
      [One learns #text-underbrace[from practice][(ablative)].],
      [He is taller #text-underbrace[than she][(ablative)].],
    )
  ]

+ The genitive#general_index[Case][Genitive] is used for possession. For example:
  #indent(below: 1em)[
    #table(
      columns: (auto),

      [#romanization[narasya aśvaḥ]\ (#romanization[narasyāśvaḥ])],
      [the horse #text-underbrace[of the man][(genitive)]]
    )
  ]


+ The genitive is always used in relation to the noun which follows it.
  For example:
  #indent[
    #table(
      columns: (auto, auto),

    [#romanization[rāmasya putraḥ]\    (#romanization[rāmasya putraḥ])], [the son of Rāma (or Rāma's son)],

    [#romanization[amṛtasya putrāḥ]\    (#romanization[amṛtasya putrāḥ])], [the sons of immortality]

  )
  ]

+ The genitive is sometimes used as a substitute for other cases, such
  as the dative, instrumental, ablative, and locative.
  #v(1fr)

+ Here is the formation of the ablative and genitive:

  Stem: #romanization[nara] (masculine) man
  // #v(-1.0em)
  #declension_table(
    columns: (6em, .8fr, 1fr, 1fr),
    function: romanization,
    row-gutter: (1.5em, 2em),
    comment_below: [#romanization[gajānām], #romanization[bālānām] (See #ref(<sandhi:n_to_ṇ_with_r>, form: "page").)],
    header: (
      [], [#smallcaps[Singular]], [#smallcaps[Dual]], [#smallcaps[Plural]]),

    [Ablative], [narāt], [narābhyām], [narebḥyaḥ],
    [Genetive], [narasya], [narayoḥ], [narāṇām\*]
  )

== #romanization[iti]#general_index(display: romanization[iti])[iti]
7. Now we will learn the use of #romanization[iti]. This important particle is used at
  the end of a quotation. For example:
  #indent()[
    #table(
      columns: (auto),
      [#romanization[aśvaḥ gacchati iti rāmaḥ vadati]\ (#romanization[aśvo gacchatīti rāmo vadati])],
      ["The horse goes", says Rāma.]
    )
  ]
  Notice that #romanization[iti] is a convenient point to break the sentence down into
  smaller, more manageable parts.

+ When translating from English to Sanskrit, indirect quotations must
  first be turned into direct quotations#general_index[Direct quotation] before iti can be used. For
  example:

  #block(height: 20%)[
  #indent[
    #table(
      columns: (auto),
      [He says that he is going. (indirect quotation)\ "I am going", he says. (direct quotation)],
      [#romanization[gacchāmi iti vadati]\ (#romanization[gacchāmīti vadati])]
    )
  ]
  Notice that the change from an indirect quotation to a direct
  quotation changes the clause from "he is going" to "I am going".]

#pagebreak(weak: true)
== Vocabulary
  #import "../vocab.typ"
  #import vocab: indeclinable, verb, verb_prefix, masculine
  #vocab.list(columns: 2,
    [#indeclinable(label: [indeclinable])[atra]], [here],
    [#verb_prefix[ā][gam][āgacchati] \*], [he comes],
    [#indeclinable(label: [indeclinable])[iti]], [indicates the end of a quotation],
    [#masculine([grāmaḥ])], [village]
  )
#comment[\*][
  Note that #romanization[ā] is a verb prefix. It changes the meaning of #romanization[gacchati]
from "he goes” to “he comes".
]


#pagebreak(weak: true)
== Exercises
+ Learn to recognize and write the #devanāgarī for vowels that
  follow consonants.
+ Learn the forms for the ablative and genitive.
+ Write the following words in #devanāgarī:
  #block(height:28%)[
    #set enum(spacing: 2em)
  #columns(3, enum(
      [#romanization[iti]],
      [#romanization[nara]],
      [#romanization[rāma]],
      [#romanization[gaja]],
      [#romanization[vīra]],
      [#romanization[vasati]],
      [#romanization[bhavāvaḥ]],
      [#romanization[vadati]],
      [#romanization[nṛpaḥ]],
      [#romanization[na]],
      [#romanization[vā]],
      [#romanization[ca]],
      [#romanization[ṛṣi]],
      [#romanization[devatā]],
      [#romanization[guṇa]],
      [#romanization[jaya]],
      [#romanization[guru]],
      [#romanization[deva]],
    ),
  )
]

+ Translate the following sentences into English, using the summary
  sheet. Remember to read each sentence out loud several times.

  #[

  + #romanization[bālasya gajaḥ grāmam gacchati]\ (#romanization[bālasya gajo grāmaṃ gacchati])
  + #romanization[rāmasya putraḥ aśvam gacchati]\ (#romanization[rāmasya putro 'śvaṃ gacchati])
  + #romanization[atra aśvaḥ bhavati iti nṛpaḥ vadati]\ (#romanization[atrāśvo bhavatīti nṛpo vadati])
  + #romanization[grāmāt putraḥ āgacchati]\ (#romanization[grāmāt putra āgacchati])
  + #romanization[kutra gajāḥ tiṣṭhanti iti nṛpaḥ pṛcchati]\ (#romanization[kutra gajās tiṣṭhantīti nṛpaḥ pṛcchati])
  + #romanization[bālaḥ nṛpasya grāmam gacchati]\ (#romanization[bālo nṛpasya grāmaṃ gacchati])
  + #romanization[atra vīrāh vasanti iti narāḥ vadanti]\ (#romanization[atra vīrā vasantīti narā vadanti])
  + #romanization[kutra gacchasi iti rāmaḥ pṛcchati]\ (#romanization[kutra gacchasīti rāmaḥ pṛcchati])
  ]

+ Translate the following sentences into Sanskrit:

  #[
    #set enum(spacing: 2em)

  + "I live here", the son says.
  + The horses and elephants are coming from the village.
  + "Do you remember the men?" the king asks the boy.
  + Rāma says that he is going to the village.
  + "I am going to the village for the boy", says Rama.
  + Where does the hero go?
  + "The hero goes to the village", says the king.
  + The son of the king lives here.
  + The king’s sons come from the village.
  + The man speaks to Rāma about the elephants.
  ]

+ #block(breakable: false)[Translate the following sentences into English:

  + #romanization[narau grāmāt āgacchataḥ]\ (#romanization[narau grāmād āgacchataḥ])
  + #romanization[atra bhavāmi iti bālaḥ nṛpam vadati]\ (#romanization[atra bhavāmīti bālo nṛpaṃ vadati])
  + #romanization[kutra vasasi iti vīraḥ putram pṛcchati]\ (#romanization[kutra vasasīti vīraḥ putraṃ pṛcchati])
  + #romanization[rāmeṇa saha atra vasāmi iti putraḥ vadati]\ (#romanization[rāmeṇa sahātra vasāmīti putro vadati])
  + #romanization[narasya putrāḥ tatra tiṣṭhanti]\ (#romanization[narasya putrās tatra tiṣṭhanti])
  + #romanization[atra vīrasya gajaḥ bhavati]\ (#romanization[atra vīrasya gajo bhavati])
  + #romanization[rāmam smarasi iti bālāḥ naram pṛcchanti]\ (#romanization[rāmaṃ smarasīti bālā naraṃ pṛcchanti])
  + #romanization[kutra grāmaḥ bhavati iti naraḥ putram pṛcchati]\ (#romanization[kutra grāmo bhavatīti naraḥ putraṃ pṛcchati])
  + #romanization[grāmaḥ tatra bhavati iti putraḥ naram vadati]\ (#romanization[grāmas tatra bhavatīti putro naraṃ vadati])
  + #romanization[gajāya grāmam gacchāmi iti naraḥ vadati]\ (#romanization[gajāya grāmaṃ gacchāmīti naro vadati])
]

+ #block(breakable: false)[Translate the following sentences into Sanskrit:

  + "Where are you going?" the king asks the boy.
  + "I am going to the horse", the boy says.
  + The king of the villages speaks to the men.
  + The two boys are coming from the horse and the elephant.
  + The boy lives with Rāma.
  + "Here are the sons of Rāma", says the hero.
  + The king says that the boys are standing there.
  + "I am going to the village", says the son of the hero.
  + The two horses are coming here together with the two deer.
  + The king’s two horses are there.
  ]

#pagebreak(weak: true)
== Summary Sheet#general_index(display: [Lesson Six])[Summary sheets][Lesson 06]<summary6>

#indent(depth: 2em)[
#tables.conjugation-gacchati()
]

=== Verbs
#table(
    columns: (6em, 1fr, 2fr),
    [#romanization[ā] + #root[gam]], romanization[āgacchati], [he comes],
    root([gam]), romanization([gacchati]), [he goes],
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
      columns: (6em, 2fr),
      romanization([aśvaḥ]), [horse],
      romanization([gajaḥ]), [elephant],
      romanization([grāmaḥ]), [village],
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
        columns: (6em, 3fr),
        inset: (left: 0em),
        romanization([atra]), [here],
        romanization([iti]), [end of quote],
        romanization([kutra]), [where],
        romanization([ca]), [and],
        romanization([tatra]), [there],
        romanization([na]), [not],
        romanization([vā]), [or],
        romanization([saha]), [with, together],

  )]



#[
  #let ro(term) = romanization(term)
  #set par(leading: 0.5em)
  #declension_table(
    columns: (6em, .8fr, 1fr, 1fr),
    align: (left, left+horizon, left+horizon, left+horizon),
    function: romanization,
    row-gutter: (1em, 1.5em),
    fill: luma(240),
    comment_below: [#romanization[gajena], #romanization[gajānām] (See #ref(<sandhi:n_to_ṇ_with_r>, form: "page").)],
    [Nominative\ (subject)], [naraḥ], [narau], [narāḥ],
    [Accusative\ (object)], [naram], [narau], [narān],
    [Instrumental\ (with)], [nareṇa\*], [narābhyām], [naraiḥ],
    [Dative\ (for)], [narāya], [narābhyām], [narebhyaḥ],
    [Ablative\ (from)], [narāt], [narābhyām], [narebhyaḥ],
    [Genitive\ (of, 's)], [narasya], [narayoḥ], [narāṇām\*],
    // [Locative\ (in, on)], [nare], [narayoḥ], [nareṣu],
    // [Vocative\ (O)], [nara], [narau], [narāḥ]
  )
]
