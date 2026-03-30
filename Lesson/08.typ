#import "../style.typ": *
#import "../tables.typ"

#{
  let content = (
    Alphabet: (
      [The #sandhi rules for combining vowels],
    ),
    Grammar: (
      [Neuter nouns in short #romanization[a]],
    ),
    Vocabulary: (
      [Neuter nouns],
    ),
  )

[#lesson[Eight]<Lesson:8>]
chapter_summary(page_break: true, content)
}

== Alphabet: #box[Vowel Sandhi]
#[#set enum(indent: -1.7em)
+ The word "#sandhi" means "combination" or "junction point". The rules of #sandhi insure that sounds will combine in a
  pleasing, euphonic way. #romanization[Pāṇini] (1.4.109) also refers to these junction points as
  #grammar[saṃhitā]["togetherness", euphonic junction point], or "togetherness". There are two types of #sandhi rules:
  #indent[
    #set enum(spacing: 1.5 * par-leading)
    + External #sandhi, or changes at the junction between words
    + Internal #sandhi, or changes within a word
  ]
+ The #sandhi rules involve sound changes so that the flow of the
  language is smooth. As mentioned in @Lesson:2, "an apple" is
  smoother to pronounce than "a apple". "The house" is pronounced differently than
  "the other house". These are examples of external #sandhi. The #sandhi rules of Sanskrit exist because the Sanskrit
  tradition has been primarily an oral tradition, and because its grammatical insights were so sophisticated. (The term
  #sandhi has been adopted by modern linguists to describe sound modifications between words in any language.)

+ Don't allow the #sandhi rules to overwhelm you. There are many rules to learn, but with practice you will gradually
  assimilate them. We will begin our study of the external #sandhi rules using charts, and then after we have used the
  rules for some time, we will memorize them. There will be three charts, because external #sandhi can be divided into
  three groups:
  #indent[
    #set enum(spacing: 1.5 * par-leading)
    + Vowel #sandhi#general_index(display: [Vowel #sandhi])[sandhi][Vowel sandhi] (#grammar[svara-sandhi][vowel #sandhi]) @Lesson:8
    + Final #sandhi#romanization[ḥ]#general_index(display: [Final #romanization[ḥ] (#romanization[s] or #romanization[r]) #sandhi])[sandhi][Final ḥ sandhi] (#grammar[visarga-sandhi][final #romanization[ḥ] or #romanization[r] #sandhi]) @Lesson:9
    + Consonant #sandhi#romanization[ḥ]#general_index(display: [Consonant #sandhi])[sandhi][Consonant sandhi] (#grammar[hal-sandhi][consonant #sandhi]) @Lesson:10
  ]


+ The chart on #ref(<table:vowel_sandhi>, form: "page") describes what happens if a word ends with a vowel and the next
  word begins with a vowel. For example, if one word ends with a short #romanization[i], and the next word begins with
  an #romanization[a], then the two combine (#sandhi) to form #romanization[ya]:
  #indent(above: 1em, below: 1em)[
    #set par(spacing: 2.5em)


    #sandhi-example(equal: [_would be written_], [गच्छति], [अश्वम्], [गच्छत्यश्वम्], [gacchati], [aśvam], [gacchaty aśvam])

    #sandhi-example([एव], [अवशिष्यते], [एवावशिष्यते], [eva], [avaśiṣyate], [evāvaśiṣyate])

    #sandhi-example([ब्रह्म], [अस्मि], [ब्रह्मास्मि], [brahma], [asmi], [brahmāsmi])

    #sandhi-example([भव], [अर्जुन], [भवार्जुन], [bhava], [arjuna], [bhavārjuna])
  ]
+ On the following page is the chart describing the #sandhi change if the first word ends in a vowel (the vowels at the
  top of the chart) and the second word begins in a vowel (the vowels in the right column). If a vowel has #text(baseline: -1.5pt)[#romanization[#breve[–]]] above it, then it refers to a short or a long vowel.

+ This chart need not be memorized. It should be used in the exercises, and the rules will be memorized later, once the
  patterns of change are more clear.


  #block(breakable: false)[
    #margin-heading([#upper([Vowel #sandhi])#general_index[sandhi][Vowel sandhi]])
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
        table.hline(start: 0, end: 7, y: 13),

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
    ]<table:vowel_sandhi>
  ]

