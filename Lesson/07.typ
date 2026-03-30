#import "../style.typ": *
#import "../tables.typ"

#{
let content = (
  Alphabet: (
    [Conjunct consonants],
  ),
  Grammar: (
    [The locative and the vocative],
  ),
  Vocabulary: (
    [More nouns in #romanization[a]],
  )
)

[#lesson[Seven]<Lesson:7>]
chapter_summary(page_break: true, content)
}

== Alphabet: Conjunct consonants#general_index[devanagari script][Conjunct consonants]

+ We will now learn how to write two or more consonants without a
  vowel coming between them. To write #romanization[tva], remove the vertical
  line from the #romanization[t]. For example:

  #indent(above: 1em, below: 1em)[
    #set text(size: 1.2em)
    #let sa(term) = text(size: 1.4em, sanskrit(term))
    #table(
      columns: (3em, 5em, 3em, auto),
      align: bottom,
      romanization[tava],
      sa[तव],
      romanization[tva],
      sa[त्व],
    )
  ]

+ Here are examples of other clusters of consonants that are written
  side by side:
  #indent(above: 1em, below: 1em)[
    #set text(size: 1.2em)
    #let sa(term) = text(size: 1.4em, sanskrit(term))
    #table(
      columns: (3em, 5em, 3em, auto),
      align: bottom,
      row-gutter: 3em,

      romanization[tma], sa[त्म], romanization[ṣya], sa[ष्य],
      romanization[sya], sa[स्य], romanization[tya], sa[त्य],
      romanization[bhya], sa[भ्य], romanization[nta], sa[न्त],
      romanization[nti], sa[न्ति], romanization[ṣṭa], sa[ष्ट],
    )
  ]

+ Some clusters are written on top of each other. For example:
  #indent(above: 1em, below: 1em)[
    #set text(size: 1.2em)
    #let sa(term) = text(size: 1.5em, sanskrit(term))
    #table(
      columns: (3em, 5em, 3em, auto),
      align: bottom,
      row-gutter: 3em,
      romanization[dva], sa[द्व], romanization[dda], sa[द्द],
      romanization[ṅga], sa[ङ्ग], romanization[ddho], sa[द्धो]
    )
  ]

+ Consonant conjuncts are read left to right and top to bottom. They
  will be leamed most easily by close observation to their formation
  as we continue with the exercises.

+ When the semi-vowel #romanization[r] comes immediately before another
  consonant, the #romanization[r] takes the form of a small hook above the
  consonant, For example:
  #indent(above: 1em, below: 1em)[
      #set text(size: 1.2em)
      #let sa(term) = text(size: 1.4em, sanskrit(term))
    #table(
      columns: (3em, 5em, 3em, auto),
      align: bottom,
      row-gutter: 3em,
      romanization[rpa], sa[र्प],  romanization[rmya], sa[र्म्य],
      romanization[ryā], sa[र्या], romanization[rgo], sa[र्यो],
    )
  ]
  Notice that the #romanization[r] is placed as far to the right as possible.
+ When #romanization[r] immediately follows a consonant, the #romanization[r] takes the form of a
  small slanted stroke, written near the bottom of the vertical line
  (#grammar[daṇḍa]["stick", vertical line used in many letters, vertical line at the end of a sentence], meaning "stick"), if there is a vertical line. For example:

  #indent(above: 1em, below: 1em)[
    #set text(size: 1.2em)
    #let sa(term) = text(size: 1.4em, sanskrit(term))
    #table(
      columns: (3em, 5em, 3em, auto),
      align: bottom,
      row-gutter: 3em,
      romanization[pra], sa[प्र],  romanization[bra], sa[ब्र],
      romanization[sra], sa[स्र], romanization[gra], sa[ग्र],
      romanization[mra], sa[म्र],
      romanization[dra], sa[द्र],
    )
  ]
  #v(10%)
