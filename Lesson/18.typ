#import "../style.typ": *

#{
  let content = (
    Alphabet: (
      [All remaining #sandhi rules],
    ),
    Grammar: (
      [Nouns in #romanization[u]],
      [The #romanization[karmadhāraya] and #romanization[tatpuruṣa] compound],
      [Summary of compounds],
    ),
    Vocabulary: (
      [Nouns in #romanization[u], more adjectives],
    ),
  )

  [#lesson[Eighteen]<Lesson:18>]
chapter_summary(page_break: true, content)
}

== Alphabet: All~remaining #sandhi rules#general_index[sandhi][Additional rules]

+ We will now study the remaining #sandhi rules, which include
  final #romanization[r], #romanization[p], #romanization[ṭ], #romanization[k], #romanization[ṅ], #romanization[ṇ], and initial #romanization[ch].

+ Here are the rules for final #romanization[r]:
  #set enum(numbering: "(a)")
  + Before a word beginning with a voiced letter, the #romanization[r] remains the
    same. For example:
    #sandhi-example[पुनर्][गच्छति][पुनर्गच्छति][punar][gacchati][punar gacchati]
    #sandhi-example[पुनर्][आगच्छति][पुनरागच्छति][punar][āgacchati][punar āgacchati]
  + Before an unvoiced letter or the end of a line, #romanization[r] follows the
    same rules as final #romanization[s]. For example:
    #sandhi-example[पुनर्][पुनर्][पुनः पुनः][punar][punar][punaḥ punaḥ]
    #sandhi-example[पुनर्][तत्र][पुनस्तत्र][punar][tatra][punas tatra]
  + Final #romanization[r], whether original or derived from #romanization[s], cannot stand
    before another #romanization[r]. The final #romanization[r] is dropped and the vowel before it
    made long if it is short. For example:
    #sandhi-example[पुनर्][राम][पुना राम][punar][rāma][punā rāma]#v(1fr)

+ Here are the rules for final #romanization[p], #romanization[ṭ], and #romanization[k]:
  #set enum(numbering: "(a)")
  + Before a voiced sound these letters become voiced, and before
    an unvoiced sound they remain the same. For example:
    #sandhi-example[ऋक्][वेद][ऋग्वेद][ṛk][veda][ṛg veda]
    #sandhi-example[ऋक्][संहिता][ऋक्संहिता][ṛk][saṃhitā][ṛk saṃhitā]
  + Before a nasal these letters become the nasal of their row
    (#romanization[varga]). For example:
    #sandhi-example[सुप्][नाम][सुम्नाम][sup][nāma][sum nāma]
  + Before #romanization[h] these letters become voiced and the #romanization[h] becomes their
    voiced aspirated counterpart. For example:
    #sandhi-example[वाक्][हसति][वाग्घसति][vāk][hasati][vāg ghasati]

+ Here is the rule for final #romanization[ṅ] and #romanization[ṇ]:
  #set enum(numbering: "(a)")
  + Like final #romanization[n], final #romanization[ṅ] becomes #romanization[ṅṅ] before vowels if the #romanization[ṅ] is
    preceded by a short vowel. Also, final #romanization[ṇ] becomes #romanization[ṇṇ] if the #romanization[ṇ] is
    preceded by a short vowel.

+ Here is the rule for initial #romanization[ch]:<Lesson:18:sandhi_ch>
  #set enum(numbering: "(a)")
  + Initial #romanization[ch] becomes #romanization[cch] if the first word ends in a short vowel.
    The #romanization[ch] also becomes #romanization[cch] after #romanization[ā] and #romanization[mā]. For example:
    #sandhi-example[कुत्र][छाया][कुत्र च्छाया][kutra][chāyā][kutra cchāyā]

+ Ambiguities can sometimes be created by #sandhi. Two different
  sets of words could appear the same after #sandhi has been applied.
  For example:

  #sandhi-example[रामः][एव][राम एव][rāmaḥ][eva][rāma eva]
  #sandhi-example[रामे][एव][राम एव][rāme][eva][rāma eva]

  #sandhi-example[बालाः][न][बाला न][bālāḥ][na][bālā na]
  #sandhi-example[बाला][न][बाला न][bālā][na][bālā na]


  You can usually judge from the context of the sentence which words
  are correct.

#pagebreak(weak: true)
== Grammar: Nouns~in~#romanization[u]#general_index(display: [Masculine #romanization[u], feminine #romanization[u]])[Noun declensions][Masculine u, feminine u]<section:masculine_feminine_u>
#[#set enum(indent: -1.7em)
+ Here is the declension for final #romanization[u]:

  #block(width: 105%, breakable: false)[
  Stem: #romanization[hetu] (masculine) cause; #romanization[dhenu] (feminine) cow

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
      sa_ro[हेतुः][hetuḥ],
      sa_ro[हेतू][hetū],
      sa_ro[हेतवः][hetavaḥ],
    [Acc.],
      sa_ro[हेतुम्][hetum],
      sa_ro[हेतू][hetū],
      different[हेतून्][धेनूः][hetūn][dhenūḥ],
    [Inst.],
      different[हेतुन][धेन्वा][hetuna][dhenvā],
      sa_ro[हेतुभ्याम्][hetubhyām],
      sa_ro[हेतुभिः][hetubhiḥ],
    [Dat.],
      optional[हेतवे][धेन्वै][hetave][dhenvai],
      sa_ro[हेतुभ्याम्][hetubhyām],
      sa_ro[हेतुभ्यः][hetubhyaḥ],
    [Abl.],
      optional[हेतोः][धेन्वाः][hetoḥ][dhenvāḥ],
      sa_ro[हेतुभ्याम्][hetubhyām],
      sa_ro[हेतुभ्यः][hetubhyaḥ],
    [Gen.],
      optional[हेतोः][धेन्वाः][hetoḥ][dhenvāḥ],
      sa_ro[हेतोः][hetoḥ],
      sa_ro[हेतूनाम्][hetūnām],
    [Loc.],
      optional[हेतौ][धेन्वाम्][hetau][dhenvām],
      sa_ro[हेतोः][hetoḥ],
      sa_ro[हेतुषु][hetuṣu],
    [Voc.],
      sa_ro[हेतो][heto],
      sa_ro[हेतू][hetū],
      sa_ro[हेतवः][hetavaḥ],

  )

  The singular dative, ablative, genitive and locative have an optional
  feminine form. For example, the feminine dative singular is #romanization[dhenave]
  or #romanization[dhenavai]. This entire declension is the same as the declension
  ending in #romanization[i] (#ref(<section:masculine_feminine_i>, form: "page")). The only differences are due to #sandhi.
]

+ #margin-heading(upper[Compounds])
  Now we will study another kind of compound: the #general_index(display: [#romanization[tatpuruṣa] compound])[tatpurusa compound]#grammar[tatpuruṣa]["his man", general class of compounds whose second member is principal (The term #romanization[tatpuruṣa] is often used for #romanization[vyadhikaraṇa-tatpuruṣa]. See below.)]
  compound. Unlike the #romanization[dvandva], whose members are considered
  equal, in the #romanization[tatpuruṣa] the last member is usually principal
  (#grammar[pradhāna][the principal member of a compound]) and the prior member is subordinate (#grammar[upasarjana][the subordinate member of a compound]).
  The #romanization[tatpuruṣa] is sometimes called a "determinative compound",
  because the subordinate member qualifies or determines the sense
  of the principal member, which could stand alone.

+ #margin-heading([#upper[#romanization[karmadhāraya]]#general_index(display: romanization[karmadhāraya])[karmadhāraya]])
  One type of tatpuruṣa is the #grammar(term-display: romanization[karmadhāraya: tatpuruṣa])[karmadhāraya][compound whose members refer to the same object and would be in the same case if compound were dissolved]. In a #romanization[karmadhāraya]
  compound, both members refer to the same object, and if separated,
  would be in the same case (#grammar[samānādhikaraṇa][having the same object and formed with the same case]).

+ The simplest kind of #romanization[karmadhāraya] is the adjective and noun:

  #indent[
    #compound-vigraha[शुक्लमाला][śukla-mālā][शुक्ला माला][śuklā mālā]["white-garland"][the white garland]
    #compound-vigraha[प्रियबालः][priya-bālaḥ][प्रियो बालः][priyo bālāḥ]["the dear-boy"][the dear boy]
  ]
    Note that even if the second member of the compound is a feminine
    noun (#romanization[mālā]), the adjective often takes the form of a masculine
    stem (#romanization[a]). (Feminine nouns keep their gender in these compounds.)

+ Another type of #romanization[karmadhāraya] is the noun and noun:
  #indent[
    #block(height:3em)[
    #compound-vigraha[राजर्षिः][rāja-rṣiḥ][राज र्षिः][rāja rṣiḥ]["king-seer"][the king seer]
    ]
  ]

+ #margin-heading(upper[#romanization[tatpuruṣa]])
  In other #romanization[tatpuruṣa] compounds (here usually referred to as
  #romanization[tatpuruṣa]), the members refer to different objects and would be in
  different cases (#romanization[vyadhikaraṇa]) if the compound were dissolved
  and the last member is put in the nominative. The compound is
  further named after the case of the first member, which would be in
  cases two through seven if the compound were analyzed. For
  example, if the first member is genitive, the compound is called a
  genitive #romanization[tatpuruṣa]. Here are two genitive #romanization[tatpuruṣa] compounds:

  #indent[
    #compound-vigraha[राजपुरुषः][rāja-puruṣaḥ][राज्ञः पुरुषः][rājñaḥ puruṣaḥ]["king-man"][the king's man]

    #compound-vigraha[नरपुस्तकम्][nara-pustakam][नरस्य पुस्तकम्][narasya pustakam]["man-book"][the man's book]
  ]

+ A compound, like a simple word, may become a member in another
  compound. In these cases, in India, the analysis usually begins with
  the smaller pieces. For example:
  #indent[
    #sanskrit[रामपुत्रपुस्तकम्]\
    #romanization[rāma-putra-pustakam]\
    "Rāma-son-book"

    #set enum(numbering: "(1)", indent: -1.5em)
    + #sanskrit[रामस्य पुत्रः]\
      #romanization[rāmasya putraḥ]\
      the son of Rāma
    + #sanskrit[रामस्य पुत्रस्य पुस्तकम्]\
      #romanization[rāmasya putrasya pustakam]\
      the book of the son of Rāma
  ]

  In the West, analysis of a compound begins at the right and goes to
  the left. In India, analysis begins with the smaller units. Rather than
  "taking apart" a compound, the analysis starts with smaller units and
  shows how the compound is "built up."

+ #margin-heading([#upper[Summary of~compounds]#general_index[Compounds][summary]])
  Compounds may be classified into four groups. The following is a
  generalized description, for background information, to which
  exceptions may be added later:

  #set enum(numbering: "(1)")
  + #romanization[dvandva]#general_index(display: [#romanization[dvandva]])[dvandva compound]#index(index: "grammar")[dvandva]. In this compound, each member is considered principal. There are two types:

    #set enum(spacing: 1.5em, indent: 0em, body-indent: 0.5em, numbering: "(a)")
    + #romanization[itaretara]#index(index: "grammar")[itaretara-dvandva]. The members are viewed separately. For
      example, #romanization[rāmasīte], "Rāma and Sītā".
    + #romanization[samāhāra]#index(index: "grammar")[samāhāra-dvandva]#general_index[samahara-dvandva compound]. The members are veiwed as a whole. For example, #romanization[sukha-duḥkham], "happiness and suffering".

  + #romanization[tatpuruṣa]#general_index[tatpurusa compound]#index(index:"grammar")[tatpuruṣa]. In this compound, the first member qualifies and is subordinate to the second member. There are several types:

    #set enum(spacing: 1.5em, indent: 0em, body-indent: 0.5em, numbering: "(a)")
    #block(width: 100%)[
    + #romanization[tatpuruṣa] (#grammar[vyadhikaraṇa-tatpuruṣa][compound whose members refer to different objects and would be in different cases if dissolved]). This name is
      normally used for the compound that refers different
      objects. The first member would be in a different case
      than the second if the compound were dissolved. This
      compound has six types, corresponding to cases two through
      seven. For example, #romanization[rāja-puruṣaḥ], "the king's man".
    + #general_index(display: romanization[karmadhāraya])[karmadhāraya]#grammar(term-display: romanization[karmadhāraya: tatpuruṣa])[karmadhāraya][compound whose members refer to the same object and would be in the same case if compound were dissolved] (#grammar[samānādhikaraṇa-tatpuruṣa][a #romanization[karmadhāraya]]). Both
      members refer to the same object and therefore would be in
      the same case if the compound were dissolved. For
      example, #romanization[śukla-mālā], "the white garland". If the first
      member is a number, it is called #grammar[dvigu]["worth two cows", #romanization[karmadhāraya] compound that begins with a number]. For example, #romanization[dvi-vacana], "dual number".
    + #grammar(term-display: [#romanization[upapada-samāsa]])[upapada][compound whose last member is an adjusted verbal root]. The second member is an adjusted verbal root.
      For example, #romanization[brahma-vit], "the knower of #romanization[brahman]".

    + #romanization[nañ]#general_index[Negative compound]#index(index: "grammar")[nañ]. This is a #romanization[tatpuruṣa] compound in which #romanization[na] is reduced
      to #romanization[a] or #romanization[an], used to negate. For example, #romanization[avidyā], "ignorance". (See #ref(<section:negative_compound>, form: "page").)

    + #grammar[prādi]["#romanization[pra], etc.", compound beginning with an #romanization[upasarga] prefix]. The first member is one of the twenty #romanization[upasargas]
      given by Pāṇini, which he listed as beginning with #romanization[pra]. (See #ref(<section:prefixes_upasargas>, form: "page").)
      The entire compound is used as a nominal.
      For example #romanization[anusvāra], "after-sound".

    + #grammar[gati][coumpound beginning with a #romanization[gati] prefix]. The first member is another type of prefix, called #romanization[gati],
      and the entire compound is used as a nominal. For
      example, #romanization[antaryāmin], "inner ruler".
    ]
  + #grammar[bahuvrīhi]["having much rice", compound whose principal is outside itself (he whose rice is much)]. In this compound, the actual principal is outside
    of the compound. The compound serves as an adjective,
    describing something else. The members may be in the same or
    different cases. For example, #romanization[mahā-rathaḥ], "having a great
    chariot", means one whose chariot is great, or a "great hero". To
    use an example in English, "redcoat", meaning "having a red
    coat", refers to a person whose coat is red, or a British soldier.

  + #grammar[avyayībhāva][adverbial compound composed of a indeclinable and a nominal]. This compound usually begins with an
    indeclinable. The entire compound is used as an adverb. For
    example, #romanization[yathānāma], "by name".

+ These four groups of compounds may be understood from the perspective of which member is principal:
  #table(
    columns: (3em, auto, auto),
    align: (right, left, left),
    column-gutter: (0.25em, 1em),
    row-gutter: 1em,
    [(1)], romanization[dvandva], [Both members are principal],
    [(2)], romanization[tatpuruṣa], [Second member is principal],
    [(3)], romanization[bahuvrīhi], [Neither member is principal],
    [(4)], romanization[avyayībhāva], [First member is principal],
  )

+ If pronouns are used as prior members of a compound, they are put
  in base forms, which are used regardless of the case, gender, or
  number of the pronoun:
  #indent[
    #table(
      columns: (7em, 1fr),
      row-gutter: 1em,
      romanization[mad], [I],
      romanization[asmad], [we],
      romanization[tvad], [you],
      romanization[yuṣmad], [you (plural)],
      romanization[tad], [he, she, it, they],
      )
  ]

  For example:
  #indent[
    #sanskrit[मद्बालः]\
    #romanization[mad-bālaḥ]\
    my boy (genitive #romanization[tatpuruṣa])

    #sanskrit[तत्पुरुषः]\
    #romanization[tat-puruṣaḥ]\
    his man (genitive #romanization[tatpuruṣa])
  ]
]

