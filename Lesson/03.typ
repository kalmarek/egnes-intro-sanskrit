#import "../style.typ": *
#import "../tables.typ"

#{
let content = (
  Alphabet: (
      [The remaining letters in roman script],
      [The first ten consonants in #devanāgarī],),
  Grammar: (
      [The plural],
      [The grammatical terms to describe a verb],
      [Accent]
      ),
  Vocabulary: (
      [More verbs],
  )
)
[#lesson[Three]<Lesson:3>]
chapter_summary(page_break: true, content)
}

== Alphabet: The~remaining letters
#[
  #set enum(
  number-align: right,
  indent: -1.7em
)

+ The previous consonants are sometimes referred to as "stops",
  because they stop the flow of air. They are formed by "complete
  contact" (#grammar[spṛṣṭa]["making complete contact", (referring to stops)]). The remaining letters are consonants, but they allow more flow of air.
+ There are four consonants, formed by #box["slight contact"]#general_index[Slight contact(semi-vowels)]
  #box[(#grammar[īṣat-spṛṣṭa]["slightly-contacted", (referring to semi-vowels)])], called semi-vowels#general_index[Semi-vowels]. They are voiced, but not
  aspirated: They are considered to be between vowels and
  consonants, and so are called #romanization[antaḥstha], or "in-between":
  #indent[
    #romanization[ya], #romanization[ra], #romanization[la], #romanization[va]
  ]
+ The sibilants#general_index[Sibilants] are formed by "half contact"#general_index[Half contact (sibilants)] (#grammar[ardha-spṛṣṭa]["half contacted", (referring to sibilants)]). They
  are aspirated, but not voiced. They are called #romanization[ūṣman], or “heated”:
  #indent[
    #romanization[śa], #romanization[ṣa], #romanization[sa]
  ]

+ The aspirate (voiced, but sometimes classified as a sibilant) is:

  #indent[#romanization[ha]]#general_index(display: [Aspirate (#romanization[ha])])[Aspirate (ha)]

