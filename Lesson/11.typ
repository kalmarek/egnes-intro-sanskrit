#import "../style.typ": *
#import "../tables.typ"

#{
let content = (
  Alphabet: (
    [Internal #sandhi rules],
  ),
  Grammar: (
    [Feminine nouns in #romanization[ā] and third person pronouns],
  ),
  Vocabulary: (
    [Feminine nouns],
  )
)

[#lesson[Eleven]<Lesson:11>]
chapter_summary(page_break: true, content)
}

== Alphabet: Internal #sandhi#general_index(display: [Internal #sandhi])[sandhi][Internal sandhi]<sandhi:s_to_ṣ>
+ We will learn only two internal #sandhi rules at this time. These
  need not be memorized, but are mainly for recognition.
+ The first rule is that #romanization[s] changes to #romanization[ṣ] if immediately preceded by any
  vowel but #romanization[a] or #romanization[ā], or preceded by #romanization[k] or #romanization[r]. The rule does not apply if
  the #romanization[s] is final or followed by an #romanization[r]. It applies even if an #romanization[anusvāra] (#romanization[ṃ]) or #romanization[visarga] (#romanization[ḥ]) comes between the vowel, #romanization[k], or #romanization[r] -- and the #romanization[s].
  This rule is clearer in chart form:

  #table(
    columns: (1fr, 1fr, .8fr, 1fr),
    stroke: (paint: luma(200), thickness: 0.5pt),
    align: center+horizon,
    inset: (x: 1em, y: 1em),
    column-gutter: 0em,
    [any vowel (but #romanization[a] or #romanization[ā]), #romanization[k], or #romanization[r]],
    [in spite of\ intervening #romanization[ṃ] or #romanization[ḥ]],
    [changes #romanization[s] to #romanization[ṣ]],
    [unless final or followed\ immediately by #romanization[r]]
  )
+ If the sound following the #romanization[s] is #romanization[t], #romanization[th], or #romanization[n], it is also retroflexed.
  For example:
  #indent[
    #table(
      columns: 3,
      romanization[sthā], [_becomes_], romanization[tiṣṭhati]
    )
  ]

+ The second rule is that #romanization[n] changes to #romanization[ṇ] if preceded anywhere in the
  same word by #romanization[r], #romanization[ṛ], #romanization[ṝ], or #romanization[ṣ]. Certain sounds may interrupt the
  process. Study this chart:

  #[
  #let ro(t) = romanization(t)

  #table(
    columns: (3em, 3fr, 1.2fr, 1.7fr),
    column-gutter: 0em,
    stroke: (paint: luma(200), thickness: 0.5pt),
    align: (center+horizon, left+horizon, center+horizon, center+horizon),
    inset: (x: .5em, y: .5em),
    [#ro[r], #ro[ṛ], #ro[ṝ], #box[or #ro[ṣ]]],
    [
    #block(above: .5em, below: .5em)[
      #table(
      columns: 6,
      align: center,
      inset: (x: 0.2em ),
      column-gutter: 0em,
      table.cell(rowspan: 4, align: top+right, [unless]),
      [#ro[c],], [#ro[ch],], [#ro[j],], [#ro[jh],], [#ro[ñ],],
      [#ro[ṭ],], [#ro[ṭh],], [#ro[ḍ],], [#ro[ḍh],], [#ro[ṇ],],
      [#ro[t],], [#ro[th],], [#ro[d],], [#ro[dh],], [],
      [#ro[l],], [#ro[ś],], [#ro[s]],
      table.cell(colspan: 2, place([interferes]))
    )]

    ],
    [changes #ro[n] to #ro[ṇ]],
    [if followed by vowels, #ro[m], #ro[y], #ro[v] or #ro[n]]
  )
]
  #v(1fr)

+ Retroflex sounds, such as #romanization[r], #romanization[ṛ], #romanization[ṝ], and #romanization[ṣ], leave the tongue in a
  retroflexed position. Unless certain sounds interfere, such as
  retroflex sounds of the releasing type, like #romanization[ṭ], or sounds from the
  row above or below, then #romanization[ṇ] becomes retroflexed. (The #romanization[ka varga]
  and #romanization[pa varga] don’t seem to move the tongue enough to change out
  of the retroflex position.) For example:
  #indent[
    #romanization[rāmeṇa] (The #romanization[r] changes the #romanization[n] to #romanization[ṇ])\
    #romanization[putreṇa] (The #romanization[r] changes the #romanization[n] to #romanization[ṇ])\
    #romanization[putrāṇām] (The #romanization[r] changes the #romanization[n] to #romanization[ṇ])\
  ]

+ In this chart, the sounds which could interfere are in bold. They
  are all the consonants in three rows except for #romanization[ya]:
  #indent[
    #table(
      columns: 7,
      align: left,
      inset: (right: 2em),

      [ka], [kha], [ga], [gha], [ṅa], [ha], [],
      [*ca*], [*cha*], [*ja*], [*jha*], [*ña*], [ya], [*śa*],
      [*ṭa*], [*ṭha*], [*ḍa*], [*ḍha*], [*ṇa*], [ra], [ṣa],
      [*ta*], [*tha*], [*da*], [*dha*], [na], [*la*], [*sa*],
      [pa], [pha], [ba], [bha], [ma], [va]
    )
  ]

+ If another #romanization[n] immediately follows the #romanization[n], they both become #romanization[ṇṇ].

#pagebreak(weak: true)

== Grammar: Feminie #box[nouns in #romanization[ā]]

+ There are standard endings to nouns, and it will help to compare all
  future declensions with the standard endings. Some declensions
  follow these endings more closely than other declensions. The
  standard endings#general_index[Standard nominal endings] are the same for all genders, except the neuter
  nominative and neuter accusative, which are #romanization[m], #romanization[ī], and #romanization[i].
  #[
    #set table(inset: (x, y) => {
      if y == 1 {
        (bottom: -1em)
      } else if y == 2 {
        (top: 1em)
      } else {
        0em
      }
    }
    )
  #show table.cell: it => {
    if it.x >= 1 and it.y >= 2 {
      romanization(it)
    } else {
      it
    }
  }
  #table(
    columns: (1.5fr, 2fr, 1fr, 2fr, 1fr, 2fr, 1fr, ),
    align: (left, center),
    // inset: (y: 1em),
    row-gutter: (1em, 2em),
    table.header(
      [],
      table.cell(colspan: 2, smallcaps([Singular])),
      table.cell(colspan: 2, smallcaps([Dual])), table.cell(colspan: 2, smallcaps([Plural]))
    ),
    [], [mas/fem], [n], [mas/fem], [n], [mas/fem], [n],
    table.hline(start: 1, end: 7, stroke: 0.5pt),
    [Nom.], [s], [m], [au], [ī], [as], [i],
    [Acc.], [am],[m], [au], [ī], [as], [i],
    [Inst.],
      table.cell(colspan: 2, [ā]),
      table.cell(colspan: 2, [bhyām]),
      table.cell(colspan: 2, [bhis]),
    [Dat.],
      table.cell(colspan: 2, [e]),
      table.cell(colspan: 2, [bhyām]),
      table.cell(colspan: 2, [bhyas]),
    [Abl.],
      table.cell(colspan: 2, [as]),
      table.cell(colspan: 2, [bhyām]),
      table.cell(colspan: 2, [bhyas]),
    [Gen.],
      table.cell(colspan: 2, [as]),
      table.cell(colspan: 2, [os]),
      table.cell(colspan: 2, [ām]),
    [Loc.],
      table.cell(colspan: 2, [i]),
      table.cell(colspan: 2, [os]),
      table.cell(colspan: 2, [su]),
  )
  ]

  These endings are generally applied to most stems using #sandhi
  rules. For example, the masculine nominative plural standard
  ending is #romanization[as]. When #romanization[as] is added to #romanization[nara], the word for "men"
  becomes #romanization[narās] (#romanization[narāḥ] with #sandhi). These standard endings are
  listed by #romanization[Pāṇini] in a #romanization[sūtra] (4.1.2) that begins with #romanization[su] and ends
  with #romanization[p]. #romanization[Pāṇini] therefore calls the nominal endings #romanization[sup]#index(index: "grammar")[sup].

