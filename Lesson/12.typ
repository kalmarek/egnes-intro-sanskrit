#import "../style.typ": *

#{
let content = (
  Alphabet: (
    [Numerals; cardinal and ordinal numbers],
  ),
  Grammar: (
    [Nouns in #romanization[i] the gerund],
  ),
  Vocabulary: (
    [Nouns in #romanization[i]],
  )
)

[#lesson[Twelve]<Lesson:12>]
chapter_summary(page_break: true, content)
}

== Alphabet: Numbers#general_index[Numerals]<section:numbers>

+ Here are the numerals (#grammar[saṃkhyā][numeral]) and cardinal numbers from one
  to ten. Alternate forms for some numerals are given in parentheses.

  #table(
    columns: (1fr, 1.5fr, 1.5fr, 1fr, 1fr),
    inset: 0em,
    row-gutter: (1em, 2em, 2em),

    table.cell(colspan: 2, smallcaps[Numerals]),
    table.cell(colspan: 3, smallcaps[Cardinal Numbers]),
    [Arabic], [#devanāgarī], [English], table.cell(colspan: 2, [Sanskrit]),
    [1], sanskrit[१], [one], sanskrit[एक], romanization[eka],
    [2], sanskrit[२], [two], sanskrit[द्वि], romanization[dvi],
    [3], sanskrit[३], [three], sanskrit[त्रि], romanization[tri],
    [4], sanskrit[४], [four], sanskrit[चतुर्], romanization[catur],
    [5], [#sanskrit[५]#h(1em) #text(stylistic-set: 8, sanskrit[( ५ )])], [five], sanskrit[पञ्च], romanization[pañca],
    [6], sanskrit[६], [six], sanskrit[षष्], romanization[ṣaṣ],
    [7], sanskrit[७], [seven], sanskrit[सप्त], romanization[sapta],
    [8], [#sanskrit[८]#h(1em) #text(stylistic-set: 9, sanskrit[( ८ )])], [eight], sanskrit[अष्ट], romanization[aṣṭa],
    [9], [#sanskrit[९]#h(1em) #text(stylistic-set: 10, sanskrit[( ९ )])], [nine], sanskrit[नव], romanization[nava],
    [10], sanskrit[१०], [ten], sanskrit[दश], romanization[daśa],
  )

+ The #devanāgarī numerals combine just like Arabic numerals
  (since Arabic numerals were formed from Sanskrit). For example:
  #indent(above: -1em,
    table(
      columns: (4em, 4em),
      [11], sanskrit[११],
      [12], sanskrit[१२],
      [13], sanskrit[१३],
      [20], sanskrit[२०],
    )
  )

+ For now, we will not use the cardinal numbers (#romanization[eka], #romanization[dvi], etc.)
  as part of the sentences, since their declensions are complex. At the
  end of each sentence in the exercises, we will use the numerals\
  (#sanskrit[१], #sanskrit[२], #sanskrit[३], etc.).

+ Here are the ordinal#general_index[Ordinal numbers] numbers:
  #table(
    columns: (auto, auto, auto, auto),
    inset: 0em,
    row-gutter: 1.2em,
    column-gutter: 2em,
    [First], romanization[prathama], [Sixth], romanization[ṣaṣṭha],
    [Second], romanization[dvitīya], [Seventh], romanization[saptama],
    [Third], romanization[tṛtīya], [Eightth], romanization[aṣṭama],
    [Fourth], [#romanization[caturtha] (or #romanization[turīya])], [Ninth], romanization[navama],
    [Fifth], romanization[pañcama], [Tenth], romanization[daśama],
  )

+ The ordinal numbers will be used in the exercises, because their
  declensions are easier than the cardinal numbers. The ordinal
  numbers are used like adjectives, going before the noun they
  modify and agreeing with it in gender and case. The number will
  be singular.

+ The ordinal numbers follow the short #romanization[a] declension for the
  masculine and neuter. Here are the feminine stems. (The feminine #romanization[i]
  will be learned in @Lesson:13.)

    #table(
    columns: (auto, auto, auto, auto),
    inset: 0em,
    row-gutter: 1.2em,
    column-gutter: 2em,
    [First], romanization[prathamā], [Sixth], romanization[ṣaṣṭhī],
    [Second], romanization[dvitīyā], [Seventh], romanization[saptamī],
    [Third], romanization[tṛtīyā], [Eightth], romanization[aṣṭamī],
    [Fourth], [#romanization[caturthī] (or #romanization[turīyā])], [Ninth], romanization[navamī],
    [Fifth], romanization[pañcamī], [Tenth], romanization[daśamī],
  )

  Compare the #devanāgarī numerals with other scripts:
      #[
        #figure(
      table(
        columns: 11,
        row-gutter: 1em,
        // [Hieratic], table.cell(colspan: 10, []),
        [Gupta], [𑁒], [𑁓], [𑁔], [𑁕], [𑁖], [𑁗], [𑁘], [𑁙], [𑁚], [#todo[numerals in different scripts]],
        // [Maledive], table.cell(colspan: 10, []),
        [Lepcha], [᱁], [᱂], [᱃], [᱄], [᱅], [᱆], [᱇], [᱈], [᱉], [᱀],
        [Tibetan], [༡], [༢], [༣], [༤], [༥], [༦], [༧], [༨], [༩], [༠],
        [Nepali (Newa)], [𑑑], [𑑒], [𑑓], [𑑔], [𑑕], [𑑖], [𑑗], [𑑘], [𑑙], [𑑐],
        [Devanāgarī], [१], [२], [३], [४], [५], [६], [७], [८], [९], [०],
        [Kashmiri (Śārāda)], [𑇑], [𑇒], [𑇓], [𑇔], [𑇕], [𑇖], [𑇗], [𑇘], [𑇙], [𑇐],
        [Bengali], [১], [২], [৩], [৪], [৫], [৬], [৭], [৮], [৯], [০],
        // [Assamese], table.cell(colspan: 10, []),
        [Telugu], [౧], [౨], [౩], [౪], [౫], [౬], [౭], [౮], [౯], [౦],
        [Tamil], [௧], [௨], [௩], [௪], [௫], [௬], [௭], [௮], [௯], [௦],
        [Malabar (Malayam)], [൧], [൨], [൩], [൪], [൫], [൬], [൭], [൮], [൯], [൦],
        [Siahalese], [𑇡], [𑇢], [𑇣], [𑇤], [𑇥], [𑇦], [𑇧], [𑇨], [𑇩], [],
        [Burmese], [၁], [၂], [၃], [၄], [၅], [၆], [၇], [၈], [၉], [၀],
        [Siamese (Thai)], [๑], [๒], [๓], [๔], [๕], [๖], [๗], [๘], [๙], [๐],
        [Cambodian (Khmer)], [១], [២], [៣], [៤], [៥], [៦], [៧], [៨], [៩], [០],
        // [ " (simplified)],
        [Javanese], [꧑], [꧒], [꧓], [꧔], [꧕], [꧖], [꧗], [꧘], [꧙], [꧐],
      )
        )
      ]

+ Compare the cardinal numbers with numbers from several
  Romance languages:#sidenote[Add other IE languages: Greek, Albanian, Slovenian, Ukrainian]
  // Albanian:
  // një (1), dy (2), tre (3), katër (4), pesë (5), gjashtë (6), shtatë (7), tetë (8), nëntë (9), and dhjetë (10)
  // Ancient Greek
  //
// 0 	οὐδείς, οὐδεμία, οὐδέν
// 1 (αʹ) 	εἷς (heîs) [hêːs], μία (mía), ἕν (en) 	πρῶτος (prôtos)
// 2 (βʹ) 	δῠ́ο (dúo) [dý.o] 	δεύτερος (deúteros)
// 3 (γʹ) 	τρεῖς (treîs) [trêːs], τρία (tría) 	τρῐ́τος (trítos)
// 4 (δʹ) 	τέσσᾰρες (téssares) [tés.sa.res], τέσσαρα (téssara)
// τέτταρες (téttares), τέτταρα (téttara) 	τέτᾰρτος (tétartos)
// 5 (εʹ) 	πέντε (pénte) [pén.te] 	πέμπτος (pémptos)
// 6 (ϝʹ) 	ἕξ (héx) [héks] 	ἕκτος (héktos)
// 7 (ζʹ) 	ἑπτᾰ́ (heptá) [hep.tá] 	ἕβδομος (hébdomos)
// 8 (ηʹ) 	ὀκτώ (oktṓ) [ok.tɔ̌ː] 	ὄγδοος (ógdoos)
// 9 (θʹ) 	ἐννέᾰ (ennéa) [en.né.a] 	ἔνᾰτος (énatos)
// 10 (ιʹ) 	δέκᾰ (déka) [dé.ka] 	δέκᾰτος (dékatos)
// Farsi:
// 0 (۰) 	(sefr) صفر
// 1 (۱) 	(yek) یک 	(avval) اوّل
// 2 (۲) 	(do) دو 	(duvvum) دوم
// 3 (۳) 	(se) سه 	(sivvum) سوم
// 4 (۴) 	(chahâr) چهار 	(chihârum) چحارم
// 5 (۵) 	(panj) پنج 	(panjum) پنجم
// 6 (۶) 	(shesh) شش 	(shishum) ششم
// 7 (۷) 	(haft) هفت 	(haftum) هفتم
// 8 (۸) 	(hasht) هشت 	(hashtum) هشتم
// 9 (۹) 	(noh) نه 	(nuhum) نهم
// 10 (۱۰) 	(dah) ده 	(dahum) دهم
  // #box[
  //     #table(
  //   columns: 3,
  //   [ena], [jeden], [odyn],
  //   [dve], [dwa], [dva],
  //   [tri], [trzy], [try],
  //   [štiri], [cztery], [chotyry],
  //   [pet], [pięć], [p'yat'],
  //   [šest], [sześć], [shist'],
  //   [sedem], [siedem], [sim],
  //   [osem], [osiem], [visim],
  //   [devet], [dziewięć], [dev'yat'],
  //   [deset], [dziesięć], [desyat']
  // )
  // ]
// ]
  #table(
    columns: (auto, auto, auto, auto, auto),
    column-gutter: 2em,
    row-gutter: 1em,

    [English], [Sanskrit], [Italian], [French], [Spanish],

    [one], [#romanization[eka]], [uno], [un], [uno],
    [two], [#romanization[dvi]], [due], [deux], [dos],
    [three], [#romanization[tri]], [tre], [trois], [tres],
    [four], [#romanization[catur]], [quattro], [quatre], [cuatro],
    [five], [#romanization[pañca]], [cinque], [cinq], [cinco],
    [six], [#romanization[ṣaṣ]], [sei], [six], [seis],
    [seven], [#romanization[sapta]], [sette], [sept], [siete],
    [eight], [#romanization[aṣṭa]], [otto], [huit], [ocho],
    [nine], [#romanization[nava]], [nove], [neuf], [nueve],
    [ten], [#romanization[daśa]], [dieci], [dix], [diez],
  )<section:numbers_end>

== Grammar: #box[Nouns in #romanization[i]]#general_index(display: [Masculine #romanization[i], feminine #romanization[i]])[Noun declensions][Masculine i, feminine i]<section:masculine_feminine_i>

+ Here are the masculine and feminine declensions for #romanization[i] nouns. They
  differ only in the accusative plural and the instrumental singular.

  #block(width: 105%, breakable: false)[Stem: #romanization[agni] (masculine) fire; #romanization[kīrti] (feminine) glory

  #let ro(term) = romanization(term)
  #let sa(term) = sanskrit(term)
  #let sa_ro(term1, term2) = [#sanskrit[#term1]\ #romanization[#term2]]

  #let different(a, b, c, d) = table(
      columns: (auto, auto, auto),
      row-gutter: par-leading,
      column-gutter: 0.25em,
      sanskrit(a), [], sanskrit(b),
      romanization(c), [/], romanization(d)
      )
  #let optional(a, b, c, d) = table(
      columns: (auto, auto),
      row-gutter: par-leading,
      column-gutter: 0.5em,
      sanskrit(a), sanskrit(b),
      romanization(c), [(#romanization(d))]
      )

  #declension_table(
      columns: (.4fr, 1.5fr, 1.1fr, 1.3fr),
      function: (term) => term,
      row-gutter: (1.6em, 2.4em),

    [Nom.],
      sa_ro[अग्निः][agniḥ],
      sa_ro[अग्नी][agnī],
      sa_ro[अग्नयः][agnayaḥ],
    [Acc.],
      sa_ro[अग्निम्][agnim],
      sa_ro[अग्नी][agnī],
      different[अग्नीन्][कीर्तीः][agnīn][kīrtīḥ],
    [Inst.],
      different[अग्निना][कीर्त्या][agninā][kīrtyā],
      sa_ro[अग्निभ्याम्][agnibhyām],
      sa_ro[अग्निभिः][agnibhiḥ],
    [Dat.],
      optional[अग्नये][कीर्त्यै][agnaye][kīrtyai],
      sa_ro[अग्निभ्याम्][agnibhyām],
      sa_ro[अग्निभ्यः][agnibhyaḥ],
      // [#sa[अग्निभ्याम्]\ #ro[agnibhyām]],
      // [#sa[अग्निभ्यः]\ #ro[agnibhyaḥ]],
    [Abl.],
      optional[अग्नेः][कीर्त्याः][agneḥ][kīrtyāh],
      sa_ro[अग्निभ्याम्][agnibhyām],
      sa_ro[अग्निभ्यः][agnibhyaḥ],
    [Gen.],
      optional[अग्नेः][कीर्त्याः][agneḥ][kīrtyāh],
      sa_ro[अग्नयोः][agnyoḥ],
      sa_ro[सेनानाम्][agnīnām],
    [Loc.],
      optional[अग्नौ][कीर्त्याम्][agnau][kīrtyām],
      sa_ro[अग्न्योः][agnyoḥ],
      sa_ro[अग्निषु][agniṣu],
    [Voc.],
      sa_ro[अग्ने][agne],
      sa_ro[अग्नी][agnī],
      sa_ro[अग्नयः][agnayaḥ],
  )
]

+ #block(width:105%)[The singular dative, ablative, genitive, and locative have an optional
  feminine form. For example, the feminine dative singular is #romanization[kīrtaye]
  or #romanization[kīrtyai]. The feminine instrumental singular is #romanization[kīrtyā] only.]

== The Gerund#general_index[Gerund]
#[
  #set enum(indent: -1.7em)
3. Now we will study the gerund, which is a participle. A participle is
  formed from a verb, but does not take verb endings (#romanization[tiṅ]). The
  gerund (#grammar[ktvānta][geround]) indicates prior action. The sentence, "Rāma
  speaks and goes", could be formed with a gerund. It would be:
  "Having spoken, Rāma goes". "Having spoken" is the gerund.
  #indent(below: 1em)[
    #romanization[uditvā rāmo gacchati]\
    #text-underbrace[Having spoken][(gerund)], Rāma goes.
  ]

+ Because the gerund continues the action, it is sometimes called a
  continuative or conjunctive participle.
+ The gerund is used with only one subject.

+ The gerund has the meaning of doing something first, whether the
  main verb is past, present, or future. A series of gerunds may be
  used, but they must always be followed by a main verb. Each
  gerund follows in time the one before it, and the main verb comes
  last in time, as well as position in the sentence. For example:
  #indent()[
    #romanization[gajaṃ dṛṣṭvā jalaṃ labdhvā rāmo gacchati]\
    Having seen the elephant, having obtained water, Rāma goes.
  ]
+ There are several alternative translations:
  #indent[
    Seeing the elephant, obtaining water, Rāma goes.\
    After seeing the elephant and after obtaining water, Rāma
goes.\
    After having seen the elephant and after having obtained
water, Rāma goes.
  ]

+ Everything that goes with the gerund, such as the accusative, is
  usually placed immediately before it. (See the example in \#6.#todo[Referencing points?])

+ The gerund is easy to recognize because it is not declined. It is
  sometimes called the absolutive, because it stays in the same form.
  It is usually formed from the root by adding #romanization[-tvā] to the end (called
  #grammar[ktvā]["#romanization[tvā] ending" for a geround] by Panini). If there is a prefix, #romanization[-ya] is added at the end (#grammar[lyap]["#romanization[ya] ending" for a gerund with prefix]).
+ Here are the forms for the gerund (#root[as] has no gerund):

#v(-1em)
#table(
    columns: 4,
    row-gutter: 1.35em,
    smallcaps[Root], smallcaps[3rd Per. Sing.], smallcaps[Gerund], [],
    [#romanization[a + ]#root[gam]],
      romanization[āgacchati], [#romanization[āgamya]\ (also #romanization[āgatya])], [haing come],
    root[gam],
      romanization[gacchati], romanization[gatvā], [having gone],
    root[cint],
      romanization[cintayati -te], romanization[cintayitvā], [having thought],
    root[ji],
      romanization[jayati], romanization[jitvā], [having conquered],
    [#root[dṛś] (#romanization[paś])],
      romanization[paśyati], romanization[dṛṣṭvā], [having seen],
    root[paṭh],
      romanization[paṭhati], romanization[paṭhitvā], [having read],
    root[prach],
      romanization[pṛcchati], romanization[pṛṣṭvā], [having asked],
    root[bhāṣ],
      romanization[bhāṣate], romanization[bhāṣiṭvā], [having said],
    root[bhū],
      romanization[bhavati], romanization[bhūtvā], [having been],
    root[man],
      romanization[manyati], romanization[matvā], [having thought],
    root[labh],
      romanization[labhate], romanization[labdhvā], [having obtained],
    root[vad],
      romanization[vadati], romanization[uditvā], [having said],
    root[vas],
      romanization[vasati], romanization[uṣitvā], [having lived],
    root[sev],
      romanization[sevate], romanization[sevitvā], [having served],
    root[sthā],
      romanization[tiṣṭhati], romanization[sthitvā], [having stood],
    root[smṛ],
      romanization[smarati], romanization[smṛtvā], [having remembered]

  )

]

#pagebreak(weak: true)
== Vocabulary

  #import "../vocab.typ"
  #import vocab: adjective, indeclinable, feminine, masculine, neuter, verb,
  #vocab.list(columns: 3,
    [अग्निः], masculine[agniḥ], [fire],
    [अतिथिः], masculine[atithiḥ], [guest],
    [ऋषिः], masculine[ṛṣiḥ], [seer, sage],
    [कविः], masculine[kaviḥ], [poet],
    [कीर्तिः], feminine[kīrtiḥ], [glory, fame],
    [भूमिः], feminine[bhūmiḥ], [earth],
    [शान्तिः], feminine[śāntiḥ], [peace],
    [सिद्धः], masculine[siddhaḥ], block(width: 110%)[one who attains perfection],
    [सिद्धा], feminine[siddhā], block(width: 110%)[one who attains perfection],
    [सिद्धिः], feminine[siddhiḥ], block(width: 110%)[perfection, attainment, proof],

  )

#pagebreak(weak: true)
== Exercises
+ Translate the following sentences. Use the vocabulary and tables
  listed at the end of the text.
  #set enum(spacing: 5em)
  #set par(leading: 2em, spacing: 3em);

  #devanagari_enum[
  + #sanskrit[अग्निं दृष्ट्वा गृहादश्वो गच्छति]
  + #sanskrit[शिष्यो ग्रामे वसति]
  + #sanskrit[ऋषयः शास्त्राणां सूक्तानि पश्यन्ति]
  + #sanskrit[नृपो दशममतिथिं सेवते]
  + #sanskrit[ग्रामं जित्वा वीरः कीर्तिं लभते]
  + #sanskrit[सिद्धो ग्रामे वसति]
  + #sanskrit[अहो राम कुत्र गच्छसीति द्वितीयो वीरः पृच्छति]
  + #sanskrit[पुस्तकं पठित्वा कविस्तच्चिन्तयति]
  + #sanskrit[सत्येन सह शान्तिरागच्छति]
  + #sanskrit[भूमौ वसाम इति प्रजा वदन्ति]
  ]

+ Write the following sentences in Sanskrit:

  #set enum(spacing: 2.5em)
  + After conquering the army, the hero obtains fame on earth.
  + Like Sita and Rāma, the student goes to the forest.
  + After serving her third guest, Sītā speaks to Rāma.
  + In the story, Rāma obtains fame.
  + The hero does not conquer ignorance#sidenote[Use 'conquer' in the middle voice].
  + The king, Rāma by name, is very virtuous.
  + "How do you obtain perfection?" the second student asks.
  + Having lived in the forest with his wife, the king, Rāma by
    name, goes to the village.
  + Having obtained peace, perfection, and glory, the seer goes to
    the beautiful forest.
  + Thus having seen his wife on the elephant, the hero goes to her.
