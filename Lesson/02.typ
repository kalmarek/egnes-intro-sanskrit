#import "../style.typ": *

#{
 let content = (
  Alphabet: (
      [Most of the consonants and how they are organized],
      [The last seven vowels in #devanāgarī],),
  Grammar: (
      [Verbs in the dual],
      ),
  Vocabulary: (
      [More verbs],
      [The word for "where"],
  )
)
[#lesson[Two]<Lesson:2>]
chapter_summary(page_break: true, content)
}

== Alphabet: Consonants
+ The first 25 consonants, called stops#general_index[Stop] (#grammar[sparśa]["contact", stop]), are arranged
  according to five points of articulation#general_index[Point of articulation] (#grammar[sthāna][point of articulation]):

  #[
  #let c = circle(radius: 3pt, fill: black)
  #let line-annotate(dx: 0pt, dy:0pt, angle: 0deg, length: 3cm, content) = {
    place(dx: dx, dy: dy)[
        #context {
          let m = measure(c)
          let circ = place(c)
          circ

          let l = line(
            start: (0cm + m.width/2, 0cm + m.height/2),
            angle: angle,
            length: length
          )
          let x = calc.cos(l.angle) * l.length
          let y = calc.sin(l.angle) * l.length
          context {
            let m = measure(content);
            let k = if (angle < 270deg) { m.width }
            else if (angle < 315deg) { m.width/2 }
            else {0pt}
            place(
              dy : y - m.height,
              dx: x - k,
              content
            )
          }
          place(l)
        }

    ]
  }

  #figure(
    block(width: 100%, height: 35%)[
      #align(center+bottom)[
        #image("../graphics/points_of_articulation.svg", height: 80%)
      ]
      #line-annotate(
        dx: 36%, dy: -39.5%,
        angle: 210deg, length: 2cm,
        [Lips (#grammar[oṣṭha][lips])]
      )
      #line-annotate(
        dx: 43%, dy:-44%,
        angle: 240deg, length: 3cm,
        [Teeth (#grammar[danta][teeth])]
      )
      #line-annotate(
        dx: 46.5%, dy:-54%,
        angle: 275deg, length: 2.5cm,
        [Roof (#grammar[mūrdhan][roof])]
      )
      #line-annotate(
        dx: 56%, dy:-59.5%,
        angle: 320deg, length: 2.5cm,
        [Palate (#grammar[tālu][palate])]
      )
      #line-annotate(
        dx: 68.5%, dy:-47%,
        angle: 330deg, length: 1cm,
        [Throat (#grammar[kaṇṭha][throat])]
      )
  ],
  // caption: [5 points of articulation.],
) <fig:5pts_articulation>

]


+ Here are the five sets (#romanization[varga]), arranged according to point of
  articulation. For example, all the consonants in the velar row (#romanization[ka varga]), are pronounced in the throat. The labial row is pronounced
  at the lips. The #romanization[a] is added for the sake of pronunciation.

  #{
    let r(t) = romanization(t)
      table(
      columns: (10em, 3em, 4em, 3em, 4em, 3em),
      align: (left, center, center, center, center, center),
      column-gutter: (0.25em),
      [],
        [1st],   [ 2nd],   [3rd],   [4th],    [5th],
      [Velar#general_index[Velar] (#grammar[kaṇṭhya][velar])],
        r([ka]), r([kha]), r([ga]), r([gha]), r([ṅa]),
      [Palatal#general_index[Palatal] (#grammar[tālavya][palatal])],
        r([ca]), r([cha]), r([ja]), r([jha]), r([ña]),
      [Retroflex#general_index[Retroflex] (#grammar[mūrdhanya][retroflex])],
        r([ṭa]), r([ṭha]), r([ḍa]), r([ḍha]), r([ṇa]),
      [Dental#general_index[Dental] (#grammar[dantya][dental])],
        r([ta]), r([tha]), r([da]), r([dha]), r([na]),
      [Labial#general_index[Labial] (#grammar[oṣṭhya][labial])],
        r([pa]), r([pha]), r([ba]), r([bha]), r([ma]),
      [],
        [],
        [#text-underbrace(spacing: 0.4em)[#h(3em)][Aspirated]],
        [], [#text-underbrace(spacing: 0.4em)[#h(3em)][Aspirated]],
        [#text-underbrace(spacing: 0.4em)[#h(2.5em)][Nasal]],
      [],
        [],
        [],
        table.cell(colspan: 3, [#text-underbrace( spacing: 0.5em)[#h(10.2em)][Voiced]]),
  )
  v(2em)
}


+ Each set of English letters represents one Sanskrit sound. For example, #romanization[gh] is one sound. It is the aspirated, voiced velar.
+ The sound #romanization[ka] is called #romanization[kakāra] ("ka" maker). The sound #romanization[ga] is
  called #romanization[gakāra] ("ga" maker), and so on. The only exception is that
  #romanization[ra] is not called #romanization[rakāra], but just #romanization[ra] or #grammar[repha]["snarl", the sound #romanization[ra]], "snarl". (In the next
  lesson we will learn #romanization[ra].)
+ Each row is divided into five sounds: the first (#grammar[prathama]["first", first letter in each #romanization[varga]]), the second (#grammar[dvitīya]["second", second letter in each #romanization[varga]]), the third (#grammar[tṛtīya]["third", third letter in each #romanization[varga]]), the fourth (#grammar[caturtha]["fourth", fourth letter in each #romanization[varga]]), and the
  fifth (#grammar[pañcama]["fifth", fifth letter in each #romanization[varga]]). For example, #romanization[ka], #romanization[ca], #romanization[ta], #romanization[ṭa], and #romanization[pa] are all first
  in their rows.
+ Some sounds are aspirated (#grammar[mahā-prāṇa]["great breath", aspirated])#general_index[Aspirated] -- more breath is used in
  pronouncing these sounds. Some are unaspirated#general_index[Unaspirated] (#grammar[alpa-prāṇa]["little breath", unaspirated]).
  Some are voiced#general_index[Voiced] (#grammar[ghoṣavat][voiced])—the vocal chords are used in
  pronouncing these sounds. Some are unvoiced#general_index[Unvoiced] (#grammar[aghogṣa][unvoiced]). The #romanization[ṅ], #romanization[ñ], #romanization[ṇ], #romanization[n], and #romanization[m] are called nasals#general_index[Nasal] (#grammar[anunāsika][nasal]).

+ Here is how the consonants are pronounced:
  #[
    #set par(spacing: 2.5em)
    #set table(
      columns:(auto, auto, auto),
      align: (left, left, left),
      row-gutter: 1em,
    )

    #table(
      romanization([k]),  [like the "k" in],  [skate],
      romanization([kh]), [like the "kh" in], [bunkhouse],
      romanization([g]),  [like the "g" in],  [go],
      romanization([gh]), [like the "gh" in], [loghouse],
      romanization([ṅ]),  [like the "n" in] , [sing],
    )
    #table(
      romanization([c]),  [like the "c" in],  [cello],
      romanization([ch]), [like the "ch" in], [charm (using more breath)],
      romanization([j]),  [like the "j" in],  [just],
      romanization([jh]), [like the "j" in],  [just (using more breath)],
      romanization([ñ]),  [like the "n" in],  [enjoyable],
    )

    #table(
      romanization([ṭ]),  [like the "t" in],  [stable (for this group the tongue is touching the hard palate, as in the diagram on #ref(<fig:5pts_articulation>, form: "page").)],
      romanization([ṭh]), [like the "t" in],  [table (using more breath)],
      romanization([ḍ]),  [like the "d" in],  [dynamic],
      romanization([ḍh]), [like the "dh" in], [redhead (using more breath)],
      romanization([ṇ]),  [like the "n" in],  [gentle],
    )

    In English, we normally pronounce "t" and "d" somewhere
    between these two groups (retroflex and dental).

    #table(
      romanization([t]), [like the "t" in], [stable (tongue at base of teeth)],
      romanization([th]), [like the "t" in], [table (using breath, tongue at base of teeth)],
      romanization([d]), [like the "d" in], [dynamic (tongue at base of teeth)],
      romanization([dh]), [like the "dh" in], [#box(width: 19em)[redhead (using breath, tongue at base of teeth)]],
      romanization([n]), [like the "n" in], [gentle (tongue at base of teeth)],
    )

    #table(
      romanization([p]), [like the "p" in], [spin],
      romanization([ph]), [like the "ph" in], [shepherd],
      romanization([b]), [like the "b" in], [beautiful],
      romanization([bh]), [like the "bh" in], [clubhouse],
      romanization([m]), [like the "m" in] , [mother],
    )
  ]
+ In Vedic Sanskrit, when #romanization[ḍa] or #romanization[ḍha] have vowels on both sides,
  they may become #romanization[ḷa] or #romanization[ḷha]<vedic:ḷa_and_ḷha>. The example used is that when white
  has crimson on both sides, the white changes its color slightly.
  Therefore, when #romanization[da] has a vowel on both sides, it changes to #romanization[ḷa].
  For example, #romanization[agnim iḍe] is found in the #romanization[Ṛk Saṃhitā] as #romanization[agnim iḷe].

  #v(1fr)

+ Here are the remaining vowels#general_index[devanagari script][Vowels] in #devanāgarī:
    #table(
      inset: (top: 3em),
      row-gutter: 3em,
      columns: (0.25fr, 1.8fr, 0.25fr, 1.5fr),
      align: (horizon+left, left, horizon+left, left),
    [#table_ro([ṛ])#todo([Add stroke order])], table_sa([ऋ]),
    table_ro([ṝ]), table_sa([ॠ]),

    table_ro([ḷ]), table_sa([ऌ]),
    [], [],

    table_ro([e]), table_sa([ए]),
    table_ro([ai]), table_sa([ऐ]),

    table_ro([o]), table_sa([ओ]),
    table_ro([au]), table_sa([औ]),
  )

#pagebreak(weak: true)
== Grammar: #box[Dual Verbs]#general_index[Number][Dual]
+ Unlike English, Sanskrit has dual verbs. The dual (#romanization[dvi-vacana]#index(index: "grammar")[vacana][dvi])
  is formed like this:
  #indent[
  #table(
    columns: (auto, auto, 0.8fr),
    row-gutter: 2em,
    [Third person],
    [#romanization[gacchataḥ] \ (#romanization[gaccha + tas])],
    block(width: 10em, [those two go]),

    [Second person],
    [#romanization[gacchathaḥ] \ (#romanization[gaccha + thas])], block(width:10em, [you two go]),

    [First person],
    [#romanization[gacchāvaḥ] \ (#romanization[gaccha + a + vas])],
    [We two go]
   )
  ]
  We will learn the pronunciation of #romanization[ḥ] in the next lesson. Note that the ending #romanization[tas] becomes #romanization[taḥ] when it forms a verb. This change is
  because #sandhi is applied. (See the following page for an introduction to #sandhi.)
+ In English, interrogative words usually begin with "wh", such as
  where, when, etc. In Sanskrit, interrogative words usually begin
  with #romanization[k]. The word for "where" is #romanization[kutra]. It is usually placed at the
  beginning of a sentence. The other words do not need to be
  rearranged to make a question out of the sentence. For example:

  #indent[
    #romanization([kutra gacchati])\
    Where is he going?
  ]

+ To translate #romanization[kutra gacchati] into English, first write "where" for
  #romanization[kutra] and then write "he goes" for #romanization[gacchati]. Literally it would
  then be translated as "Where he goes?" However, it is important to
  form correct English sentences. For "Where he goes?" you must
  write "Where is he going?" or "Where does he go?"



#pagebreak(weak: true)

== Vocabulary
  #import "../vocab.typ"
  #import vocab: indeclinable, verb
  #vocab.list(columns: 2,
    [#indeclinable(label: [indeclinable])[kutra]], [where],
    [#verb([bhū], [bhavati]) (3rd. per. sing.)], [he is, he becomes\ (you are, I am)],
    [#verb([vas], [vasati]) (3rd. per. sing.)], [he lives],
    [#verb([smṛ], [smarati]) (3rd per. sing.)], [he remembers],
  )
  #v(2em)

== Sandhi#general_index(display: [#sandhi, euphonic combination])[sandhi]<sandhi2>

Before doing the exercises, we will have an introduction to
#sandhi (#grammar[saṃdhi]["combination, junction, connection", euphonic combination]), the rules for how sounds are combined. In
English, we say "an apple" but "a pear". The word "the" is often
pronounced differently, depending upon the following word. For
example, "the house" and "the other house". Some sounds
are modified according to their phonetic environment. In Sanskrit,
many sounds make these same changes, and unlike English, all of
these changes are written. The rules for these changes are called
#sandhi, which means "junction", "putting together", or
"combination". #romanization[Sandhi] is now an English word and appears in
most English dictionaries. The Sanskrit word is #romanization[saṃdhi].

The exercises in @Lesson:1 are written the same even after #sandhi
rules have been applied. However, in @Lesson:2 the sentences
would be written differently if they were to appear in a Sanskrit
text. At this point, however, you do not need to learn these rules.
Just observe the sentences in parentheses, and notice that these
sentences are written slightly differently with #sandhi.

#pagebreak(weak: true)
== Exercises
+ Learn the five sets of consonants, their order, and their
  pronunciation. Learn to write the last seven vowels in #devanāgarī.
+ Be able to identify each consonant by its classification, For
  example, the aspirated, voiced palatal is #romanization[jha].
+ Learn the dual endings for verbs.
+ Learn the vocabulary.
+ Translate these sentences, using the summary sheet on #ref(<summary2>, form: "page").
  Just observe the sentences in parentheses with #sandhi. (See
  #ref(<sandhi2>, form: "page").) Answers are given on #ref(<answers2>, form: "page").

  #[
    #set enum(spacing: 1.5em)
  + #romanization[kutra vasāvaḥ] \ (#romanization[kutra vasāvaḥ])
  + #romanization[bhavasi ca bhavāvaḥ ca] \ (#romanization[bhavasi ca bhavāvaś ca])
  + #romanization[vasāmi smarataḥ ca] \ (#romanization[vasāmi smarataś ca])
  + #romanization[pṛcchathaḥ ca smarati ca] \ (#romanization[pṛcchathaś ca smarati ca])
  + #romanization[kutra gacchāvaḥ] \ (#romanization[kutra gacchāvaḥ])
  + #romanization[kutra bhavāmi] \ (#romanization[kutra bhavāmi])
  + #romanization[kutra gacchāmi]\ (#romanization[kutra gacchāmi])
  + #romanization[pṛcchāmi ca smarati ca] \ (#romanization[pṛcchāmi ca smarati ca])
  + #romanization[vasasi ca gacchāvaḥ] ca\ (#romanization[vasasi ca gacchāvaś ca])
  + #romanization[kutra gacchasi]\ (#romanization[kutra gacchasi])
  ]
+ Translate the following sentences into Sanskrit:
  + Where are you two going?
  + I live and those two live.
  + We two ask and those two remember.
  + You go and he goes.
  + Where am I going?
  + I am and you two are.
  + Where are you? (Use the singular.)
  + Where is he going?

#pagebreak(weak: true)
== Summary Sheet#general_index(display: [Lesson Two])[Summary sheets][Lesson 02]<summary2>
    #table(
      columns: (5em, 8em, 2fr),
      table.header([], smallcaps([Singular]), smallcaps([Dual])),
      [Third], [#romanization[gacchati]\ (he, she goes)],[#romanization[gacchataḥ]\ (they two go)],

      [Second], [#romanization[gacchasi]\ (you go)], [#romanization[gacchathaḥ] \ (you two go)],

      [First], [#romanization[gacchāmi]\ (I go)], [#romanization[gacchāvaḥ]\ (we two go)]
   )

=== Verbs
  #table(
    columns: (5em, 8em, 2fr),
    root([gam]), romanization([smarati]), [he goes, she goes],
    root([prach]), romanization([pṛcchati]), [he asks],
    root([bhū]), romanization([bhavati]), [he is],
    root([vas]), romanization([vasati]), [he lives],
    root([smṛ]), romanization([smarati]), [he remembers]
  )

=== Indeclinables
  #table(
    columns: (5em, 1fr),
    romanization([kutra]), [where],
    romanization([ca]), [and],
  )