+ On the following page is the declension for feminine nouns ending
  with #romanization[ā]#general_index(display: [Feminine #romanization[ā]])[Noun declensions][Feminine ā] in their stem form:
  #block(breakable: false)[
  Stem: #romanization[senā] (feminine) army
  #let ro(term) = romanization(term)
  #let sa(term) = sanskrit(term)
  #declension_table(
      columns: (0.5fr, 1fr, 1.2fr, 1.2fr),
      function: (term) => term,
      row-gutter: (1.6em, 2.4em),

    [Nom.],
      [#sa[सेना]\ #ro[senā]],
      [#sa[सेने]\ #ro[sene]],
      [#sa[सेनाः]\ #ro[senāḥ]],
    [Acc.],
      [#sa[सेनाम्]\ #ro[senām]],
      [#sa[सेने]\ #ro[sene]],
      [#sa[सेनाः]\ #ro[senāḥ]],
    [Inst.],
      [#sa[सेनया]\ #ro[senayā]],
      [#sa[सेनाभ्याम्]\ #ro[senābhyām]],
      [#sa[सेनाभिः]\ #ro[senābhiḥ]],
    [Dat.],
      [#sa[सेनायै]\ #ro[senāyai]],
      [#sa[सेनाभ्याम्]\ #ro[senābhyām]],
      [#sa[सेनाभयः]\ #ro[senābhyaḥ]],
    [Abl.],
      [#sa[सेनायाः]\ #ro[senāyāḥ]],
      [#sa[सेनाभ्याम्]\ #ro[senābhyām]],
      [#sa[सेनाभ्यः]\ #ro[senābhyaḥ]],
    [Gen.],
      [#sa[सेनायाः]\ #ro[senāyāh]],
      [#sa[सेनयोः]\ #ro[senayoḥ]],
      [#sa[सेनानाम्]\ #ro[senānām]],
    [Loc.],
      [#sa[सेनायाम्]\ #ro[senāyām]],
      [#sa[सेनयोः]\ #ro[senayoḥ]],
      [#sa[सेनासु]\ #ro[senāsu]],
    [Voc.],
      [#sa[सेने]\ #ro[sene]],
      [#sa[सेने]\ #ro[sene]],
      [#sa[सेनाः]\ #ro[senāḥ]],
  )<section:feminine_ā>
]

+ Feminine nouns must have feminine adjectives. Masculine and neuter
  adjectives normally are declined like #romanization[nara] and #romanization[phala]. If the noun is
  feminine, the adjective is declined like #romanization[ā] or #romanization[ī] stems. (The feminine
  stem ending in #romanization[ī] will be studied in @Lesson:13.) The dictionary will
  indicate how the feminine adjective is formed. For example:

  #indent[
  #table(
    columns: (auto, auto),
    row-gutter: 1em,
    [#romanization[kupita] mf(#romanization[ā])n], [#romanization[bhīta] mf(#romanization[ā])n],
    [#romanization[dhārmika] mf(#romanization[ī])n],
    [#romanization[sundara] mf(#romanization[ī])n],
  )
  ]
  If the dictionary entry is marked (mfn), the word is an adjective,
  and the feminine adjective is usually formed with #romanization[ā].

== Third Person Pronouns
#[#set enum(indent: -1.7em)
4. While the first and second person pronoun have only one
  declension, the third person pronoun has three declensions -- one
  for each gender:

  #block(breakable: false)[
  Stem: #romanization[tad] (masculine) he#general_index(display: [he; #romanization[tad] (masculine)])[Pronoun declensions][he]
  #let ro(term) = romanization(term)
  #let sa(term) = sanskrit(term)
  #declension_table(
      columns: (1.5fr, 1.1fr, 1.3fr, 1.2fr),
      function: (term) => term,
      row-gutter: (1.6em, 2.4em),
    [Nom.\ (he, they)],
      [#sa[सः]\ #ro[saḥ]],
      [#sa[तौ]\ #ro[tau]],
      [#sa[ते]\ #ro[te]],
    [Acc.\ (him, them)],
      [#sa[तम्]\ #ro[tam]],
      [#sa[तौ]\ #ro[tau]],
      [#sa[तान्]\ #ro[tān]],
    [Inst.\ (with him, them)],
      [#sa[तेन]\ #ro[tena]],
      [#sa[ताभ्याम्]\ #ro[tābhyām]],
      [#sa[तैः]\ #ro[taiḥ]],
    [Dat.\ (for him, them)],
      [#sa[तस्मै]\ #ro[tasmai]],
      [#sa[ताभ्याम्]\ #ro[tābhyām]],
      [#sa[तेभ्यः]\ #ro[tebhyaḥ]],
    [Abl.\ (from him, them)],
      [#sa[तस्मात्]\ #ro[tasmāt]],
      [#sa[ताभ्याम्]\ #ro[tābhyām]],
      [#sa[तेभ्यः]\ #ro[tebhyaḥ]],
    [Gen.\ (his, their)],
      [#sa[तस्य]\ #ro[tasya]],
      [#sa[तयोः]\ #ro[tayoḥ]],
      [#sa[तेषाम्]\ #ro[teṣām]],
    [Loc.\ (on him, them)],
      [#sa[तस्मिन्]\ #ro[tasmin]],
      [#sa[तयोः]\ #ro[tayoḥ]],
      [#sa[तेषु]\ #ro[teṣu]],
    // [Voc.\ (O)], [#ro[]], [#ro[]], [#ro[]],
  )<section:masculine_tad>
]


+ With #sandhi, #romanization[saḥ], the masculine nominative singular, drops the
  final #romanization[ḥ] before all consonants and all vowels but #romanization[a]. It usually
  appears as #romanization[sa]. At the end of a line, it appears as #romanization[saḥ], and before #romanization[a]
  it appears as #romanization[so] (and the #romanization[a] is dropped). For example:<section:sandhi_saḥ>

  #indent(
    table(
      columns: 4,
      column-gutter: (1em, 2em, 1em),
      table.cell(colspan: 2, sanskrit[स गच्छति]),
      table.cell(colspan: 2, sanskrit[सोऽत्र]),
      romanization[sa gacchati], [He goes.], romanization[so 'tra], [He is here.]
    )
  )

+ Here is the neuter third person pronoun:

  #block(breakable: false)[
    Stem: #romanization[tad] (neuter) it#general_index(display: [it; #romanization[tad] (neuter)])[Pronoun declensions][it]
  #let ro(term) = romanization(term)
  #let sa(term) = sanskrit(term)
  #declension_table(
      columns: (1fr, 1.1fr, 1.2fr, 1.2fr),
      function: (term) => term,
      row-gutter: (1.6em, 2.4em),
    [Nom.\ (it)],
      [#sa[तत्]\ #ro[tat]],
      [#sa[ते]\ #ro[te]],
      [#sa[तानि]\ #ro[tāni]],
    [Acc.\ (it—object)],
      [#sa[तत्]\ #ro[tat]],
      [#sa[ते]\ #ro[te]],
      [#sa[तानि]\ #ro[tāni]],
    [Inst.\ (with it)],
      [#sa[तेन]\ #ro[tena]],
      [#sa[ताभ्याम्]\ #ro[tābhyām]],
      [#sa[तैः]\ #ro[taiḥ]],
    [Dat.\ (for it)],
      [#sa[तस्मै]\ #ro[tasmai]],
      [#sa[ताभ्याम्]\ #ro[tābhyām]],
      [#sa[तेभ्यः]\ #ro[tebhyaḥ]],
    [Abl.\ (from it)],
      [#sa[तस्मात्]\ #ro[tasmāt]],
      [#sa[ताभ्याम्]\ #ro[tābhyām]],
      [#sa[तेभ्यः]\ #ro[tebhyaḥ]],
    [Gen.\ (of it, its)],
      [#sa[तस्य]\ #ro[tasya]],
      [#sa[तयोः]\ #ro[tayoḥ]],
      [#sa[तेषाम्]\ #ro[teṣām]],
    [Loc.\ (on it)],
      [#sa[तस्मिन्]\ #ro[tasmin]],
      [#sa[तयोः]\ #ro[tayoḥ]],
      [#sa[तेषु]\ #ro[teṣu]],
    // [Voc.\ (O)], [#ro[]], [#ro[]], [#ro[]],
  )<section:neuter_tad>
]

+ Notice that the nominative and accusative are the only forms in
  which the neuter differs from the masculine.

+ Here is the feminine third person pronoun:

  #block(breakable: false)[
    Stem: #romanization[tad] (feminine) she#general_index(display: [she; #romanization[tad] (feminine)])[Pronoun declensions][she]

  #let ro(term) = romanization(term)
  #let sa(term) = sanskrit(term)
  #declension_table(
      columns: (1.2fr, 1.1fr, 1.2fr, 1.2fr),
      function: (term) => term,
      row-gutter: (1.6em, 2.4em),
    [Nom.\ (she, they)],
      [#sa[सा]\ #ro[sā]],
      [#sa[ते]\ #ro[te]],
      [#sa[ताः]\ #ro[tāḥ]],
    [Acc.\ (her, them)],
      [#sa[ताम्]\ #ro[tām]],
      [#sa[ते]\ #ro[te]],
      [#sa[ताः]\ #ro[tāḥ]],
    [Inst.\ (with her, them)],
      [#sa[तया]\ #ro[tayā]],
      [#sa[ताभ्याम्]\ #ro[tābhyām]],
      [#sa[ताभिः]\ #ro[tābhiḥ]],
    [Dat.\ (for her, them)],
      [#sa[तस्यै]\ #ro[tasyai]],
      [#sa[ताभ्याम्]\ #ro[tābhyām]],
      [#sa[ताभ्यः]\ #ro[tābhyaḥ]],
    [Abl.\ (from her, them)],
      [#sa[तस्याः]\ #ro[tasyāḥ]],
      [#sa[ताभ्याम्]\ #ro[tābhyām]],
      [#sa[ताभ्यः]\ #ro[tābhyaḥ]],
    [Gen.\ (her, their)],
      [#sa[तस्याः]\ #ro[tasyāḥ]],
      [#sa[तयोः]\ #ro[tayoḥ]],
      [#sa[तासाम्]\ #ro[tāsām]],
    [Loc.\ (on her, them)],
      [#sa[तस्याम्]\ #ro[tasyām]],
      [#sa[तयोः]\ #ro[tayoḥ]],
      [#sa[तासु]\ #ro[tāsu]],
    // [Voc.\ (O)], [#ro[]], [#ro[]], [#ro[]],
  )<section:feminine_tad>
]

  #v(1fr)

+ The third person pronoun can act as a pronoun or a demonstrative
  pronoun#general_index[Demonstrative pronoun] meaning “that.” For example:
  #indent(above: 1em, below: 1em)[
      #sanskrit[स गच्छति ।]\
      #romanization[sa gacchati]\
      He goes. ("He" is a pronoun.)

      #sanskrit[स नरो गच्छति ।]\
      #romanization[sa naro gacchati]\
      That man goes ("That" is a demonstrative pronoun.)
  ]
  The demonstrative pronoun is usually referred to in English as a
  demonstrative adjective. In Sanskrit, it is called a pronoun.
+ The demonstrative pronoun goes in front of the noun it is used with
  and corresponds to the noun in case, gender, and number. For
  example:
  #indent[
    #sanskrit[स बालो गच्छति ।]\
    #romanization[sa bālo gacchati]\
    That boy goes.

    #sanskrit[बालस्तं ग्रामं गच्छति ।]\
    #romanization[bālas taṃ grāmaṃ gacchati]\
    The boy goes to that village.
  ]

+ #margin-heading([#upper(romanization[iva])#general_index(display: romanization[iva])[iva]])
  The word "#romanization[iva]" indicate "like" of "as if". For example:
  #indent[
    #sanskrit[नृप इव बालो वदति ।]\
    #romanization[nṛpa iva bālo vadati]\
    The boy speaks like a king.
  ]
]

#pagebreak(weak: true)
== Vocabulary
  #import "../vocab.typ"
  #import vocab: adjective, indeclinable, feminine, verb, neuter,
  #vocab.list(columns: 3,
    row-gutter: 2.6em,
    [अविद्या], feminine[avidyā], [ignorance],
    [इव], indeclinable[iva], block(width: 110%)[as if, like (used after verbs, nouns or adjectives)],
    [कथा], feminine[kathā], [story],
    [कन्या], feminine[kanyā], [girl],
    [कुपिता], adjective(label: [fem. adj.])[kupitā][], [angry],
    [छाया], feminine[chāyā], [shadow],
    [पुत्रिका], feminine[putrikā], [daughter],
    [प्रजा], feminine[prajā], [child, subject (of a king)],
    [बाला], feminine[bālā], [girl],
    [भार्या], feminine[bhāryā], [wife],
    [भीता], adjective(label: [fem. adj.])[bhītā][], [afraid],
    [माला], feminine[mālā], [garland],
    [विद्या], feminine[vidyā], [knowledge],
    [सीता], feminine[sītā], [Sītā (wife of Rāma)],
    [सेना], feminine[senā], [army],
  )

#pagebreak(weak: true)
== Exercises
+ Write in #devanāgarī, with correct internal and external #sandhi,
  and translate. Use the vocabulary list and tables located in the back
  of the text.
  #block(height: 7*2.9em)[#columns(2)[
    #set enum(spacing: 2.5em)
    + #romanization[rāmena saha]
    + #romanization[śastrāni]
    + #romanization[phale aśve staḥ]
    + #romanization[saḥ gacchati]
    + #romanization[saḥ bālaḥ āgacchati]
    + #romanization[bālaḥ mām āgacchati]
    + #romanization[sā bālā mām āgacchati]
    + #romanization[tām gacchati]
    + #romanization[saḥ bālaḥ gacchati]
    + #romanization[sā bālā gacchati]
    + #romanization[saḥ bālaḥ iva gacchāmi]
    + #romanization[aho rāma]
    + #romanization[tasmin vane saḥ vasati]
    + #romanization[sītāyāḥ mālā]
  ]]
+ Take out the #sandhi and translate the following:

  #set enum(spacing: 4em)
  #block(above: 2.5em, below: 2.5em)[
  + #sanskrit[सा सेना नृपं जयति~।]
  + #sanskrit[राम इव बालो धार्मिकोऽस्ति~।]
  + #sanskrit[तव प्रजा कथां पठति~।]
  + #sanskrit[गजस्य च्छायायां प्रजास्तिष्ठन्ति~।]~ (Notice that #romanization[ch] becomes #romanization[cch] after a short vowel. See point 5 on #ref(<Lesson:18:sandhi_ch>, form: "page").)
  + #sanskrit[नृपस्य पुत्रिका सीतास्ति~।]
  + #sanskrit[स आचार्यस्य भार्यां सेवते~।]
  + #sanskrit[नृपससय पुत्रिका~।]
  + #sanskrit[विद्यया शिष्योऽमृतं लभते~।]
  + #sanskrit[सा बालेव सीता गृहं गच्छति~।]
]
+ Translate the following into Sanskrit, including #sandhi, and then
  write in #devanāgarī:

  #set enum(spacing: 3em)
  + There is a girl, Sītā by name, in that village.
  + The daughter of the virtuous king is very afraid.
  + "He tells me again" that subject says.
  + "Aha! I remember that story!" the girl says.
  + With knowledge, you obtain immortality; with ignorance, you obtain suffering.
  + Like those girls, Sita reads books.
  + "Where is our daughter?" the hero asks his wife.
  + The wife of Rāma is Sītā.
  + The hero obtains a garland and thus obtains a wife.
  + "Without Sita, I am as if without the sun", Rama says.

== The Monkey and the Crocodile
4. Translate the following story. The vocabulary is given afterward:

  #set enum(spacing: 3.3em)
  + #sanskrit[अस्ति गङ्गायां कुमभीरः~।]
  + #sanskrit[वानरस्तस्य मित्रं गङ्गायास्तटे वसति~।]
  + #sanskrit[प्रतिदिनं वानरः पक्वानि फलानि निक्षिपति~।]
  + #sanskrit[कुमभिरः फलानि खादति~।]
  + #sanskrit[वानरस्य हृदयं मिष्टमस्तीति कुमभीरस्य भार्या वदति~।]
  + #sanskrit[भार्या हृदयं खादितुमिचछति~।]
  + #sanskrit[अहो वानर मम गृहमागचछेति कुमभीरो वानरं वदति~।]
  + #sanskrit[एवमस्त्विति वानरो वदति~।]
  + #sanskrit[तस्य पृष्ठे कुम्भीरो वानरं वहति~।]
  + #sanskrit[गङ्गाया मध्ये कुमभीरः सत्यं वदति~।]
  + #sanskrit[मम हृदयं वृक्षे भवतीति वानरो भाषते~।]
  + #sanskrit[पुनर्मां तत्र नयेति वानरो भाषते~।]
  + #sanskrit[कुमभिरो वनरं गङ्गायास्तटं नयति~।]
  + #sanskrit[वानरो वृक्षमुच्छलति~।]
  + #sanskrit[वानरो वृक्षस्य बिले पश्यति~।]
  + #sanskrit[कश्चन्मम हृदयं चोरयति समेति वानरो वदति~।]
  + #sanskrit[एवं कुमभीरो वानरश्च मित्रे तिष्ठतः~।]
  #v(1em)

== Vocabulary
#set enum(spacing: 2em, numbering: "a.", indent: 0em, body-indent: 0.75em)
#import "../vocab.typ"
#import vocab: adjective, indeclinable, feminine, masculine, neuter, verb, pronoun

  + #feminine(label: [fem., #romanization[ā] declension])[gaṅgā] Ganges\
    #masculine[kumbhīraḥ] crocodile
  + #neuter[mitram] friend\
    #masculine[vānaraḥ] monkey. Appears first as appositional (his friend, a monkey)\
    #masculine[taṭaḥ] bank (of the river)
  + #indeclinable[pratidinam] everyday\
    #adjective[pakva][ā] ripe\
    #vocab.generic(label: [3rd per. sing.])[nikṣipati] he throws down
  + #vocab.generic(label: [3rd per. sing.])[khādati] he eats
  + #neuter[hṛdayam] heart\
    #adjective[miṣṭa][ā] sweet\
    #feminine(label: [fem., #romanization[ā] declension])[bhāryā] wife
  + #vocab.generic(label: [infinitive--treated like an accusative])[khāditum] to eat\
    #vocab.generic(label: [3rd per. sing.])[icchati]  he wants (#romanization[khāditum icchati] = he wants to eat)
  + #vocab.generic(label: [2nd. per. sing. imperative])[āgaccha]
  + #indeclinable[evam astu] O.K., so let it be
  + #neuter[pṛṣṭham] back\
    #vocab.generic(label: [3rd per. sing.])[vahati] he carries
  + #neuter[madhyam] middle
  + #masculine[vṛkṣaḥ] tree
  + #vocab.generic(label: [3rd per. sing.])[nayati] he takes, he carries. Second person imperative is #romanization[naya] (combined with #romanization[iti] is #romanization[nayeti]).

  14. #vocab.generic(label: [3rd per. sing.])[ucchalati] he jumps up
  + #neuter[bilam] (n.) hole
  + #pronoun(label: [mas. pronoun])[kaḥ] who\
    #indeclinable[cit] (makes #romanization[kaḥ] indefinite)\
    #romanization[kaścit] someone
    #vocab.generic(label: [3rd per. sing.])[corayati] he steals
    #indeclinable[sma] (ind.) makes verb before it in past tense
  + #vocab.generic(label: [3rd per. sing.])[tiṣṭhati] (3rd per. sing.) he remains
