#import "../style.typ": *

#{
  let content = (
    Alphabet: (
      [The #sandhi rules for final #romanization[m]],
    ),
    Grammar: (
      [More verb prefixes and the imperfect middle],
    ),
    Vocabulary: (
      [More verbs],
    ),
  )

[#lesson[Fifteen]<Lesson:15>]
chapter_summary(page_break: true, content)
}

== Alphabet: #sandhi~rules for~final~#romanization[m]#general_index(display: [Final #romanization[m]])[sandhi][Final m]<Lesson:15:sandhi_m:examples>

+ If the first word ends in #romanization[m], there are only two rules:

  #set enum(numbering: "(a)")
  + If the next word begins in a consonant, the #romanization[ṃ] becomes #romanization[m] and is pronounced (and could
    be written) as the nasal corresponding~to the first letter of the next word. For example:
    #indent(depth: 1.5em, above: 1em, below: 1em)[
      #sandhi-example([पुत्रम्], [गच्छामि], [पुत्रं गच्छामि], [putram], [gacchāmi], [putraṃ gacchāmi])
    ]
  + If the next word begins in a vowel or the #romanization[m] is at the end of a line, the #romanization[m] remains the
    same. The #romanization[m] remains the same because the mouth is not preparing to close at a specific point of
    contact as it would if the next word began with a consonant. For example:
    #indent(depth: 1.5em, above: 1em, below: 1em)[
      #sandhi-example([पुत्रम्], [आगच्छामि], [पुत्रमागच्छामि], [putram], [āgacchāmi], [putram āgacchāmi])
    ]

#pagebreak(weak: true)
== Grammar: Verb~Prefixes#general_index[Prefixes]<section:verb_prefixes>

+ Here are two more verb prefixes. Some prefixes hardly change the meaning of the original stem, while others change the
  meaning:

  #indent[
    #table(
      columns: (7em, 1fr),
      row-gutter: 1em,
      romanization[ud], [up, up out],
      romanization[uttiṣṭhati], [he stands up],
      table.cell(colspan: 2)[
        (The #romanization[d] changes to #romanization[t] because of #sandhi.)
      ],
      romanization[udbhavati], [he is born],
    )

    #table(
      columns: (7em, 1fr),
      row-gutter: 1em,
      [#romanization[ava]], [down, away, off],
      [#romanization[avagacchati]], [he goes down, understands],
    )
  ]