+ #block(breakable: false)[Here are some examples:
  #indent(table(
    row-gutter: 2em,
    columns: auto,
    [#romanization[i] + #romanization[ū] = #romanization[yū]],
    [#romanization[ṛ] + #romanization[i] = #romanization[ri]],
    [#romanization[i] + #romanization[u] = #romanization[yu]],
    [#sandhi-example([गच्छति], [इति], [गच्छतीति], [gacchati], [iti], [gacchatīti])
    ],
  ))
  Additional examples are given on
  #pages(
    <Lesson:13:sandhi_vowels:examples:start>,
    <Lesson:13:sandhi_vowels:examples:end>
  ).
  //167-170.
]

+ Remember that the apostrophe ( #romanization['] ) represents the missing letter~#romanization[a]. It is called #general_index(display: [#romanization[avagraha] ( #romanization['] )])[avagraha]
  #grammar[avagraha]["held apart, separation, pause", ( #romanization['] ), represents a missing #romanization[a]], meaning "separation". It is written in #devanāgarī as:
  #indent()[
    #sanskrit[ऽ]\
    #sandhi-example([ग्रामे], [अत्र], [ग्रामेऽत्र], [grāme], [atra], [grāme 'tra])
  ]
+ Once the #sandhi rules have been applied, there is no further application of #sandhi rules. The #sandhi rules are only
  applied once.
+ In this text, words are always separated in transliteration (roman script), unless two vowels have formed one long
  vowel, such as #romanization[i] + #romanization[i] = #romanization[ī]. In #devanāgarī script, words involving vowel
  #sandhi are joined except when there is a space (hiatus) between the vowels in the chart. Until you learn more #sandhi
  rules, all other words should be kept separated. For example:<romanization:no_break_long_vowel>
  #v(4em)

  #indent()[
    #set par(spacing: 3em)
    #sandhi-example([गच्छति], [इति], [गच्छतीति], [gacchati], [iti], [gacchatīti])
    #sandhi-example([गच्छति], [अश्वम्], [गच्छत्यश्वम्], [gacchati], [aśvam], [gacchaty aśvam])
  ]

+ In vowel #sandhi, often a vowel will be replaced by the #box[semi-vowel] that corresponds to it. For example,
  #romanization[i] will be replaced by #romanization[y]. According to #romanization[Pāṇini], the change from the
  corresponding semi-vowel to the vowel is called #grammar[samprasāraṇa]["extension, spreading out", the movement from corresponding semi-vowel to its vowel] ("spreading out", "extension") because the
  semi-vowel "spreads out" to form the vowel:
  #indent(above: 0em, [#v(-1em)
    #table(
      columns: (auto, auto, auto, auto),
      align: (left, center, center, center),
      row-gutter: (1.5em, 2.5em),
      column-gutter: (2em, 1em, 2em),
      table.header(
        [], table.cell(colspan: 2, align(center, smallcaps[Vowels])), align(center, smallcaps[Semi-vowels])
      ),
      // [], table.cell(rowspan:2, [Vowels]), [Semi-vowels],
      // row-gutter: 1em,
      [Palatal], romanization[i], romanization[ī], romanization[y],
      [Retroflex], romanization[ṛ], romanization[ṝ], romanization[r],
      [Dental], romanization[ḷ], romanization[], romanization[l],
      [Labial], romanization[u], romanization[ū], romanization[v],
    )
  ])
+ Some vowels (#grammar[pragṛhya]["restrained (from #sandhi)", vowels not subject to #sandhi])<sandhi:pragṛhya> are not subject to #sandhi. They are:
  #indent([
    + The vowels #romanization[i], #romanization[u], and #romanization[e] when they are dual endings.
    + The final vowel of an interjection (usually a vocative). For example, #romanization[rāma āgacchanti] (Rāma, they
      come.) needs no #sandhi.
  ])
+ The rules for this lesson are written out in @Lesson:13. We will memorize them at that time.
]
#pagebreak(weak: true)
== Grammar: Neuter Nouns#general_index(display: [Neuter #romanization[a]])[Noun declensions][Neuter a]
+ All the nouns that we have studied so far have been masculine. Now we will study the neuter nouns that end in short
  #romanization[a].