+ Some forms are completely different than the two letters that make
  them up. These must be learned:
  #indent(above:1em, below: 1em)[
      #set text(size: 1.2em)
      #let sa(term) = text(size: 1.4em, sanskrit(term))
      #let saf(term) = text(size: 1.4em, sanskrit-fallback(term))
    #table(
      columns: (3em, 5em, 3em, auto),
      align: bottom,
      column-gutter: 1em,
      row-gutter: 4em,
      romanization[tra], sa[त्र],  romanization[jña], sa[ज्ञ],
      romanization[ddhya], saf[द्ध्य], [#sidenote[in the original: #romanization[śva]\; changed for typografical reasons (missing font variants)]#romanization[śra]], [#sa[श्र] (or) #text(stylistic-set: 5)[#sa[श्र]]],
      romanization[dya], sa[द्य],
      romanization[kta], [#sa[क्त] (or) #saf[क्त]#todo[missing #romanization[kta] variant]],
      romanization[tta], sa[त्त],
      romanization[kṣa], [#sa[क्ष] (or) #text(stylistic-set: 15)[#sa[क्ष]] ],
      romanization[hma], sa[ह्म],
      romanization[kra], [#sa[क्र] (or) #text(stylistic-set: 3)[#sa[क्र]]],
      romanization[hṇa], saf[ह्ण],
      romanization[hva], sa[ह्व],
    )
  ]

  The #romanization[’] represents a missing #romanization[a]. It is written in #devanāgarī as #sanskrit[ऽ]\
  For example:
  #indent[#sanskrit[वेदोऽहम्] #h(3em)#romanization[vedo ’ham]]

+ #block(breakable: false)[A vertical line (#romanization[daṇḍa]#index(index: "grammar")[daṇḍa]) is used as a period at the end of a sentence.
  It is also used to mark the halfway part of a verse. Two vertical
  lines mark the end of a paragraph or the end of a verse. For
  example:

  #indent(above: 1em, below: 1em)[#sanskrit[रामो गच्छति ।]]
]
+ There are other ways of forming certain letters, which you should
  be able to recognize:
  #indent(above: 1em, below: 1em)[
    #set text(size: 1.2em)
    #let sa(term) = text(size: 1.4em, sanskrit(term))
    #let sat(term) = text(size: 1.4em, sanskrit-traditional(term))
    #table(
      columns: (3em, 3em, 3em, auto),
      align: (bottom, bottom, center+bottom, bottom),
      row-gutter: 3em,

      romanization[a], [#sa[अ]], [or], [#sat[अ]],
      romanization[ā], [#sa[आ]], [or], [#sat[आ]],
      romanization[ṛ], [#sa[ऋ]], [or], [#sat[ऋ]#todo[add alternate forms of #romanization[ṛ], #romanization[ṝ]]],
      romanization[ṝ], [#sa[ॠ]], [or], [#sat[ॠ]],
      romanization[jha], [#sa[झ]], [or], [#sat[झ]],
      romanization[ṇa], [#sa[ण]], [or], [#sat[ण]],
    )
  ]

#pagebreak(weak: true)
== Grammar: Locative and vocative
+ Now we will learn the locative (#grammar[vibhakti][saptamī]["seventh", locative]) and the vocative
  (#grammar[vibhakti][saṃbodhana]["awakening, arousing", vocative (not a separate case, but a modification of the nominative case)]---"awakening", "arousing").
+ The locative#general_index[Case][Locative] case is used to express location. For example:
  #indent(below: 1em)[
    #table(
      columns: (auto, 1fr),
      [
        #romanization([grāme vasati])\
        He lives #text-underbrace[in the village][(locative)].
    ],
      [#romanization([gaje tiṣṭhati]) (same with #sandhi)\
        He stands #text-underbrace[on the elephant][(locative)].
    ]
    )
  ]

+ The vocative#general_index(display: [Vocative (part of the nominative case)])[Case][Vocative] is used for address. The vocative often, but not
  always, begins a sentence. For example:

  #indent(below: 1em)[#table(
    columns: (auto),
    [#romanization([rāma atra āgacchasi])\
    (#romanization([rāma atrāgacchasi]))],

    [#text-underbrace[O Rāma][(vocative)], you are coming here.]
  )
]
  Indian grammarians do not consider the vocative a true case
  (#romanization[vibhakti]) like the seven other cases, but a modification of the
  nominative, or naming case.

+ Here is the formation of the locative and vocative:

  Stem: #romanization[nara] (masculine) man
  #declension_table(
    columns: (6em, .8fr, 1fr, 1fr),
    function: romanization,
    row-gutter: (1.5em, 2em),
    [Locative], [nare], [narayoḥ], [nareṣu],
    [Vocative], [nara], [narau], [narāḥ],
  )
  #v(1fr)

+ Like verbs, there is a parsing#general_index[Parsing] code, or way of classifying nouns #general_index[Noun summary].
  They are classified according to:
  #index(index: "grammar", apply-casing: false, display: [#romanization[liṅga]: "mark, characteristic", gender])[liṅga]
  #table(
    columns: (auto, auto, auto),

    table.cell(rowspan: 3, [Gender#general_index[Gender (nominals)] (#romanization[liṅga]):]),
        [Masculine#general_index[Gender (nominals)][Masculine]
        (#grammar[liṅga][puṃ-liṅga][masculine])
        ], [(mas.)],
        [Feminine#general_index[Gender (nominals)][Feminine]
        (#grammar[liṅga][strī-liṅga][feminine])
        ], [(fem.)],
        [Neuter#general_index[Gender (nominals)][Neuter]
        (#grammar[liṅga][napuṃsaka-liṅga][neuter])
        ], [(n.)],
    table.cell(colspan: 3, []),
    table.cell(rowspan: 8, [Case#general_index[Case] (#romanization[vibhakti]):]),
        [Nominative#general_index[Case][Nominative] (#romanization[prathamā])], [(nom.)],
        [Accusative#general_index[Case][Accusative] (#romanization[dvitīyā])], [(acc.)],
        [Instrumental#general_index[Case][Instrumental] (#romanization[tṛtīyā])], [(inst.)],
        [Dative#general_index[Case][Dative] (#romanization[caturthī])], [(dat.)],
        [Ablative#general_index[Case][Ablative] (#romanization[pañcamī])], [(abl.)],
        [Genitive#general_index[Case][Genitive] (#romanization[ṣaṣṭhī])], [(gen.)],
        [Locative#general_index[Case][Locative] (#romanization[saptamī])], [(loc.)],
        [Vocative#general_index[Case][Vocative] (#romanization[saṃbodhana])], [(voc.)],
    table.cell(colspan: 3, []),
    table.cell(rowspan: 3, [Number (#romanization[vacana]):]),
        [Singular#general_index[Number][Singular] (#romanization[eka-vacana]#index(index: "grammar")[vacana][eka])], [(sing.)],
        [Dual#general_index[Number][Dual] (#romanization[dvi-vacana]#index(index: "grammar")[vacana][dvi]))], [(dual.)],
        [Plural#general_index[Number][Plural] (#romanization[bahu-vacana]#index(index: "grammar")[vacana][bahu]))], [(pl.)],
  )

+ The word #romanization[naraḥ] would be classified as masculine, nominative,
  singular. Its parsing code would be mas. nom. sing.

  The word #romanization[narān]
  would be classified as masculine, accusative,
  plural. Its parsing code would be mas. acc. pl.


+ #block(breakable: false)[Here is the entire short #romanization[a] masculine declension:#general_index(display: [Masculine #romanization[a]])[Noun declensions][Masculine a]

  Stem: #romanization[nara] (masculine) man
  #[
    #let ro(term) = romanization(term)
    #let sa(term) = sanskrit(term)
  #declension_table(
    columns: (6em, .8fr, 1fr, 1fr),
    function: (it) => it,
    row-gutter: (1.5em, 2.5em),
    comment_below: [#romanization[gajena], #romanization[gajānām] (See #ref(<sandhi:n_to_ṇ_with_r>, form: "page").)],
    [Nominative\ (subject)],
      [#sa[नरः]\ #ro[naraḥ]],
      [#sa[नरौ]\ #ro[narau]],
      [#sa[नराः]\ #ro[narāḥ]],
    [Accusative\ (object)],
      [#sa[नरम्]\ #ro[naram]],
      [#sa[नरौ]\ #ro[narau]],
      [#sa[नरान्]\ #ro[narān]],
    [Instrumental\ (with)],
      [#sa[नरेण]\ #ro[nareṇa]\*],
      [#sa[नराभाम्]\ #ro[narābhyām]],
      [#sa[नरैः]\ #ro[naraiḥ]],
    [Dative\ (for)],
      [#sa[नराय]\ #ro[narāya]],
      [#sa[नराभ्याम्]\ #ro[narābhyām]],
      [#sa[नरेभ्यः]\ #ro[narebhyaḥ]],
    [Ablative\ (from)],
      [#sa[नरात्]\ #ro[narāt]],
      [#sa[नराभ्याम्]\ #ro[narābhyām]],
      [#sa[नरेभ्यः]\ #ro[narebhyaḥ]],
    [Genitive\ (of, 's)],
      [#sa[नरस्य]\ #ro[narasya]],
      [#sa[नरयोः]\ #ro[narayoḥ]],
      [#sa[नराणाम्]\ #ro[narāṇām]\*],
    [Locative\ (in, on)],
      [#sa[नरे]\ #ro[nare]],
      [#sa[नरयोः]\ #ro[narayoḥ]],
      [#sa[नरेषु]\ #ro[nareṣu]],
    [Vocative\ (O)],
      [#sa[नर]\ #ro[nara]],
      [#sa[नरौ]\ #ro[narau]],
      [#sa[नराः]\ #ro[narāḥ]],
  )<section:masculine_a>
  // #comment[\*][#romanization[gajena], #romanization[gajānām] (See #ref(<sandhi:n_to_ṇ_with_r>, form: "page").)]
  ]
]

#pagebreak(weak: true)
== Vocabulary

  #import "../vocab.typ"
  #import vocab: indeclinable, masculine, verb
  #vocab.list(columns: 3,
    [आचार्यः], masculine[ācāryaḥ], [teacher],
    [चन्द्रः], masculine[candraḥ], [moon],
    [चिन्त्], verb([cint], [cintayati]), [he thinks],
    [पश्], [#verb([paś], [paśyati])\ #block(above: 1.5em, width: 20em)[(#root[dṛś] is also considered to be the root)]], [he sees],
    [विना], indeclinable(label: [indeclinable])[vinā], [without (used like #romanization[saha])],
    [शिष्यः], masculine[śiṣyaḥ], [student],
    [सूर्यः], masculine[sūryaḥ], [sun],
    [हस्तः], masculine[hastaḥ], [hand],
  )

#pagebreak(weak: true)
== Exercises
+ Learn the examples given for consonant conjuncts. Put
  these words into roman letters (transliterate them):

  #[
    #set enum(spacing: 4em)
    #let sa(term) = text(size: 1.7em, baseline: -6pt, sanskrit(term))
  #block(height: 33%, above: 3em)[#columns(3)[
    + #sa[पुराण]
    + #sa[गन्धर्व]
    + #sa[छन्दः]
    + #sa[व्याकरण]
    + #sa[गच्छति]
    + #sa[चन्द्र]
    + #sa[ज्योतिष]
    + #sa[कल्प]
    + #sa[अश्व]
    + #sa[पुत्रस्य]
    + #sa[शिष्यः]
    + #sa[तिष्ठन्ति]
  ]
]
]
+ Learn the forms for the locative and vocative.
+ Parse the following words and give their meaning:
  #[
    #set enum(spacing: 3em)
  #block(height: 33%, width: 66%)[
    #columns(2)[
    + #romanization[narāḥ]
    + #romanization[hastau]
    + #romanization[bālānām]
    + #romanization[nṛpāt]
    + #romanization[rāmāya]
    + #romanization[mṛgeṇa]
    + #romanization[gajaiḥ]
    + #romanization[vīrān]
    + #romanization[grāmeṣu]
    + #romanization[ācāryāya]
  ]
  ]
]

+ Translate the following sentences into English (Use the summary
  sheet.) Cover the #devanāgarī with a sheet of paper, write it
  yourself, and then compare:
  #block(above: 3em)[
    #set enum(spacing: 4em)
    #set par(spacing: 3em)
    #let sa(term) = par(leading: 3em, text(size: 1.3em, sanskrit(term)))

  + #sa([शिष्यः चन्द्रम् सूर्यम् च पश्यति~।])

    #romanization[śiṣyaḥ candram sūryam ca paśyati]\
    (#romanization[śiṣyaś candraṃ sūryaṃ ca paśyati])

  + #sa([राम गजाः ग्रामे तिष्ठन्ति~।])

    #romanization[rāma gajāḥ grāme tiṣṭhanti]\
    (#romanization[rāma gajā grāme tiṣṭhanti])

  + #sa([वीरः ग्रामे वसति इति आचार्यः शिष्यम् वदति~।])

    #romanization[vīraḥ grāme vasati iti ācāryaḥ śiṣyam vadati]\
    (#romanization[vīro grāme vasatīty ācāryaḥ śiṣyaṃ vadati])

  + #sa([कुत्र चन्द्रः भवति इति पुत्रः पृच्छति~।])

    #romanization[kutra candraḥ bhavati iti putraḥ pṛcchati]\
    (#romanization[kutra candro bhavatīti putraḥ pṛcchati])

  + #sa([तत्र गजे बालौ तिष्ठतः~।])

    #romanization[tatra gaje bālau tiṣṭhataḥ]\
    (#romanization[tatra gaje bālau tiṣṭhataḥ])

  + #sa([पुत्र कुत्र चन्द्रः भवति इति वीरः बालम् पृच्छति~।])

    #romanization[putra kutra candraḥ bhavati iti vīraḥ bālam pṛcchati]\
    (#romanization[putra kutra candro bhavatīti vīro bālaṃ pṛcchati])

  + #sa([आचार्यस्य शिष्यः तिष्ठति वदति च~।])

    #romanization[ācāryasya śiṣyaḥ tiṣṭhati vadati ca]\
    (#romanization[ācaryasya śiṣyas tiṣṭhati vadati ca])

  + #block(width: 102%)[#sa([रामेण विना वीराः ग्रामात् आगच्छन्ति~।])]

    #romanization[rāmeṇa vīnā vīrāḥ grāmāt āgacchati]\
    (#romanization[rāmeṇa vīnā vīrā grāmād āgacchati])

  + #text(size:0.9em)[#sa([ग्रामे वसामि इति वीरस्य बालः चिन्तयति~।])]

    #romanization[grāme vasāmi iti vīrasya bālaḥ cintayati]\
    (#romanization[grāme vasāmīti vīrasya bālaś cintayati])
]

+ Translate the following sentences into Sanskrit:

  #[
  + The king tells the hero that the boys are going to the village.
  + Without the king, the boys come.
  + In the hand of the hero is the son.
  + “Where am I?” thinks the boy.
  + He asks the son of the hero where the men are.
  + The teacher tells the student that the sun is not the moon.
  + The king lives in the village.
  + There are the elephants of the king.
]

+ Translate the following sentences into English:

  #block(above:3em)[
    #set enum(spacing: 4em)
    #set par(spacing: 3em)
    #let sa(term) = par(leading: 3em, text(size: 1.3em, sanskrit(term)))

  + #sa([रामेण विना बालः ग्रामम् गच्छति~।])

    #romanization[rāmeṇa vinā bālaḥ grāmam gacchati]\
    (#romanization[rāmeṇa vinā bālo grāmaṃ gacchati])

  + #sa([कुत्र नृपस्य गजाः भवन्ति~।])

    #romanization[kutra nṛpasya gajāḥ bhavanti]\
    (#romanization[kutra nṛpasya gajā bhavant])

  + #sa([अत्र भवामि इति बालः नरम् वदति~।])

    #romanization[atra bhavāmi iti bālaḥ naram vadati]\
    (#romanization[atra bhavāmīti bālo naraṃ vadati])

  + #sa([सूर्येण विना चन्द्रम् न पश्यसि~।])

    #romanization[sūryeṇa vinā candram na paśyasi]\
    (#romanization[sūryeṇa vinā candraṃ na paśyasi])

  + #sa([आचार्यः शिष्यान् वदति~।])

    #romanization[ācāryaḥ śiṣyān vadati]\
    (#romanization[ācāryaḥ śiṣyān vadati])

  + #sa([चन्द्रम् पश्यामि इति बालः चिन्तयति~।])

    #romanization[candram paśyāmi iti bālaḥ cintayati]\
    (#romanization[candraṃ paśyāmīti bālaś cintayati])

  + #sa([अत्र ग्रामाणाम् नृपः आगच्छति~।])

    #romanization[atra grāmāṇām nṛpaḥ āgacchati]\
    (#romanization[atra grāmāṇāṃ nṛpa āgacchati])

  + #sa([नृपः वीरस्य अश्वम् पश्यति~।])

    #romanization[nṛpaḥ vīrasya aśvam paśyati]\
    (#romanization[nṛpo vīrasyāśvaṃ paśyati])

  + #sa([कुत्र सूर्यः चन्द्रः च भवतः इति बालः पृच्छति ।])

    #romanization[kutra sūryaḥ candraḥ ca bhavataḥ iti bālaḥ pṛcchati]\
    (#romanization[kutra sūryaś candraś ca bhavata iti bālaḥ pṛcchati])

  + #sa([शिष्याः नरम् न स्मरन्ति~।])

    #romanization[śiṣyāḥ naram na smaranti]\
    (#romanization[śiṣyā naraṃ na smaranti])

]

+ Translate the following sentences into Sanskrit, writing first in roman
  script and then in #devanāgarī:

  #[
  #set enum(spacing: 4em)
  + "Where are you going?" the boy asks the king's son.
  + The two deer are in the village.
  + The teacher speaks to the hero's son.
  + The king sees the sun and the moon.
  + Without the sun we do not see the moon.
  + The hero is on the elephant of the king.
  + "We live in the villages", the boys say.
  + Rāma goes from the horses to the elephants.
  + "Where are we going?" the boy asks the king.
  + The teacher lives in the village with the students.
  ]
  #v(1fr)
+ Transliterate the following:

  #[
    #set enum(spacing: 3.5em, numbering: "1.")
    #columns(2)[
    #enum(
      [#sanskrit[ऋषि]],
      [#sanskrit[आसन]],
      [#sanskrit[अहंकार]],
      [#sanskrit[गुण]],
      [#sanskrit[ज्ञान]],
      [#sanskrit[कुरुक्षेत्र]],
      [#sanskrit[कर्म]],
      [#sanskrit[ध्यान]],
      [#sanskrit[दर्शन]],
      [#sanskrit[दुःख]],
      [#sanskrit[वेद]],
      [#sanskrit[चित्त]],
      [#sanskrit[चित्तवृत्ति]],
      [#sanskrit[अविद्या]],
      [#sanskrit[अव्यक्त]],
      [#sanskrit[धारणा]],
      [#sanskrit[आत्मन्]],
      [#sanskrit[आनन्द]],
      [#sanskrit[अष्टाङ्गयोग]],
      [#sanskrit[तत्त्वमसि]],
      [#sanskrit[नामरूप]],
      [#sanskrit[उपनिषद्]],
      [#sanskrit[नित्य]],
      [#sanskrit[धर्म]],
    )]
  ]

#pagebreak(weak: true)
== Summary Sheet#general_index(display: [Lesson Seven])[Summary sheets][Lesson 07]<summary7>
#indent(depth: 2em)[
  #tables.conjugation-gacchati()
]

=== Verbs
#table(
    columns: (6em, 1fr, 2fr),
    [#romanization[ā] + #root[gam]], romanization[āgacchati], [he comes],
    root([gam]), romanization([gacchati]), [he goes],
    root([cint]), romanization([cintayati]), [he thinks],
    [#root[paś] (#root[dṛś])], romanization([paśyati]), [he sees],
    root([prach]), romanization([pṛcchati]), [he asks],
    root([bhū]), romanization([bhavati]), [he is],
    root([vad]), romanization([vadati]), [he speaks, he says],
    root([vas]), romanization([vasati]), [he lives],
    root([sthā]), romanization([tiṣṭhati]), [he stands],
    root([smṛ]), romanization([smarati]), [he remembers]
  )

#pagebreak(weak: true)
#block(height: 47%)[
  #set table(columns: (6em, auto), row-gutter: 1em)
#columns(2)[
  === Nouns
  #table(
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
  === Indeclinables
  #table(
    romanization([atra]), [here],
    romanization([iti]), [end of quote],
    romanization([kutra]), [where],
    romanization([ca]), [and],
    romanization([tatra]), [there],
    romanization([na]), [not],
    romanization([vā]), [or],
    romanization([vinā]), [without (used like #romanization[saha])],
    romanization([saha]), [with],

  )]
]
#v(1em)
#place[
#tables.declension-narah
]