+ Here is a list of the major prefixes (given in #romanization[Pāṇini] 1.4.58). Prefixes
  can also be used in front of nouns.<section:prefixes_upasargas>

  #[
    #show table.cell: it => {
      if it.x == 0 {
        sanskrit(it)
      } else if it.x == 1 {
        romanization(it)
      } else {
        it
      }
    }

    #table(
      columns: 3,
      row-gutter: 2.6em,
      [अति],
      [ati],
      block(width: 105%)[across, beyond, surpassing, past (#romanization[atīndriya], beyond the senses; #romanization[atyanta], beyond the
        end, infinite)],

      [अधि],
      [adhi],
      [above, over, on (#romanization[adhyātma], pertaining to the Self; #romanization[adhiviśva], above all,
        responsible for the universe)],

      [अनु], [anu], [after, following (#romanization[anusvāra], "after sound")],

      [अप], [apa], [away, off (#romanization[apāna], "downward breath", elimination)],

      [अपि], [api], [on, close on (#romanization[apihita], placed into)],

      [अभि], [abhi], [to, against (#romanization[abhyaṅga], rubbing against)],

      [अव], [ava], [down, away, off (#romanization[avatāra], "crossing down")],

      [आ],
      [ā],
      [back, return, to, fully (#romanization[ācāra], to go toward, conduct; #romanization[ācārya], teacher of
        conduct)],

      [उद्], [ud], [up, up out (#romanization[udāna], upward breath)],

      [उप],
      [upa],
      [towards, near, subordinate (#romanization[upaniṣad], sit down near; #romanization[upasarga] "discharged near",
        prefix)],

      [दुस्],
      [dus],
      [ill, bad, difficult, hard (#romanization[duṣkṛta], badly done; #romanization[duḥkham], suffering) (usually used
        with nouns)],

      [नि], [ni], [down, into (#romanization[upaniṣad], sit down near)],

      [निस्],
      [nis],
      [out from, forth, without, entirely (#romanization[nistraiguṇya], without the three #romanization[guṇas])],

      [परा], [parā], [away, forth, along, off (#romanization[parāśara], "crusher")],

      [परि], [pari], [around, about (#romanization[pariṇāma], transformation)],

      [प्र], [pra], [forward, onward, forth (#romanization[prāṇa], vital breath; #romanization[prakṛti], nature)],

      [प्रति],
      [prati],
      [back to, in reverse direction, every (#romanization[pratyāhāra], food from the reverse direction)],

      [वि], [vi], block(width:105%)[apart, away, out, (#romanization[vyāna], moving breath, circulation)],

      [सम्],
      [sam],
      [together (#romanization[samāna], even breath, digestion; #romanization[saṃskṛta], put together, perfected)],

      [सु],
      [su],
      [well, very, good, right, easy (#romanization[sukṛta], well done; #romanization[sukham], happiness) (usually used
        with nouns)],
    )

  ]
<section:verb_prefixes:end>

== Imperfect\ Middle#general_index[Imperfect middle]

+ Here is the imperfect middle, which is also used as a past tense:

  Root: #root[bhāṣ] (middle) speak
  #import "../tables.typ"
  #[
    #let sa(t) = sanskrit(t)
    #let ro(t) = romanization(t)
    #align(right)[
      #tables.conjugation-table(
        columns: (auto, 1fr, 1fr, 1fr),
        row-gutter: (1.5em, 2.5em),
        [Third],
        [#sa[अभाषत]\ #ro[abhāṣata]],
        [#sa[अभाषेताम्]\ #ro[abhāṣetām]],
        [#sa[अभाषन्त]\ #ro[abhāṣanta]],

        [Second],
        [#sa[अभाषथाः]\ #ro[abhāṣathāḥ]],
        [#sa[अभाषेथाम्]\ #ro[abhāṣethām]],
        [#sa[अभाषध्वम्]\ #ro[abhāṣadhvam]],

        [First],
        [#sa[अभाषे]\ #ro[abhāṣe]],
        [#sa[अभाषावहि]\ #ro[abhāṣāvahi]],
        [#sa[अभाषामहि]\ #ro[abhāṣāmahi]],
      )
    ]
  ]
  Not that the endings are given on
  #ref(<tables:verb_endings:imperfect>, form: "page").

+ Compare the imperfect endings with the present indicative endings:

  #[
    #let sa(t) = sanskrit(t)
    #let ro(t) = romanization(t)
    #align(right)[
      #tables.conjugation-table(
        columns: (auto, 1fr, 1fr, 1fr),
        row-gutter: (1.5em, 2.5em),
        [Third],
        [#sa[भाषते]\ #ro[bhāṣate]],
        [#sa[भाषेते]\ #ro[bhāṣete]],
        [#sa[भाषन्ते]\ #ro[bhāṣante]],

        [Second],
        [#sa[भाषसे]\ #ro[bhāṣase]],
        [#sa[भाषेथे]\ #ro[bhāṣethe]],
        [#sa[भाषध्वे]\ #ro[bhāṣadhve]],

        [First],
        [#sa[भाषे]\ #ro[bhāṣe]],
        [#sa[भाषावहे]\ #ro[bhāṣāvahe]],
        [#sa[भाषामहे]\ #ro[bhāṣāmahe]],
      )
    ]]

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
  #import vocab: adjective, feminine, indeclinable, masculine, neuter, pronoun, verb
  #table(
    row-gutter: (2em, ..8 * (1em, 2.5em)),
    columns: (1.4fr, 1fr, 1.5fr),
    table.header(table.cell(colspan: 2, [Sanskrit]), [English]),

    [#sanskrit[अव] + #sanskrit[गम्]],
    sanskrit[अवगच्छति], table.cell(rowspan: 2, align: bottom)[he understands],
    [#romanization[ava] + #root[gam] (active)],
    romanization[avagacchati],

    [#sanskrit[उद्] + #sanskrit[भू]],
    sanskrit[उद्भवति], table.cell(rowspan: 2, align: bottom)[he is born],
    [#romanization[ud] + #root[bhu] (active)],
    romanization[udbhavati],

    [#sanskrit[उद्] + #sanskrit[स्था]], sanskrit[उत्तिष्ठति], table.cell(rowspan: 2, align: bottom)[he stands up],
    [#romanization[ud] + #root[sthā] (active)], romanization[uttiṣṭhati],

    sanskrit[रम्], sanskrit[रमते], table.cell(rowspan: 2, align: bottom)[he enjoys],
    [#root[ram] (middle)], romanization[ramate],

    sanskrit[शुभ्], sanskrit[शोभते], table.cell(rowspan: 2, align: bottom)[he shines],
    [#root[śubh] (middle)], romanization[śobhate],

    sanskrit[स्मि], sanskrit[स्मयते], table.cell(rowspan: 2, align: bottom)[he smiles],
    [#root[smi] (middle)], romanization[smayate],
  )#v(1em)

  The gerund forms for each of these verbs is listed at the back of the text
  (#pages(
    <tables:verb_forms:start>,
    <tables:verb_forms:end>
  )).
  // (pages 312-314).
]

#pagebreak(weak: true)
== Exercises
+ Memorize the #sandhi rules that take place when the first word ends in #romanization[ṃ].
+ Memorize the endings for the imperfect middle.
+ Translate the following sentences into English:
  #set enum(spacing: 5em)
  #set par(leading: 2em, spacing: 3em);

  #devanagari_enum[
    + #sanskrit[कथामबगत्य कविरस्मयत]
    + #sanskrit[रामः सीता च नद्यां जलमरमेताम्]
    + #sanskrit[यदातिथिरुपगच्छति तदा बाला उत्तिष्ठन्ति]
    + #sanskrit[यदातिथिरुपगच्छत्तदा बाला उदतिष्ठन्]
    + #sanskrit[यत्र शान्तिस्तत्र सुखम्]
    + #sanskrit[पुत्रिका नृपस्य गृह उद्भवति]
    + #sanskrit[विद्ययाविद्यां जित्वा सूर्य इवर्षिः शोभते]
    + #sanskrit[अहो राम कथं तस्मिन्गज उत्तिष्ठसीति बालोऽपृच्छत्]
    + #sanskrit[वने फलानि रत्वा वीरस्य पत्नी गृहं प्रत्यगच्छत्]
    + #sanskrit[यो बालस्तस्य पुत्रसतं रामोऽस्मयत]
    + #sanskrit[यदाचार्योऽवदत्तदा शिष्या उदतिष्ठन्]
  ]

+ Translate the following sentences into Sanskrit:

  #set enum(spacing: 3em)
  + Since the guest enjoyed the fruit#sidenote[use "fruit" in singular], (therefore) he returns to the house again.
  + Having smiled, Sita spoke to the beautiful girl.
  + Having come from the elephant, the boy approached that village.
  + He understands that the man has a son.#sidenote[Translate as if it were reported speech.]
  + After drinking the water from the fruit, the girl stands up.
  + When the moon shines, then you see shadows in the forest.
  + When the boy sees the elephant, then he smiles and laughs.
  + The man and his wife enjoy that beautiful house.
  + When his son was born, the hero smiled.
  + The girl obtained fruit#sidenote[use "fruit" in plural] from the man who is standing.
  + When the sun shines on the moon, then the moon shines on us.