#pagebreak(weak: true)
== Vocabulary

#[
  #let sa(t) = sanskrit(t)
  #let ro(t) = romanization(t)

  #import "../vocab.typ"
  #import vocab: adjective, feminine, indeclinable, masculine, neuter, pronoun, verb
  #vocab.list(
    columns: 3,
    [अलप], adjective[alpa][ā], [little],
    [गुरु], adjective[guru][vī], [heavy],
    [गुरुः], masculine[guru], [teacher],
    [धेनुः], feminine[dhenuḥ], [cow],
    [पुर्ण], adjective[pūrṇa][ā], [full],
    [बहु], adjective(alt: [u])[bahu][vī], [many],
    [शत्रुः], masculine[śatruḥ], [enemy],
    [शीघ्र], adjective[śīghra][ā], [swift],
    [हेतुः], masculine[hetuḥ], [cause],
  )
]

#pagebreak(weak: true)
== Exercises
+ Memorize the last of the #sandhi rules.
+ Memorize the declension for #romanization[u].
+ Review how to form #romanization[karmadhāraya] and #romanization[tatpuruṣa] compounds
  and memorize the short forms of the pronouns used in those compounds.
+ Translate the following sentences into English:
  #set enum(spacing: 5em)
  #set par(leading: 3em, spacing: 3em);

  #devanagari_enum([
    + #sanskrit[शुक्लधेनुर्वाप्यां तिष्ठति जलं व पिबति]
    + #sanskrit[ऋषिः शत्रुमजयत्]
    + #sanskrit[यदि वनं फलस्य पुर्णमस्ति तदा धेनवस्तत्र गच्छन्ति]
    + #sanskrit[मंमातालपं पुस्तकं पठति तद्रमते च]#errata[#sanskrit[मन्माता] → #sanskrit[मंमाता]\
    the solution refers to "my mother"]
    + #sanskrit[बहुसुखस्य दाता गुरुः]
    + #sanskrit[अल्पबालः शुक्लसूर्य इव शोभते]
    + #sanskrit[यदात्मानमवगव्छसि तदा त्वं बहुसुखस्य हेतुरसि]
    + #sanskrit[कदा रमणीयराजा शत्रोरस्माकं कुलं गोप्सयति]
    + #sanskrit[शीघ्रा बाला फलेन सह वनादागच्छति]
    + #sanskrit[गुरोः सुखस्य हेतुस्तस्य शिष्याणां सिद्धयो भवति]
    + #sanskrit[विद्यायाः शत्रुराविद्या भवतीति बालोऽवदत्]
  ])
+ Translate the following sentences into Sanskrit:
  #set enum(spacing: 4em)

  + The beautiful little cow drank water from the pond.
  + The swift black horse stands in the little village.
  + Having conquered the enemy, the army will enjoy peace and
    happiness.
  + Ignorance is the enemy of truth.
  + Having known the Self, he understood the cause of action and
    inaction.
  + The child was born in a little house in the beautiful forest.
  + The student will bring the beautiful garland for his teacher.
  + The forest is full of fruit and the pond is full of water.
  + Seeing his family, the father went to the forest for water.
  + When will the beautiful cow come here from the swift river?
  + Having seen the cow, the pleasant#sidenote[In the original: "beautiful"; adjusted here to fit the answers.] boy enjoys the water in the
    pond.
