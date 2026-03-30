#import "../style.typ": *

#{
let content = (
  Alphabet: (
    [The #sandhi rules for combining vowels],
  ),
  Grammar: (
    [Feminine nouns in #romanization[ī]],
    [Relative-correlative clauses],
  ),
  Vocabulary: (
    [Nouns in #romanization[ī]],
    [Relative and correlative adverbs],
  )
)

[#lesson[Thirteen]<Lesson:13>]
chapter_summary(page_break: true, content)
}

== Alphabet: Vowel #sandhi#general_index(display: [Vowel #sandhi])[sandhi][Vowel sandhi]

+ The following chart shows the changes that vowels  often undergo.
  These changes are called #general_index(display: [#romanization[guṇa]])[guna]#grammar[guṇa]["quality, property", strengthened vowel] and #grammar[vṛddhi]["increase, extension", strengthened vowel] changes:
  #indent(above: -.5em)[#table(
    columns: (3em, 5em, 5em, 8em),
    align: (left, center+bottom, center+bottom, center),
    row-gutter: (1em, 1.5em),

    [], [#romanization[guṇa]], [#romanization[vṛddhi]], smallcaps[Corresponding Semi-vowel],
    [#romanization[a]],
      [#romanization[a]], [#romanization[ā]], [],
    [#romanization[ā]],
      [#romanization[ā]], [#romanization[ā]], [],
    [#romanization[i], #romanization[ī]],
      [#romanization[e]], [#romanization[ai]], [#romanization[y]],
    [#romanization[u], #romanization[ū]],
      [#romanization[o]], [#romanization[au]], [#romanization[v]],
    [#romanization[ṛ]],
      [#romanization[ar]], [#romanization[ār]], [#romanization[r]],
    [#romanization[ḷ]],
      [#romanization[al]], [#romanization[āl]], [#romanization[l]],
  )
  ] <guṇa_vṛddhi>

+ This important chart will help you understand how vowels combine
  in both internal and external #sandhi. Later on, it will help you
  understand how roots are strengthened (by #romanization[guṇa] or #romanization[vṛddhi]) to
  form verbs and nominals. For example:
  #indent[
    #table(
      columns: (4em, 4em, auto),
      column-gutter: 2em,
      row-gutter: (2em, 1.5em),

      [#smallcaps[Root]], [#romanization[guṇa]], [#romanization[vṛddhi]],
      // table.hline(stroke: 0.5pt),
      [#root[vid]], [#romanization[veda]], [#romanization[vaidya]],
      [#root[div]], [#romanization[deva]], [#romanization[daivika]],
      [#root[yuj]], [#romanization[yoga]], [#romanization[yaugika]],
      [#root[dhṛ]], [#romanization[dharma]], [#romanization[dhārmika]],
    )
  ]

+ Memorize the above chart and then memorize the #sandhi rules for
  combining vowels that follow.
  #v(15%)

+ #smallcaps[Similar Vowels]<Lesson:13:sandhi_vowels:examples:start>
  #table(
    columns: (10em, auto),
    row-gutter: 3em,

    [#romanization[#breve([ā])] + #romanization[#breve([ā])] = #romanization[ā]],
    sandhi-example[राम][अश्वः][रामाश्वः][rāma][aśvaḥ][rāmāśvaḥ],

    [#romanization[#breve([ī])] + #romanization[#breve([ī])] = #romanization[ī]],
    sandhi-example[गच्छति][इति][गच्छतीति][gacchati][iti][gacchatīti],

    [#romanization[#breve([ū])] + #romanization[#breve([ū])] = #romanization[ū]],
    sandhi-example[गुरु][उप][गुरूप][guru][upa][gurūpa],
    [#romanization[ṛ] + #romanization[ṛ] = #romanization[ṝ]],
    sandhi-example[पितृ][ऋषि][पितॄषि][pitṛ][ṛṣi][pitṝṣi]
  )#v(1em)

  These rules apply first. Then the following rules apply.

+ #smallcaps[Disimilar Vowels]
  #block(above: 1em)[
    #table(
      columns: (10em, auto),
      row-gutter: 3em,
      table.cell(colspan: 2, [("vowel" means any short or long vowel)]),
      [#romanization[#breve([ī])] + vowel = #romanization[y]vowel],
      sandhi-example[गच्छति][अश्वम्][गच्छत्यश्वम्][gacchati][aśvam][gacchaty aśvam],

      [#romanization[#breve([ū])] + vowel = #romanization[v]vowel],
      sandhi-example[गुरु][अश्वम्][गुर्वश्वम्][guru][aśvam][gurvāśvam],

      [#romanization[ṛ] + vowel = #romanization[r]vowel],
      sandhi-example[पितृ][अत्र][पित्रत्र][pitṛ][atra][pitr atra],
    )
  ]
  #v(1fr)

+ #table(
    columns: (10em, auto),
    row-gutter: 3em,
    [#romanization[e] + #romanization[a] = #romanization[e ']],
    sandhi-example[ग्रामे][अत्र][ग्रामेऽत्र][grāme][atra][grāme 'tra],

    [#romanization[e] + vowel = #romanization[a]#{visible_space+sym.wj+[vowel]}],

    sandhi-example[ग्रामे][इति][ग्राम इति][grāme][iti][grāma iti],
)#v(1em)

+ #table(
    columns: (10em, auto),
    row-gutter: 3em,

    [#romanization[ai] + vowel = #romanization[ā]#{visible_space+sym.wj+[vowel]}],
    sandhi-example[तस्मै][अत्र][तस्मा अत्र][tasmai][atra][tasmā atra],

    table.cell(colspan: 2)[
      #block(width: 110%)[An #romanization[o] seldom occurs in a final position before #sandhi is applied.]
    ],

    [#romanization[au] + vowel = #romanization[āv]vowel],
    sandhi-example[गजौ][इति][गजाविति][gajau][iti][gajāv iti],
)#v(1em)

+ #smallcaps[Final] "#romanization[#breve[ā]]" #smallcaps[Followed by Dissimilar Vowels]#sidenote([#romanization[#breve[ā]] is dropped and the following vowel is strengthened (if possible).])
  #table(
    columns: (10em, auto),
    row-gutter: 3em,
    [#romanization[#breve[ā]] + #romanization[#breve[ī]] = #romanization[e]],
    sandhi-example[तत्र][इति][तत्रेति][tatra][iti][tatreti],

    [#romanization[#breve[ā]] + #romanization[#breve[ū]] = #romanization[o]],
    sandhi-example[कठ][उपनिषद्][कठोपनिषद्][kaṭha][upaniṣad][kaṭhopaniṣad],

    [#romanization[#breve[ā]] + #romanization[ṛ] = #romanization[ar]],
    sandhi-example[सत्य][ऋतम्][सत्यर्तम्][satya][ṛtam][satya rtam],

    [#romanization[#breve[ā]] + #romanization[e], #romanization([ai]) = #romanization[ai]],
    sandhi-example[तत्र][एव][तत्रैव][tatra][eva][tatraiva],

    [#romanization[#breve[ā]] + #romanization[o], #romanization([au]) = #romanization[au]],
    sandhi-example[अत्र][ओकः][अत्रौकः][atra][okaḥ][atraukaḥ],
  )#v(1em)<Lesson:13:sandhi_vowels:examples:end>

+ Some vowels (#romanization[pragṛhya]#index(index: "grammar")[pragṛhya]) are not subject to #sandhi. They are:

  + the letters #romanization[ī], #romanization[ū], and #romanization[e], when they serve as dual endings. For
    example, #romanization[bale āgacchataḥ] (The two girls come.) needs no
    #sandhi.
  + the final vowel of an interjection (usually a vocative). For
    example, #romanization[aho aśva] (O horse!) needs no #sandhi.

#pagebreak(weak: true)
== Grammar: #box[Nouns in #romanization[ī]]#general_index(display: [Feminine #romanization[ī]])[Noun declensions][Feminine ī]<section:feminine_ī>
+ Here is the declension for feminine nouns ending with #romanization[ī] in their
  stem form:

#block(breakable: false)[
  Stem: #romanization[nadī] (feminine), river

  #let sa_ro(sa, ro) = [
    #sanskrit[#sa]\ #romanization[#ro]
    ]

  #declension_table(
      columns: (.5fr, 1fr, 1.3fr, 1.2fr),
      function: (term) => term,
      row-gutter: (1.6em, 2.4em),

    [Nom.],
      sa_ro[नदी][nadī],
      sa_ro[नद्यौ][nadyau],
      sa_ro[नद्यः][nadyaḥ],
    [Acc.],
      sa_ro[नदीम्][nadīm],
      sa_ro[नद्यौ][nadyau],
      sa_ro[नदीः][nadīḥ],
    [Inst.],
      sa_ro[नद्या][nadyā],
      sa_ro[नदीभ्याम्][nadībhyām],
      sa_ro[नदीभिः][nadībhiḥ],
    [Dat.],
      sa_ro[नद्यै][nadyai],
      sa_ro[नदीभ्याम्][nadībhyām],
      sa_ro[नदीभ्यः][nadībhyaḥ],
    [Abl.],
      sa_ro[नद्याः][nadyāḥ],
      sa_ro[नदीभ्याम्][nadībhyām],
      sa_ro[नदीभ्यः][nadībhyaḥ],
    [Gen.],
      sa_ro[नद्याः][nadyāh],
      sa_ro[नद्योः][nadyoḥ],
      sa_ro[नदीनाम्][nadīnām],
    [Loc.],
      sa_ro[नद्याम्][nadyām],
      sa_ro[नद्योः][nadyoḥ],
      sa_ro[नदीषु][nadīṣu],
    [Voc.],
      sa_ro[नदि][nadi],
      sa_ro[नद्यौ][nadyau],
      sa_ro[नद्यः][nadyaḥ],
  )
]

#pagebreak(weak: true)
== Relative-correlative clauses#general_index[Relative-correlative clauses]
#[
  #set enum(indent: -1.7em)
2. Now we will learn about relative and correlative clauses. In
  English, the sentence "I see where the king lives", contains two
  separate clauses: "I see" and "where the king lives". The sentence
  contains a subordinate, or relative clause ("where the king lives"),
  and an independent or correlative clause ("I see"). For example:
  #indent(below: 1em)[
    #text-underbrace(right: 0em)[I see][correlative]#sym.space.en#text-underbrace[where the king lives][relative].
  ]
+ In Sanskrit, the relative clause usually goes first and the correlative
  goes second. The relative clause is introduced by a relative adverb
  (indeclinable) and the correlative clause by a correlative adverb.

  #indent(below: 1em)[
      #set par(spacing: 4em)
      #text-underbrace[Where the king lives][relative~clause], #text-underbrace[there I see][correlative~clause].

      #text-underbrace[Where][relative~adverb] the king lives, #text-underbrace[there][correlative~adverb] I see.

      #text-underbrace(right: 0em)[#romanization[yatra nṛpo vasati]][relative~clause] #text-underbrace(left: 0em)[#romanization[tatra ahaṃ paśyāmi]][correlative~clause]

      #text-underbrace[#romanization[yatra]][relative~adverb] #romanization[nṛpo vasati] #text-underbrace[#romanization[tatra]][correlative~adverb] #romanization[ahaṃ paśyāmi]
  ]
  #v(1fr)

+ Here are the relative adverbs and their correlative partners (none are
  declined):
  #indent[
  #table(
    columns: 4,
    column-gutter: 2em,
    inset: (x: 0em),
    [#romanization[yataḥ]], [since, when], [#romanization[tataḥ]], [therefore],

    [#romanization[yatra]], [where], [#romanization[tara]], [there],

    [#romanization[yathā]], [since], [#romanization[tathā]], [so, therefore],

    [#romanization[yadā]], [when], [#romanization[tadā]], [then],

    [#romanization[yadi]], [if], [#romanization[tadā]], [then],
  )
  ]

+ Here are some examples:
  #indent[
    When he goes, then I remember.\
    #romanization[yadā gacchati tadā smarāmi]

    I go if you go.\
    _becomes_\
    If you go, then I go.\
    #romanization[yadi gacchasi tadā gacchāmi]

    You obtain fruit where the forest is.\
    _becomes_\
    Where the forest is, there you obtain fruit.\
    #romanization[yatra vanam asti tatra phalāni labhase]
  ]

+ There is also a relative-correlative pronoun, #romanization[yad] and #romanization[tad] ("who"
  and "he"). This construction would be used to translate this
  sentence:

  #indent(below: 1em)[
    The man #text-underbrace[who goes][relative~clause] is the king.
    ]

+ In Sanskrit, the relative clause contains the relative pronoun #romanization[yad],
  and the correlative clause contains the correlative pronoun #romanization[tad].
  Sometimes the correlative pronoun may be omitted. The pronoun
  #romanization[yad] follows the declension of #romanization[tad] (See #ref(<section:yad>, form: "page").):

  #indent(below: 1em)[
    #text-underbrace[who man goes][relative~clause], #text-underbrace[he is the king][correlative~clause]#v(1em)

    #text-underbrace[#romanization[yo naro gacchati]][relative~clause]#sym.space.en#text-underbrace[#romanization[sa nṛpo 'sti]][correlative~clause]
  ]

+ Both "who" (#romanization[yo]) and "he" (#romanization[sa]) refer back to the man, who is called
  the antecedent. In English, the antecedent goes directly before the
  relative pronoun (who). In Sanskrit, the antecedent usually follows
  the relative pronoun (who) or the correlative pronoun (he):

  #indent(below: 1em)[
    who man goes, he is the king\
    #romanization[yo ]
    #text-underbrace[#romanization[naro]][antecedent]
    #romanization[gacchati sa nṛpo 'sti]#v(1em)

    _or_

    who goes, that man is the king\
    #romanization[yo gacchat i sa ]
    #text-underbrace[#romanization[naro]][antecedent]
    #romanization[ nṛpo 'sti]
  ]
  #v(1fr)

+ The relative and correlative pronouns take the gender and number
  of the antecedent. The case of the antecedent depends upon its role
  in each clause. Study the following examples:

  #indent[
    #set par(spacing: 1.8em)
    I see the man who is going.

    _becomes_

    which man is going, him I see\
    #romanization[yo ]#text-underbrace[#romanization[naro]][antecedent]#romanization[ gacchati taṃ paśyāmi]\
    #context {
      let x = measure(romanization[yo naro gacchati])
      let y = measure(romanization[taṃ paśyāmi])
      text-underbrace(
        spacing: .5em,
        right: 0em,
        [#h(x.width)], [relative~clause])
        sym.space.med
        text-underbrace(
          spacing: .5em,
          left: 0em,
          [#h(y.width)], [correlative~clause])
    }#v(1em)

    _or_

    who is going, that man I see\
    #romanization[yo gacchati taṃ ]#text-underbrace[#romanization[naraṃ]][antecedent] #romanization[paśyāmi]\
    #context {
      let x = measure(romanization[yo gacchati])
      let y = measure(romanization[taṃ naraṃ paśyāmi])
      text-underbrace(
        spacing: .5em,
        right: 0em,
        [#h(x.width)], [relative~clause]
      )
      sym.space.med
      text-underbrace(
        spacing: .5em,
        left: 0em,
        [#h(y.width)], [correlative~clause]
      )
    }#v(3em)

    The king sees the elephant on which I stand.

    _becomes_

    on which elephant I stand, him the king sees\
    #romanization[yasmin ]#text-underbrace[#romanization[gaje]][antecedent] #romanization[tiṣṭhāmi taṃ nṛpaḥ paśyati]
    #context {
      let x = measure(romanization[yasmin gaje tiṣṭhāmi])
      let y = measure(romanization[taṃ nṛpaḥ paśyati])
      text-underbrace(
        spacing: .5em,
        right: 0em,
        [#h(x.width)], [relative~clause])
        sym.space.med
        text-underbrace(
          spacing: .5em,
          left: 0em,
          [#h(y.width)], [correlative~clause]
        )
    }#v(1em)

    _or_

    on which I stand, that elephant the king sees\
    #romanization[yasmiṃs tiṣṭhāmi taṃ ]#text-underbrace[#romanization[gajaṃ]][antecedent] #romanization[nṛpaḥ paśyati]
    #context {
      let x = measure(romanization[yasmiṃs tiṣṭhāmi])
      let y = measure(romanization[taṃ gajaṃ nṛpaḥ paśyati])
      text-underbrace(
        spacing: .5em,
        right: 0em,
        [#h(x.width)], [relative~clause]
      )
      sym.space.med
      text-underbrace(
        spacing: .5em,
        left: 0em,
        [#h(y.width)], [correlative~clause]
      )
    }
  ]#v(3em)

+ Notice that the relative pronoun (#romanization[yad]) and the correlative pronoun
  (#romanization[tad]) agree with each other in gender and number, but may differ
  in case. Like the antecedent, the relative word and the correlative
  word take a case (#romanization[vibhakti]) that is determined by their role in the
  clause. Study the following examples:

  #indent()[
    #set par(spacing:1.8em)
    I see the man with whom Rāma goes.

    _becomes_

    with which man Rāma goes, him I see

    #sanskrit[येन नरेण सह रामो गच्छति तमहं पश्यामि~।]\
    #romanization[yena nareṇa saha rāmo gacchati tam ahaṃ paśyāmi]

    _or_

    with whom Rāma goes, that man I see

    #sanskrit[येन रामो गच्छाति तं नरमहं पश्यामि~।]\
    #romanization[yena rāmo gacchati taṃ naram ahaṃ paśyāmi]
    #v(2em)

    Rāma lives in the village from which I am coming.

    _becomes_

    from which village I am coming, in it Rama lives

    #block(width: 110%)[#sanskrit[यस्माद्ग्रामादागच्छामि तस्मिन्रामो वसति~।]\
    #romanization[yasmād grāmād āgacchāmi tasmin rāmo vasati]]

    _or_

    from which I am coming in that village, Rāma lives

    #sanskrit[यस्मादागच्छामि तस्मिन्ग्रामे रामो वसति~।]\
    #romanization[yasmād āgacchāmi tasmin grāme rāmo vasati]
  ]

+ The pronoun #romanization[yad]#general_index(display: romanization[yad])[yad] follows the same declension as #romanization[tad] (mas., n.,
  fem.), except that the masculine nominative singular follows normal
  sandhi rules, and therefore appears as #romanization[yaḥ], #romanization[yo], etc. Observe, for
  example, the masculine:

  Stem: #romanization[yad] (masculine) who, what, which
  #[
  #let ro(term) = romanization(term)
  #let sa(term) = sanskrit(term)
  #declension_table(
      columns: (.5fr, 1fr, 1.3fr, 1.2fr),
      function: (term) => term,
      // row-gutter: (1.5em, 2.5em),

    [Nom.],
      [#sa[यः]],
      [#sa[यै]],
      [#sa[ये]],
    [Acc.],
      [#sa[यम्]],
      [#sa[यै]],
      [#sa[यान्]],
    [Inst.],
      [#sa[येन]],
      [#sa[याभ्याम्]],
      [#sa[यैः]],
    [Dat.],
      [#sa[यस्मै]],
      [#sa[याभ्याम्]],
      [#sa[येभ्यः]],
    [Abl.],
      [#sa[यस्मात्]],
      [#sa[याभ्याम्]],
      [#sa[येभ्यः]],
    [Gen.],
      [#sa[यस्य]],
      [#sa[ययोः]],
      [#sa[येषाम्]#errata([#sanskrit[येषम्] → #sanskrit[येषाम्]\ the long #romanization[ā] is missing])],
    [Loc.],
      [#sa[यस्मिन्]],
      [#sa[ययोः]],
      [#sa[येषु]],
    // [Voc.],
    //   [#sa[]],
    //   [#sa[]],
    //   [#sa[]],
  )<section:yad>
]
]

#pagebreak(weak: true)
== Vocabulary
  #import "../vocab.typ"
  #import vocab: adjective, indeclinable, feminine, masculine, neuter, pronoun, verb,
  #vocab.list(columns: 3,
    [धार्मिकी], adjective(label: [fem. adj.])[dhārmikī][], [virtuous],
    [नदी], feminine[nadī], [river],
    [पत्नी], feminine[patnī], [wife],
    [मित्रम्], neuter[mitram], [friend],
    [यद्], pronoun[yad], [who, what, which],
    [वापी], feminine[vāpī], [pond],
    [सुन्दरी], adjective(label: [fem. adj.])[sundarī][], [beautiful],
  )#v(1em)

  #table(
    columns: (0.4fr, 0.6fr, 1fr, 0.5fr, 0.75fr, 1fr),
    row-gutter: (2em, 1.5em, 2.5em),
    column-gutter: .5em,
    table.cell(colspan: 2)[#smallcaps[Sanskrit]],
    table.cell(colspan: 1)[#smallcaps[English]],
    table.cell(colspan: 2)[#smallcaps[Sanskrit]],
    table.cell(colspan: 1)[#smallcaps[English]],
    table.cell(colspan: 3)[(relative adverbs)],
    table.cell(colspan: 3)[(correlative adverbs)],


    [#sanskrit[यतः]], [#romanization[yataḥ]], [since, when],
    [#sanskrit[ततः]], [#romanization[tataḥ]], [therefore],

    [#sanskrit[यत्रा]], [#romanization[yatra]], [where],
    [#sanskrit[तत्र]], [#romanization[tara]], [there],

    [#sanskrit[यथा]], [#romanization[yathā]], [since],
    [#sanskrit[तथा]], [#romanization[tathā]], [so, therefore],

    [#sanskrit[यदा]], [#romanization[yadā]], [when],
    [#sanskrit[तदा]], [#romanization[tadā]], [then],

    [#sanskrit[यदि]], [#romanization[yadi]], [if],
    [#sanskrit[तदा]], [#romanization[tadā]], [then],
  )

#pagebreak(weak: true)
== Exercises
+ Translate the following:
  #set enum(spacing: 4.5em)
  #set par(leading: 2em, spacing: 3em);

  #devanagari_enum[
  + #sanskrit[यत्र शान्तिस्तत्र सिद्धिः]
  + #sanskrit[या मम पत्नयाः पुत्रिकास्ति सा बालात्र वसति]
  + #sanskrit[सीता सुन्दरी नृपस्य पुत्रिकास्तीति रामो वदति]
  + #sanskrit[यथाश्वा अत्र नागच्छन्ति तथा नरो बालाश्च तत्र गच्छन्ति]
  + #sanskrit[नदीं गत्वा मित्रे पुस्तकानि पठतः]
  + #sanskrit[यदा सेना नृपं सेवते तदा धार्मिको नृपो जयति]
  + #sanskrit[यदि नरः सिद्धिं लभते तदा स ऋषिर्भवति]
  + #sanskrit[यस्तस्यातिथिर्भवति तस्मै बालाय कविः कथां पठति]
  + #sanskrit[नरो मित्रेण सह सुन्दरीं नदीं गच्छति]
  + #sanskrit[यस्मादहमागच्छामि तः ग्रामं वीरो स्मरति]
  ]

+ Translate the following into Sanskrit:

  #set enum(spacing: 3em)
  + The boy obtains water from the river.
  + The wife sees the fruit which is in the pond.
  + Having obtained a garland, our guest goes to the village.
  + He lives like a king when his wife serves him.
  + Sītā, who is the wife of Rāma, obtains fame on earth.
  + The virtuous king sees the boy who is coming.
  + The student, having thought, asks the poet about the river.
  + That beautiful wife lives without suffering.
  + Ignorance is like a shadow for the man who sees.
  + When the daughter of the king comes, then the subjects stand.