+ Here is the formation of the neuter short #romanization[a] nouns:

  Stem: #romanization[phala] (neuter) fruit
  #[
    #let ro(term) = romanization(term)
    #let sa(term) = sanskrit(term)
    #declension_table(
      columns: (6em, .8fr, 1fr, 1fr),
      function: it => it,
      row-gutter: (1.5em, 2em),
      [Nominative],
      [#sa[फलम्]\ #ro[phalam]],
      [#sa[फले]\ #ro[phale]],
      [#sa[फलानि]\ #ro[phalāni]],
      [Accusative],
      [#sa[फलम्]\ #ro[phalam]],
      [#sa[फले]\ #ro[phale]],
      [#sa[फलानि]\ #ro[phalāni]],
      [Instrumental],
      [#sa[फलेन]\ #ro[phalena]],
      [#sa[फलाभ्याम्]\ #ro[phalābhyām]],
      [#sa[फलैः]\ #ro[phalaiḥ]],
      [Dative],
      [#sa[फलाय]\ #ro[phalāya]],
      [#sa[फलाभ्याम्]\ #ro[phalābhyām]],
      [#sa[फलेभ्यः]\ #ro[phalebhyaḥ]],
      [Ablative],
      [#sa[फलात्]\ #ro[phalāt]],
      [#sa[फलाभ्याम्]\ #ro[phalābhyām]],
      [#sa[फलेभ्यः]\ #ro[phalebhyaḥ]],
      [Genitive],
      [#sa[फलस्य]\ #ro[phalasya]],
      [#sa[फलयोः]\ #ro[phalayoḥ]],
      [#sa[फलानाम्]\ #ro[phalānām]],
      [Locative],
      [#sa[फले]\ #ro[phale]],
      [#sa[फलयोः]\ #ro[phalayoḥ]],
      [#sa[फलेषु]\ #ro[phaleṣu]],
      [Vocative],
      [#sa[फल]\ #ro[phala]],
      [#sa[फले]\ #ro[phale]],
      [#sa[फलानि]\ #ro[phalāni]],
    )<section:neuter_a>
  ]

#pagebreak(weak: true)
== Vocabulary
#import "../vocab.typ"
#import vocab: indeclinable, neuter, verb
#vocab.list(
  [अमृतम्],
  [#neuter[amṛtam]],
  [immortality, an immortal],
  [कथम्],
  [#indeclinable[katham]],
  [how (use like #romanization[kutra])],
  [ज्ञानम्],
  [#neuter[jñānam]],
  [knowledge],
  [पठ्],
  [#verb[paṭh][paṭhati]],
  [he reads],
  [पुस्तकम्],
  [#neuter[pustakam]],
  [book],
  [फलम्],
  [#neuter[phalam]],
  [fruit],
  [वनम्],
  [#neuter[vanam]],
  [forest],
  [शास्त्रम्],
  [#neuter[śāstram]],
  [scripture],
  [सत्यम्],
  [#neuter[satyam]],
  [truth],
  [सूक्तम्],
  [#neuter[sūktam]],
  [hymn],
)

Notice that neuter nouns are also given in their nominative singular form. For example, #romanization[amṛta] (stem form)
is listed as #romanization[amṛtam] (nominative form).

Notice that the neuter nouns decline like the masculine nouns, except in the nominative, accusative, and vocative.

#pagebreak(weak: true)
== Exercises
+ We had learned that #romanization[ṛ] or #romanization[ṝ] changes the following #romanization[n] to #romanization[ṇ].
  This change will not occur if a #romanization[t] comes between, because the #romanization[t] changes the position of
  the tongue. Therefore: #romanization[amṛtāni], #romanization[amṛtena], #romanization[amṛtānām]. But:
  #romanization[śāstrāṇi], #romanization[śāstreṇa], #romanization[śāstrāṇām]. This #sandhi rule will be studied in more
  detail in @Lesson:11.
+ Put the following words together, using correct #sandhi rules, and then write the final form in #devanāgarī:
  #block(height:5*2.3em)[
  #columns(2)[
    #set enum(spacing: 2em)
    + #romanization[putreṇa atra]
    + #romanization[saha ācāryaḥ]
    + #romanization[tatra iti]
    + #romanization[iti atra]
    + #romanization[iti ācāryaḥ]
    + #romanization[devau āgacchataḥ]
    + #romanization[nare atra],
    + #romanization[vane iti],
    + #romanization[phalāni iti],
    + #romanization[smarati atra],
  ]
]
+ Write in roman script and take out the #sandhi:
  #block(height:5*3.3em)[
  #columns(2)[
    #set enum(spacing: 3em)
    + #sanskrit[गच्छतीति]
    + #sanskrit[गजावागच्छतः]
    + #sanskrit[पृच्छत्यागच्छति च]
    + #sanskrit[गच्छामीति]
    + #sanskrit[हस्त इति]
    #colbreak()
    6. #sanskrit[नृपस्याश्वः]
    + #sanskrit[अश्वेऽत्र]
    + #sanskrit[कुत्राश्वः]
    + #sanskrit[कुत्रेति]
    + #sanskrit[गच्छत्यत्र]
  ]
  ]
+ In the following exercises, remember that the subject and the predicate nominative are put in the nominative case,
  since they both refer to the same subject. (See #ref(<predicate_nominative>, form: "page").) For example:
  #indent([#romanization[rāmaḥ putraḥ bhavati]\
    (#romanization[rāmaḥ putro bhavati])\
    Rāma is the son.])
  In this text, the predicate nominative is usually placed after the subject, although other word orders are equally
  common. (See 5b, c; 6a, f, g.)
+ In the following sentences, cover up the roman script and transliterate each sentence (write in roman script). Then
  cover the #devanāgarī and write in #devanāgarī. Then take out any #sandhi. Only the #sandhi rules learned so far have
  been applied---that is, only when one word ends in a vowel and the next word begins in a vowel. Finally, translate
  into English:

  #block(above:3em)[
    #set enum(spacing: 4em)
    #set par(spacing: 3em)
    #let sa(term) = par(leading: 3em, text(size: 1.3em, sanskrit(term)))

    + #sa([रामः ग्रामात् वनम् गच्छति~।])

      #romanization[rāmaḥ grāmāt vanam gacchati]\
      (#romanization[rāmo grāmād vanaṃ gacchati])

    + #sa([अमृतम् ज्ञानस्य फलम् भवति~।])

      #romanization[amṛtam jñānasya phalam bhavati]\
      (#romanization[amṛtaṃ jñānasya phalaṃ bhavati])

    + #sa([ज्ञानम् सत्यम् भवतीति बालाः शास्त्रे पठन्ति~।])

      #romanization[jñānam satyam bhavatīti bālāḥ śāstre paṭhanti]\
      (#romanization[jñānaṃ satyaṃ bhavatīti bālāḥ śāstre paṭhanti])

    + #sa([अमृतस्य पुत्राः भवथेत्याचार्यः शिष्यान् वदति~।])

      #romanization[amṛtasya putrāh bhavathety ācāryaḥ śiṣyān vadati]\
      (#romanization[amṛtasya putrā bhavathety ācāryaḥ śiṣyān vadati])

    + #sa([कथम् आचार्याः सूक्तानि स्मरन्ति~।])

      #romanization[katham ācāryāḥ sūktāni smaranti]\
      (#romanization[katham ācāryāḥ sūktāni smaranti])

    + #sa([शास्त्रेषु सत्यम् पश्यामीति रामः वदति~।])

      #romanization[śāstreṣu satyam paśyāmīti rāmaḥ vadati]\
      (#romanization[śāstreṣu satyaṃ paśyāmīti rāmo vadati])

    + #sa([कुत्र सूक्तानाम् ज्ञानम् भवतीति वीरः पुत्रम् पृच्छति~।])

      #romanization[kutra sūktānām jñānam bhavatīti vīraḥ putram pṛcchati]\
      (#romanization[kutra sūktānāṃ jñānaṃ bhavatīti vīraḥ putraṃ pṛcchati])

    + #sa([नृपः बालाय पुस्तकम् पठति~।])

      #romanization[nṛpaḥ bālāya pustakam paṭhati]\
      (#romanization[nṛpo bālāya pustakaṃ paṭhati])
  ]

+ Translate the following sentences into Sanskrit. First write them without #sandhi, then with (vowel) #sandhi, and
  finally in #devanāgarī.

  #[
    #set enum(spacing: 2.1em)
  + The elephant is not the king of the forest.
  + How do you see the moon?
  + Rāma thinks that he sees the deer.
  + The fruit is in the hands of the boy.
  + How does the king live without Rama?
  + Rāma is the king.
  + The king is Rāma.
  + The hero lives in the village of the immortals.
  ]


+ Translate the following sentences into English. First write in roman script, then take out the #sandhi, and finally
  write in English:

  #[
    #set enum(spacing: 4em)
    #set par(spacing: 2em)
    #let sa(term) = text(size: 1.0em, sanskrit(term))
    + #sa[कथम् सूर्येण विना नराः नृपम् पश्यन्ति~।]

      #sa[(कथं सूर्येण विना नरा नृपं पश्यन्ति~।)]

    + #sa[शिष्यानाम् आचार्यः पुस्तकम् पठति~।]

      #sa[(शिष्यानामाचार्यः पुस्तकं पठति~।)]
    + #sa[अत्र वने फलानि भवन्तीति बालः वीरम् वदति~।]

      #sa[(अत्र वने फलानि भवन्तीति बालो वीरं वदति~।)]
    + #sa[मृगः वने वसति गजः च ग्रामे वसति~।]

      #sa[(मृगो वने वसति गजश्च ग्रामे वसति~।)]

      (When a phrase or clause is joined by #romanization[ca], it usually takes the second position. See #ref(
        <postponed_ca_na>,
        form: "page",
      ).)

    + #sa[ज्ञानम् पुस्तके न भवतीत्याचार्यः वदति~।]

      #sa[(ज्ञानं पुस्तके न भवतीत्याचार्यो वदति~।)]#errata[#sanskrit[पुस्तकेन] → #sanskrit[पुस्तके न]\
        Added missing space to match the solution]
    + #sa[पुस्तकेन विना शिष्यः ज्ञानाम् स्मरति~।]

      #sa[(पुस्तकेन विना शिष्यो ज्ञानां स्मरति~।)]

    + #sa[राम कुत्र मृगेण सह गच्छसीति पुत्रः पृच्छति~।]

      #sa[(राम कुत्र मृगेण सह गच्छासीति पुत्रः पृच्छति~।)]

    + #sa[नरः बालाय पुस्तकम् पठति~।]

      #sa[(नरो बालाय पुस्तकं पठति~।)]
  ]

+ Translate the following sentences into Sanskrit. Translate, put in the vowel #sandhi, and write in #devanāgarī:

  + Where do you read the knowledge of immortality?
  + How does Rāma go to the forest without the horses?
  + "The hymns are in the book", the teacher tells the students.
  + Rāma sees the truth and speaks the truth.
  + "I see the sun and the moon", says the son of the king.
  + Without knowledge, there are no teachers or students.
  + The hero speaks to the boys about immortality.
  + The horses, elephants, and boys come from the village.
  #v(1fr)

+ Transliterate the following:

  #[
    #set enum(spacing: 3em)
    #columns(2)[
      + #sanskrit[पुराण]
      + #sanskrit[राम]
      + #sanskrit[पुरुष]
      + #sanskrit[प्रकृति]
      + #sanskrit[प्रज्ञा]
      + #sanskrit[सीता]
      + #sanskrit[सुखम्]
      + #sanskrit[संयम]
      + #sanskrit[संसार]
      + #sanskrit[संस्कार]
      + #sanskrit[संस्कृत]
      + #sanskrit[सत्यम्]
      #colbreak()
      13. #sanskrit[रामराज्य]
      + #sanskrit[रामायण]
      + #sanskrit[शिष्य]
      + #sanskrit[स्थितप्रज्ञ]
      + #sanskrit[भगवद्गीता]
      + #sanskrit[समाधि]
      + #sanskrit[योग]
      + #sanskrit[बुद्ध]
      + #sanskrit[महाभारत]
      + #sanskrit[प्रज्ञापराध]
      + #sanskrit[वेदान्त]
      + #sanskrit[वेदलीला]
    ]
  ]

#pagebreak(weak: true)
== Summary Sheet#general_index(display: [Lesson Eight])[Summary sheets][Lesson 08]<summary8>

#indent(depth: 2em)[
  #tables.conjugation-gacchati()
]

=== Verbs
#table(
  columns: (6em, 1fr, 2fr),
  [#romanization[ā] + #root[gam]], romanization[āgacchati], [he comes],
  root([gam]), romanization([gacchati]), [he goes],
  root([cint]), romanization([cintayati]), [he thinks],
  root([paṭh]), romanization([paṭhati]), [he reads],
  [#root[paś] (#root[dṛś])], romanization([paśyati]), [he sees],
  root([prach]), romanization([pṛcchati]), [he asks],
  root([bhū]), romanization([bhavati]), [he is],
  root([vad]), romanization([vadati]), [he speaks, he says],
  root([vas]), romanization([vasati]), [he lives],
  root([sthā]), romanization([tiṣṭhati]), [he stands],
  root([smṛ]), romanization([smarati]), [he remembers],
)

=== Masculine Nouns
#tables.declension-narah

#columns(2)[
  #table(
    columns: (6em, 2fr),
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
  #set par(spacing: 1em)
  #set table(
    columns: (6em, 3fr),
    row-gutter: 1em,
  )
  (given in nominative form)
  #table(
    romanization([amṛtam]), [immortality],
    romanization([jñānam]), [knowledge],
    romanization([pustakam]), [book],
    romanization([phalam]), [fruit],
    romanization([vanam]), [forest],
    romanization([śāstram]), [scripture],
    romanization([satyam]), [truth],
    romanization([sūktam]), [hymn],
  )
  #colbreak()

  === Indeclinables
  #table(
    romanization([atra]), [here],
    romanization([iti]), [end of quote],
    romanization([katham]), [how],
    romanization([kutra]), [where],
    romanization([ca]), [and],
    romanization([tatra]), [there],
    romanization([na]), [not],
    romanization([vā]), [or],
    romanization([vinā]), [without],
    romanization([saha]), [with],
  )
]

#pagebreak(weak: true)
== The Monkey and the Crocodile
Translate the following, using the vocabulary on the next page. Words not given you should already know.
#[
  #set enum(spacing: 5em)
  #set par(spacing: 1.5em)
  #let sa(term) = text(size: 1.2em, sanskrit(term))

  + #sa[तत्र गङ्गायाम् कुम्भीरः भवति~।]

    #sa[(तत्र गङ्गायां कुम्भीरो भवति~।)]

  + #sa[वानरः तटे वसति~।]

    #sa[(वानरस्तटे वसति~।)]

  + #sa[वानरः फलानि कुम्भीराय निक्षिपति~।]

    #sa[(वानरः फलानि कुम्भीराय निक्षिपति~।)]

  + #sa[कुम्भीरः फलानि खदति~।]

    #sa[(कुम्भीरः फलानि खदति~।)]

  + #sa[भार्या वानरस्य हृदयम् इच्छति~।]

    #sa[(भार्या वानरस्य हृदयमिच्छति~।)]

  + #sa[हृदयम् वृक्षे भवतीति वानरः वदति~।]

    #sa[(हृदयं वृक्षे भवतीति वानरो वदति~।)]

  + #sa[कश्चित् हृदयम् चोरयतीति वानरः वदति~।]

    #sa[(कश्चिद्धृदयं चोरयतीति वानरो वदति~।)]

  + #sa[एवम् कुम्भीरः वानरः च मित्रे तिष्ठतः~।]

    #sa[(एवं कुम्भीरो वानरश्च मित्रे तिष्ठतः~।)]

]


== Vocabulary (in order of appearance)
+ #romanization[gaṅga] (fem. noun) Ganges. This follows the feminine declension for long #romanization[ā]. The locative
  is #romanization[gaṅgāyām], "in the Ganges".\
  #romanization[kumbhīraḥ] (mas. noun) crocodile
+ #romanization[vānaraḥ] (mas. noun) monkey\
  #romanization[taṭaḥ] (mas. noun) bank (of the river)
+ #romanization[nikṣipati] (3rd per. sing. verb) he throws down
+ #romanization[khādati] (3rd per. sing. verb) he eats
+ #romanization[bhāryā] (fem. noun) wife. This, again, follows the feminine declension for long #romanization[ā]. The
  stem, as well as the nominative, is #romanization[bhāryā].\
  #romanization[hṛdayam] (neuter noun) heart. The #romanization[ṛ] is written next to the #romanization[h]. (See @Lesson:6, #ref(<vowels_after_consonants:ru_hr>, form: "page").)\
  #romanization[icchati] (3rd per. sing. verb) she wants (to eat)
+ #romanization[vṛkṣaḥ] (mas. noun) tree
+ #romanization[kaḥ] (mas. pronoun) who\
  #romanization[cit] (ind.) (makes #romanization[kaḥ] indefinite)\
  #romanization[kaścit] someone\
  #romanization[corayati] (3rd per. sing. verb) he steals
+ #romanization[evam] (ind.) therefore\
  #romanization[mitram] (neuter noun) friend (Here it is used in the nom. dual.)\
  #romanization[tiṣṭhati] (3rd per. sing. verb) he remains, or stands as (Here used in the dual.)

  (The story will become more clear when it is studied in detail in @Lesson:11)