+ Here is how these sounds are pronounced:
    #table(
      columns:(auto, 0.6fr, 1fr),
      align: (left, left, left),
      // row-gutter: .3em,
      romanization([y]), [like the "y" in], [yes],
      romanization([r]), [like the "r" in], [red],
      romanization([l]), [like the "l" in], [law],
      romanization([v]), [like the "v" in], [victory (but closer to a "w")],
      romanization([ś]), [like the "sh" in],[shine],
      romanization([ṣ]), [like the "c" in], [efficient (similar to #romanization[ś])],
      romanization([s]), [like the "s" in], [sweet],
      romanization([h]), [like the "h" in], [hero],
    )
+ Two additional sounds are the #grammar[anusvāra]["after sound", #romanization[ṃ], nasal sound)] (#romanization[ṃ]) and the #grammar[visarga]["letting go", #romanization[ḥ] (often represents final #romanization[s] or #romanization[r])] (#romanization[ḥ]),
  which both follow vowels.

+ The #romanization[anusvāra]#general_index(display:[#romanization[anusvāra]])[anusvāra] (#romanization[ṃ]) causes the last portion of the vowel before it to be nasal (like the French word "bon"). The #romanization[anusvāra] changes its
  sound according to the following sound. It may sound like the
  nasal of the set to which the sound following it belongs. For
  example, #romanization[saṃkhyā] is pronounced similar to #romanization[saṅkhyā]. In the
  dictionary, the #romanization[anusvāra] is found in the same place as the nasal to
  which it refers. If the #romanization[anusvāra] comes before a semi-vowel or
  sibilant, it is found in the dictionary before #romanization[ka].

+ The #romanization[visarga]#general_index(display: [#romanization[visarga] (#romanization[ḥ])])[visarga] (#romanization[ḥ]), or #grammar[visarjanīya][#romanization[ḥ] (often represents final #romanization[s] or #romanization[r])], is an unvoiced breathing that
  occurs in many contexts instead of an #romanization[s] or #romanization[r]. In modern India it is
  often pronounced, at the end of a line, as an echo of the vowel
  before it. For example, after an #romanization[a] it would be a short #romanization[ha]. After an #romanization[i]
  it would be a short #romanization[hi]:
  #indent[
    #table(
      columns: (auto, 1em, auto),
      row-gutter: 1em,
      [#romanization[aḥ]], [=], [#romanization[ahᵃ]],
      [#romanization[iḥ]], [=], [#romanization[ihⁱ]],
      [#romanization[uḥ]], [=], [#romanization[uhᵘ]],
    )
  ]

  The #romanization[jihvāmūlīya] (#romanization[ẖ]) is sometimes used in place of a #romanization[visarga]
  before #romanization[ka] or #romanization[kha]. The #romanization[upadhmānīya] (#romanization[ḫ]) is sometimes used in
  place of a #romanization[visarga] before #romanization[pa] or #romanization[pha].
  These letters, used more in
  Vedic Sanskrit, indicate a subtle difference in the breath before #romanization[ka]
  and #romanization[pa], which is like breathing through the throat (#romanization[ẖ]) or breathing
  through the lips (#romanization[ḫ]).
  #v(1fr)

+ We have now learned all the letters in their transliterated form (their
  roman letter equivalents). There are other ways of representing
  some letters. At times you may see:

  #block(above:2em, below: 2em)[
    #let r(t) = romanization(t)
    #table(
      columns: (auto, auto, .5fr, 2fr),
      r([śa]), [as], r([sha]), [#r[śānti], #r[shānti]],
      r([ṛ]) , [as], r([ri]), [#r[ṛk], #r[rik]],
      r([ṅ]) , [as], r([n̄]), [#r[Saṅkara], #r[San̄kara]],
      r([cha]),[as], r([chha]), [#r[chandas], #r[chhandas]],
      r([ca]),[as], r([cha]), [#r[candra], #r[chandra]],
    )
  ]

+ All the sounds can be classified according to the part of the mouth
  they come from:

  #block(above:2em, below: 2em)[
    #let r(t) = romanization(t)
    #table(
      // row-gutter: 0.5em,
      column-gutter: 1em,
      columns: (4em, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto),
      [Velar],    r([a]), r([ā]), [    ], [     ], r([ka]), r([kha]), r([ga]), r([gha]), r([ṅa]), [     ], r([ha]),
      [Palatal],  r([i]), r([ī]), r([e]), r([ai]), r([ca]), r([cha]), r([ja]), r([jha]), r([ña]), r([ya]), r([śa]),
      [Retroflex],r([ṛ]), r([ṝ]), [    ], [     ], r([ṭa]), r([ṭha]), r([ḍa]), r([ḍha]), r([ṇa]), r([ra]), r([ṣa]),
      [Dental],   r([ḷ]), [    ], [    ], [     ], r([ta]), r([tha]), r([da]), r([dha]), r([na]), r([la]), r([sa]),
      [Labial],   r([u]), r([ū]), r([o]), r([au]), r([pa]), r([pha]), r([ba]), r([bha]), r([ma]), r([va]), [     ],
    )
]

  The complex vowels are pronounced at two points of contact:
  The sounds #romanization[e] (which can be said to be composed of #romanization[a] and #romanization[j]) and #romanization[ai]
  (composed of #romanization[ā] and #romanization[i]) are both velar and palatal. The sounds #romanization[o] (composed of #romanization[a] and #romanization[u]) and #romanization[au] (composed of #romanization[ā] and #romanization[u]) are both
  velar and labial. Also, the sound #romanization[va] is both dental and labial.

  #v(1fr)

+ Here is the entire alphabet#general_index[Alphabet in roman script]:

  #table(
    columns: (11em, 1fr, 2fr),
    // row-gutter: 0.5em,
    table.cell(colspan: 3)[#smallcaps[Vowels] (#romanization[svara])],
    table.cell(rowspan: 5)[Simple (#romanization[śuddha])], romanization([a]), romanization([ā]),
                                    romanization([i]), romanization([ī]),
                                    romanization([u]), romanization([ū]),
                                    romanization([ṛ]), romanization([ṝ]),
                                    romanization([ḷ]), [],
    table.cell(rowspan: 2)[Complex (#romanization[saṃyukta])], romanization([e]), romanization([ai]),
                                     romanization([o]), romanization([au]),
    [Nasalization (#romanization[anusvāra])], [], [#romanization[ṃ]],
    [Aspiration   (#romanization[visarga])], [], [#romanization[ḥ]],
    // table.hline(stroke: 0.5pt),
  )
  #v(-1em)
  #line(length: 100%, stroke: 0.5pt)
  #v(-1em)
  #{
    let r(t) = romanization(t)
    block(width: 100%,
    table(
    columns: (11em, 2em, 2.5em, 2em, 2.5em, 2em),
    // column-gutter: 0.5em,

    table.cell(colspan: 6)[#smallcaps[Consonants] (#romanization[vyañjana])],
    [Velar#general_index[Velar] (#r[kaṇṭhya])],       r([ka]), r([kha]), r([ga]), r([gha]), r([ṅa]),
    [Palatal#general_index[Palatal] (#grammar[tālavya][palatal])],     r([ca]), r([cha]), r([ja]), r([jha]), r([ña]),
    [Retroflex#general_index[Retroflex] (#grammar[mūrdhanya][retroflex])], r([ṭa]), r([ṭha]), r([ḍa]), r([ḍha]), r([ṇa]),
    [Dental#general_index[Dental] (#grammar[dantya][dental])],       r([ta]), r([tha]), r([da]), r([dha]), r([na]),
    [Labial#general_index[Labial] (#grammar[oṣṭhya][labial])],       r([pa]), r([pha]), r([ba]), r([bha]), r([ma]),
    [Semi-vowels#general_index[Semi-vowels] (#grammar[antaḥstha]["in-between", semi-vowel])], [],    r([ya]) , r([ra]), r([la]) , r([va]),
    [Sibilants#general_index[Sibilants] (#grammar[ūṣman]["heat, glow", sibilant])],       [],    r([śa]) , r([ṣa]), r([sa]) ,   [],
  ),
)
} #v(1fr, weak: true)

+ Here are the first ten consonants#general_index[devanagari script][Consonants] in #devanāgarī script. Each
  symbol includes the sound #romanization[a]. For example, #romanization[ka] and not just #romanization[k] is
  meant by the first symbol.
  #marginalia.wideblock(side: "inner")[
      #table(
        stroke: none,
        columns: (1.2fr, ..4*(1fr,)),
        row-gutter: (2em, 6em, 2em),
        inset: (top: 3em),
        column-gutter: 2em,
        align: center,

        [#table_sa([क])#todo([Add stroke order])],
        table_sa([ख]),
        table_sa([ग]),
        table_sa([घ]),
        table_sa([ङ]),

        table_ro([ka]),
        table_ro([kha]),
        table_ro([ga]),
        table_ro([gha]),
        table_ro([ṅa]),

        // [],[],[],[],[],

        table_sa([च]),
        table_sa([छ]),
        table_sa([ज]),
        table_sa([झ]),
        table_sa([ञ]),

        table_ro([ca]),
        table_ro([cha]),
        table_ro([ja]),
        table_ro([jha]),
        table_ro([ña]),
      )
    ]
  ]

#pagebreak(weak: true)
== Grammar: The~plural#general_index[Number][Plural]
+ Here is the plural (#romanization[bahu-vacana]#index(index: "grammar")[vacana][bahu]) for the verb #root[gam]:
    #table(
    columns: (auto, auto, auto),
    row-gutter: 2em,
    [Third person],
    [#romanization[gacchanti] \ (#romanization[gaccha - a + anti])],
    [they (all) go],

    [Second person],
    [#romanization[gacchatha] \ (#romanization[gaccha + tha])], [you (all) go],

    [First person],
    [#romanization[gacchāmaḥ] \ (#romanization[gaccha + a + mas])],
    [we (all) go]
   )
   Notice that the third person is #romanization[gaccha] minus #romanization[a] plus #romanization[anti].
+ Now we have the complete conjugation (or verbal paradigm) for

  the present indicative (#romanization[laṭ]):
  #table(
      columns: (8em, 8em, 6em),
      row-gutter: (2em, 2em, 2em, 1.5em, 1.5em, 2em),
      table.header([#smallcaps[Singular]], [#smallcaps[Dual]], [#smallcaps[Plural]]),
      [#romanization[gacchati]],[#romanization[gacchataḥ]],[#romanization[gacchatanti]],

      [#romanization[gacchasi]], [#romanization[gacchathaḥ]], [#romanization[cacchatha]],

      [#romanization[gacchāmi]], [#romanization[gacchāvaḥ]],
      [#romanization[gacchāmaḥ]],
      table.hline(stroke: 0.5pt),
      [], [], [],

      [he goes], [they two go], [they all go],
      [you go] , [you two go] , [they all go],
      [I go]   , [we both go] , [we all go],

   )
  Students of Sanskrit in India memorize these conjugations
  horizontally. Students in Europe and America have learned them
  vertically. It would be better to follow the system of India and
  memorize horizontally (for both verbs and nouns).

+ #block(breakable: false)[Here are the standard endings#general_index[Active endings, active voice]:
  #indent(
    table(
      columns: (1fr, 1fr, 1fr, 2fr),
      table.header([], [#smallcaps[Singular]], [#smallcaps[Dual]], [#smallcaps[Plural]]),
      [3rd], [#romanization[ti]], [#romanization[tas]], [#romanization[anti]],
      [2nd], [#romanization[si]], [#romanization[thas]], [#romanization[tha]],
      [1st], [#romanization[mi]], [#romanization[vas]], [#romanization[mas]],
    )
  )

  Note that when a word is formed, final #romanization[s] becomes #romanization[ḥ] due to #sandhi.
]
== Grammatical Terms

4. Verbs can be classified in four basic ways: tense/mood, voice,
  person, and number. This is similar to, but slightly different from,
  how verbs are classified in English. Here is a simplified overview:
  Tense/Mood: The tenses and modes are grouped together in the ten#general_index(display: romanization[lakāra])[lakara]
  #grammar[lakāra][the ten tenses and moods], or "#romanization[l]" sounds, because they are each abbreviated by #romanization[Pāṇini]
  with a word beginning with the letter "#romanization[l]". We have learned the present indicative (abbreviated as #grammar[lakāra][laṭ][present indicative]). Other #box[tense/moods] are the perfect~(#grammar[lakāra][liṭ][perfect]),
  the periphrastic future~(#grammar[lakāra][luṭ][periphrastic future]), the simple future~(#grammar[lakāra][lṛṭ][simple future]), the subjunctive~(#grammar[lakāra][leṭ][subjunctive]), the imperative (#grammar[lakāra][loṭ][imperative]), the imperfect~(#grammar[lakāra][laṅ][imperfect]), the optative or
  potential~(#grammar[lakāra][liṅ][optative, potential]), the aorist~(#grammar[lakāra][luṅ][aorist]), and the conditional~(#grammar[lakāra][lṛṅ][conditional]).

  Voice (#grammar[upagraha]["taking possession of, sense", voice]): We have learned the active voice#general_index[Voice, active and middle]
  (#grammar[parasmaipada]["word for another", active endings, active voice]), which takes active endings. In @Lesson:9 we will
  learn the middle voice#general_index[Middle endings, middle voice] (#grammar[ātmanepada]["word for oneself", middle endings, middle voice]), which takes middle endings.
  Usually, when the fruit of an action comes back to the agent
  (#romanization[ātman]), the #romanization[ātmanepada] is used. When the fruit of an action goes
  to another person (#romanization[para]), the #romanization[parasmaipada] is used (although this
  distinction does not seem to be strictly followed in the literature).
  Some roots are conjugated in both voices (#grammar[ubhayapada]["word for both", verb that can take active or middle endings]) and some
  usually in one voice. All the verbs we have learned so far are usually
  seen in the active voice.<def:active_middle_passive>

  Person: We have learned the three persons (#grammar[puruṣa][person]):
    #indent(
      table(
        columns: (10em, auto),
        row-gutter: par-spacing/2,
        [Third#general_index[Person (verb)][Third] (#romanization[prathama]#index(index: "grammar")[puruṣa][prathama])], [he, she, or it],
        [Second#general_index[Person (verb)][Second] (#romanization[madhyama]#index(index: "grammar")[puruṣa][madhyama])], [you],
        [First#general_index[Person (verb)][First] (#romanization[uttama]#index(index: "grammar")[puruṣa][uttama])], [I]
      )
    )

  Number: We have learned the three numbers#general_index(display: [Number (verbs and nominals)])[Number] (#grammar[vacana][number]):
    #indent(
      table(
        columns: (auto),
        row-gutter: par-spacing/2,
        [Singular#general_index[Number][Singular] (#grammar[vacana][eka][singular])],
        [Dual#general_index[Number][Dual] (#grammar[vacana][dvi][dual])],
        [Plural#general_index[Number][Plural] (#grammar[vacana][bahu][plural])],
      )
    )

+ Each verb may be classified according to these categories. For
  example, #romanization[gacchati] (he goes), is present indicative, active, third person, singular.
+ Using abbreviations, called parsing#general_index[Parsing] codes, we could identify
  #romanization[gacchati] as: _pres. indic. act. 3rd per. sing._ -- present indicative,
  active, third person, singular. (This isn’t as hard as it may seem,
  since all verbs so far are present indicative and active. All we need
  to determine is the person and number.)
+ Here are some examples:
  #indent(depth: 1em,
    table(
      columns: (auto, auto, auto),
      row-gutter: par-spacing/2,
      column-gutter: 1.5em,
      [#romanization[gacchāmi]], [I go], [pres. indic. act. 1st per. sing.],
      [#romanization[bhavanti]], [they are], [pres. indic. act. 3rd per. pl.],
      [#romanization[pṛcchāvaḥ]], [we both ask], [pres. indic. act. 1st per. dual]
    )
  )

#pagebreak(weak: true)
== Accent#general_index[Accent]
+ Accent consists of higher and lower tones#general_index[Tone] (#romanization[svara]#index(index:"grammar")[svara]). There is a raised tone#general_index[Tone][Raised] (#grammar[udātta][raised tone]), an unraised tone#general_index[Tone][Unraised] (#grammar[anudātta][unraised tone]), and a "moving" tone#general_index[Tone][Moving] (#grammar[svarita][moving tone]). In the #romanization[Ṛk Saṃhitā] the #romanization[udātta] is
  unmarked, the #romanization[anudātta] is marked by a low horizontal bar, and the #romanization[svarita] is marked by a high vertical bar. For example:

  #align(center,
    text(size:1.2em,
    sanskrit[
        अ॒ग्निमी॑ळे पु॒रोहि॑तं य॒ज्ञस्य॑ दे॒वमृ॒त्विज॑म्
      ]
    )
  )

  In classical Sanskrit texts, the accents are not marked.
+ In most Sanskrit dictionaries, a mark is placed over the #romanization[udātta] for Vedic words only. For example:
  #indent[
    #romanization[Mánu]\
    #romanization[mádhu]\
    #romanization[rátna]
  ]

+ #romanization[Pāṇini] does not give rules for stress accent.

+ For now, an important rule for proper pronunciation is to maintain
  a clear distinction between the short and long vowels (discussed
  on #ref(<Lesson1:Alphabet1>, form: "page")).

#pagebreak(weak: true)
== Vocabulary: More verbs
  #import "../vocab.typ"
  #import vocab: indeclinable, verb
  #vocab.list(columns: 2,
    [#indeclinable(label: [indeclinable])[na]], [not (not placed before the verb)],
    [#verb([vad], [vadati]) (3rd per. sing.)], [he says he speaks],
    [#verb([sthā], [tiṣṭhati]) (3rd per. sing.)], [he stands],
    )

All vocabulary is given in the order of the Sanskrit alphabet.

An additional rule you'll need to know to do these exercises is that
if a member in a series has more than one word (such as #romanization[na
gacchati]), #romanization[ca]#general_index(display: [#romanization[ca] (placement of #romanization[ca])])[ca (placement of ca)] usually comes after the first word. For example:

#indent[
    #romanization[gacchāmi na ca gachati]\
    I go and she does not go.
]

You may also see #romanization[ca] at the end of a clause (less often). For example:
  #indent[
    #romanization[gacchāmi na gachati ca]\ I go and she does not go.
  ] <postponed_ca_na>

== Exercises
+ Learn the pronunciation and order of the semi-vowels, sibilants, #romanization[anusvāra], and #romanization[visarga]. Learn the first ten consonants in #devanāgarī.
+ Write, in correct order, the entire alphabet (in transliteration, or
  roman script).
+ Conjugate each verb we have learned, and learn the nine endings.
+ Be able to give the parsing code for each form we have learned.
+ Translate the following sentences into English, using the summary
  sheet on #ref(<summary3>, form: "page"). Underneath each sentence is the sentence with
  #sandhi. Just observe the sentence with the #sandhi. (Answers are
  on #ref(<answers3>, form: "page").)

  #block(width: 100%)[
    #columns(2, gutter:0.0em)[
      #set enum(indent: 0em, body-indent: 1em)
    + #romanization[vadati na ca vaddāmi]\ (#romanization[vadati na ca vaddāmi])
    + #romanization[vadathaḥ smarataḥ ca]\ (#romanization[vadathaḥ smarataś ca])
    + #romanization[na gacchanti]\ (#romanization[na gacchanti])
    + #romanization[tiṣṭhāmaḥ gacchāmaḥ ca]\ (#romanization[tiṣṭhāmo gacchāmaś ca])
    #colbreak()
    5. #romanization[bhavathaḥ ca vasathaḥ ca]\ (#romanization[bhavathaś ca vasathaś ca])
    + #romanization[kutra bhavasi]\ (#romanization[kutra bhavasi])
    + #romanization[tiṣṭhanti gacchanti ca]\ (#romanization[tiṣṭhanti gacchanti ca])
    + #romanization[na ca pṛcchati na ca vadati]\ (#box[#romanization[na ca pṛcchati na ca vadati]])
]]
+ Translate these sentences into Sanskrit. Unless "two" is used, it will
  be understood that the plural form is intended.
  #columns(2, gutter:0.0em)[
      #set enum(indent: 0em, body-indent: 1em)
      + Where are they going?
      + We do not speak.
      + He asks and they speak.
      + Where are we standing?
      #colbreak()
      5. Where do those two live?
      + We are not going.
      + Task and they remember.
      + Where are we?
  ]

#pagebreak(weak: true)
== Summary Sheet#general_index(display: [Lesson Three])[Summary sheets][Lesson 03]<summary3>
#indent(depth: 2em)[
#tables.conjugation-gacchati()
]
=== Verbs
#table(
    columns: (6em, 7em, auto),
    root([gam]), romanization([gacchati]), [he goes],
    root([prach]), romanization([pṛcchati]), [he asks],
    root([bhū]), romanization([bhavati]), [he is, he becomes],
    root([vad]), romanization([vadati]), [he speaks],
    root([vas]), romanization([vasati]), [he lives],
    root([sthā]), romanization([tiṣṭhati]), [he stands],
    root([smṛ]), romanization([smarati]), [he remembers]
  )

=== Indeclinables
#table(
    columns: (6em, auto),
    romanization([kutra]), [where],
    romanization([ca]), [and],
    romanization([na]), [not],
  )

