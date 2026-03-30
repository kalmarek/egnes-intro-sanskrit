#import "../style.typ": *
#import "../tables.typ"

#{
let content = (
  Alphabet: (
      [Ten more consonants in #devanāgarī],),
  Grammar: (
      [The nominative case],
      [The accusative case],
      ),
  Vocabulary: (
      [Nouns that end in short #romanization[a]],
  )
)

[#lesson[Four]<Lesson:4>]
chapter_summary(page_break: true, content)
}

== Alphabet

+ Here are ten more consonants#general_index[devanagari script][Consonants] to learn:

  #marginalia.wideblock(side: "inner")[
      #table(
        stroke: none,
        columns: 5*(1fr,),
        row-gutter: (2em, 6em, 2em),
        inset: (top: 3em),
        column-gutter: 2em,
        align: center,

    [#table_sa([ट])#todo([Add stroke order])],
    table_sa([ठ]),
    table_sa([ड]),
    table_sa([ढ]),
    table_sa([ण]),

    table_ro([ṭa]),
    table_ro([ṭha]),
    table_ro([ḍa]),
    table_ro([ḍha]),
    table_ro([ṇa]),

    table_sa([त]),
    table_sa([थ]),
    table_sa([द]),
    table_sa([ध]),
    table_sa([न]),

    table_ro([ta]),
    table_ro([tha]),
    table_ro([da]),
    table_ro([dha]),
    table_ro([na]),
  )
]#v(2em)

+ There are two additional consonants, #romanization[ḷa] and #romanization[ḷha]. (See #ref(<vedic:ḷa_and_ḷha>, form: "page")).

  #table(
    columns: (auto, auto),
    [
      The #romanization[ḷa] is written as #text(size: 1.5em, sanskrit[ळ])
    ],
    [
      The #romanization[ḷha] is written as #text(size: 1.5em, sanskrit[ळ्ह])
    ],
  )
  #v(0.1fr)

== Grammar: Nouns#general_index[Nominal, word taking case terminations]
+ Sanskrit nouns#general_index[Noun bases] are formed in a similar way as verbs -- the root#general_index[Roots]
  (#grammar[dhātu]["element, root"]) forms a stem (#grammar[prātipadika]["prior word" (coming first) or "every word" (the same before all endings), noun stem]), and endings (#grammar[sup][nominal ending]) are
  added to form a noun (#grammar[subanta]["having a #romanization[sup] ending", nominal, word taking case terminations]). Nouns are in various cases
  (#grammar[vibhakti]["division", case], division), depending upon their role in the sentence.

+ We will learn two cases#general_index[Case]. The nominative#general_index[Case][Nominative] (#grammar[vibhakti][prathamā]["first", nominative]) is used for
  naming the subject, as in "#text-underbrace[Rama][] goes". The nominative case is
  also used for a predicate nominative identified with the subject, as
  in "#text-underbrace[Rama][] is #text-underbrace[the king][]". In India, words are normally cited
  independently in the nominative, or "naming" case. <predicate_nominative>

  The accusative#general_index[Case][Accusative] (#grammar[vibhakti][dvitīyā]["second", accusative]) is the direct object. The accusative is also
  the object of motion, as in "He goes #text-underbrace[to the city][]".

+ For example, in the sentence, "The man goes to the horse", the
  word "man" would be in the nominative and the word "horse"
  would be in the accusative:
  #indent(below: 1.5em)[
    #text-underbrace[The man][(nominative)] goes #text-underbrace[to the horse][(accusative)].
  ]
+ Here is the formation of masculine nouns whose stems end in #romanization[a]:

  Stem: #romanization[nara] (masculine) man
  #declension_table(
    columns: (6em, auto, auto, auto),
    function: romanization,
    row-gutter: (1.5em, 2em),
    header: (
      [],
      [(#romanization[eka-vacana])\ #smallcaps[Singular]], [(#romanization[dvi-vacana])\ #smallcaps[Dual]],
      [(#romanization[bahu-vacana])\ #smallcaps[Plural]]),
    [Nominative], [naraḥ], [narau], [narāḥ],
    [Accusative], [naram], [narau], [narān],
  )
  Notice that #romanization[naraḥ] is formed by #romanization[nara] + #romanization[s]. The #romanization[s] changes to #romanization[ḥ]
  because of #sandhi.

+ The verb and subject must agree in number in both English and
  Sanskrit. For example, if the subject is singular, then the verb must
  also be singular:
  #indent[
  #table(
    columns: (auto, auto),
    column-gutter: 1em,
    [The man goes to the horse.], [(Subject and verb are
singular.)],
  [The men go to the horse.], [(Subject and verb are plural.)]
  )]

+ The direct object need not agree with either the subject or verb. We
  are learning the rules for the agent construction#general_index[Agent construction (active construction)] (#grammar[kartari prayoga][agent construction (active construction), subject is the agent of action]),
  which is like an active construcition. Here the agent of action (#grammar[kartṛ][agent of action]) is in the nominative, and the object of action (#grammar[karman][object of action]) is
  in the accusative.
+ A noun in apposition#general_index[Nouns in apposition], such as "Rāma, #text-underbrace[the boy][]", is put in the same
  case as the noun it follows. For example, in the sentence "She
  speaks to Rāma, the boy", both "Rāma" and "boy" are accusative.
+ The normal word order#general_index[Word order] is:
  #indent[
  #table(
    columns: (auto, auto, auto),
    row-gutter: par-leading,
    table.header([subject], [direct object], [verb]),
    [#romanization[naraḥ]], [#romanization[aśvam]],[#romanization[gacchati] (without #sandhi)],

    [(#romanization[naro]], [#romanization['śvam]],[#romanization[gacchati]) (with #sandhi)],
    [the man], [to the horse], [goes]
  )
]
  #block(width:105%)[Because #romanization[naraḥ] ends in #romanization[ḥ], we know that it is the man who is doing
  the going and not the horse. While English relies on the order of
  the words, Sanskrit relies more on the word endings for meaning.]
+ Articles, such as "the" or "a", must be put in the English
  translation as needed.

#pagebreak(weak: true)
== Vocabulary

  #import "../vocab.typ"
  #import vocab: indeclinable, masculine
  #vocab.list(columns: 2,
    row-gutter: 2.3em,
    [#masculine(label: [masculine])[aśvaḥ]], [horse],
    [#masculine(label: [masculine])[gajaḥ]], [elephant],
    [#masculine(label: [masculine])[naraḥ]], [man],
    [#masculine(label: [masculine])[putraḥ]], [son],
    [#masculine(label: [masculine])[mṛgaḥ]], [deer],
    [#masculine(label: [masculine])[rāmaḥ]], [Rāma],
    [#indeclinable(label: [indeclinable])[vā]], [or (used like #romanization[ca]) (never first in the sentence or clause)],
  )

  Nouns will be cited in the nominative case because traditionally that
  case is used for citing words independently.

  Nouns, as well as verbs, may be connected with #romanization[ca] and #romanization[vā]. When
  two nominatives are connected with #romanization[vā], the verb agrees with the
  nominative closest to it, as in English. For example:
  #indent[
    #romanization[aśvaḥ gajāḥ vā gacchanti] (without #sandhi) \
    (#romanization[aśvo gajā vā gacchanti]) (with #sandhi) \
    The horse or the elephants go.
  ]


  "He goes" is #romanization[gacchati]. "The man, he goes" is #romanization[naraḥ gacchati]
  (with sandhi, #romanization[naro gacchati]). However, when there is a subject,
  the "he" is dropped. Therefore, #romanization[naraḥ gacchati] (#romanization[naro gacchati])
  would be translated as "The man goes". Always write English
  sentences using the rules of correct English.

#pagebreak(weak: true)
== Exercises
+ Continue to learn the consonants in #devanāgarī.
+ Memorize the singular, dual, and plural forms for the masculine
  nouns ending with a short #romanization[a] (like #romanization[nara]) in the nominative and
  accusative. These should be learned horizontally.
+ Leam the vocabulary and continue reviewing all vocabulary from
  past lessons.
+ Translate the following sentences into English, using the summary
  sheet. Translate the verb first, then the nominative, and then the
  accusative, if any. Continue to observe the #sandhi.
  #[

  + #romanization[narāh mṛgam smaranti] \ (#romanization[narā mṛgaṃ smaranti])
  + #romanization[rāmaḥ aśvau gacchati] \ (#romanization[rāmo 'śvau gacchati])
  + #romanization[kutra gajāḥ vasanti] \ (#romanization[kutra gajā vasanti])
  + #romanization[narau rāmam vadataḥ] \ (#romanization[narau rāmaṃ vadataḥ])
  + #romanization[putraḥ smarati pṛcchati vā] \ (#romanization[putraḥ smarati pṛcchati vā])
  + #romanization[rāmah mṛgam gacchati] \ (#romanization[rāmo mṛgaṃ gacchati])
  + #romanization[aśvau na vadataḥ] \ (#romanization[aśvau na vadataḥ])
  + #romanization[rāmaḥ putram vadati] \ (#romanization[rāmaḥ putraṃ vadati])
  ]

+ Translate the following sentences into Sanskrit:

  #[
  + The men speak to the deer. (one deer)
  + Rāma speaks to the horses.
  + The son goes to the horse and stands.
  + Elephants do not remember.
  + Where are the horses standing?
  + Where is the elephant?
  + Rama speaks and the son remembers.
  + They stand or they go.
  + Where does Rāma stand?
  + Rāma or the son goes.
  + Rāma and the son go.
  ]

+ #block(breakable: false)[
  Translate the following sentences into English:

  + #romanization[narau putram vadataḥ] \ (#romanization[narau putraṃ vadataḥ])
  + #romanization[kutra aśvāḥ ca gājāḥ ca gacchanti] \ (#romanization[kutrāśvāś ca gāhāś ca gacchanti])
  + #romanization[aśvaḥ mṛgaḥ vā gacchati] \ (#romanization[aśvo mṛgo vā gacchati])
  + #romanization[rāmaḥ putrau vadati] \ (#romanization[rāmaḥ putrau vadati])
  + #romanization[mṛgaḥ aśvaḥ gājaḥ ca gacchanti] \ (#romanization[mṛgo 'śvo gājaś ca gacchanti])
  + #romanization[putrāḥ mṛgān na smaranti] \ (#romanization[putrā mṛgān na smaranti])
  + #romanization[kutra narau vasataḥ] \ (#romanization[kutra narau vasataḥ])
  + #romanization[rāmam pṛcchāmi] \ (#romanization[rāmam pṛcchāmi])
  + #romanization[narau putrān na vadataḥ] \ (#romanization[narau putrān na vadataḥ])
  + #romanization[kutra mṛgāḥ bhavanti] \ (#romanization[kutra mṛgā bhavanti])
  ]

+ #block(breakable: false)[Translate the following sentences into Sanskrit:

  + Where is Rāma going?
  + Rāma is going to the horse.
  + The son does not speak to the horses.
  + The two elephants remember the man.
  + Where do the two deer live?
  + You go to the horse.
  + Where are we standing?
  + The son goes to the horses and the elephants.
  + You are all speaking to the elephant.
  + The elephant does not remember.
]

#pagebreak(weak: true)
== Summary Sheet#general_index(display: [Lesson Four])[Summary sheets][Lesson 04]<summary4>
#indent(depth: 2em)[
#tables.conjugation-gacchati()
]
=== Verbs

#table(
    columns: (6em, 1fr, 2fr),
    row-gutter: 1em,
    root([gam]), romanization([gacchati]), [he goes],
    root([prach]), romanization([pṛcchati]), [he asks],
    root([bhū]), romanization([bhavati]), [he is],
    root([vad]), romanization([vadati]), [he speaks, he says],
    root([vas]), romanization([vasati]), [he lives],
    root([sthā]), romanization([tiṣṭhati]), [he stands],
    root([smṛ]), romanization([smarati]), [he remembers]
  )

  #columns(2)[
      === Nouns
      #table(
        columns: (6em, 1.5fr),
        row-gutter: 1em,
        romanization([aśvaḥ]), [horse],
        romanization([gājaḥ]), [elephant],
        romanization([naraḥ]), [man],
        romanization([putraḥ]), [son],
        romanization([mṛgaḥ]), [deer],
        romanization([rāmaḥ]), [Rāma],
    ) #colbreak()
      === Indeclinables
      #table(
        columns: (6em, 1.5fr),
        row-gutter: 1em,
        romanization([kutra]), [where],
        romanization([ca]), [and],
        romanization([na]), [not],
        romanization([vā]), [or],
    )]

#[
  #set par(leading: 0.5em)
  #declension_table(
    columns: (6em, 1fr, 1fr, 1fr),
    align: (left, left+horizon, left+horizon, left+horizon),
    function: romanization,
    row-gutter: (1.0em, 1.5em),
    fill: luma(240),
    [Nominative\ (subject)], [naraḥ], [narau], [narāḥ],
    [Accusative\ (object)], [naram], [narau], [narān],
    // [Instrumental\ (with)], [nareṇa\*], [narābhyām], [naraiḥ],
    // [Dative\ (for)], [narāya], [narābhyām], [narebhyaḥ],
    // [Ablative\ (from)], [narāt], [narābhyām], [narebhyaḥ],
    // [Genitive\ (of, 's)], [narasya], [narayoḥ], [narāṇām\*],
    // [Locative\ (in, on)], [nare], [narayoḥ], [nareṣu],
    // [Vocative\ (O)], [nara], [narau], [narāḥ]
  )
]

