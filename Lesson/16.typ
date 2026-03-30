#import "../style.typ": *

#{
  let content = (
    Alphabet: (
      [The #sandhi rules for final #romanization[n]],
    ),
    Grammar: (
      [Nouns in #romanization[an]],
      [The imperfect of #root[as]],
      [The #romanization[dvandva] compound]
    ),
    Vocabulary: (
      [Nouns in #romanization[an]],
      [More adjectives],
    ),
  )

  [#lesson[Sixteen]<Lesson:16>]
chapter_summary(page_break: true, content)
}

== Alphabet: #sandhi~rules for~final~#romanization[n]#general_index(display: [Final #romanization[n]])[sandhi][Final n]<Lesson:16:sandhi_n:examples:start>
+ Now we will learn the #sandhi rules for when the first word ends
  in #romanization[n]. In the majority of cases it remains unchanged. The chart
  below contains eight rules (a - h) in which #romanization[n] changes.
+ For each rule, those letters in the alphabet that are in bold
  represent the first letter of the second word, which causes the
  change. The letters outside the alphabet are the change the #romanization[n]
  undergoes. See the examples on the following pages.

  #align(right)[
  #let ro(t) = romanization(t)
  #let column_width = 1.5em
  #block(width: 125%)[
    #table(
    columns: (2*column_width, 4*column_width, 7*column_width, auto),
    inset: (x,y) => {
      let d = if x == 1 {
        (right: 1.75em)
      } else if x == 2 {
        (left: 1.75em)
      } else {
        (left: 0em)
      }
      if y == 1 {
        d.bottom = 0.25em
      } else if y == 2 {
        d.top = 0.75em
      }

      return d
    },
    row-gutter: 1em,
    column-gutter: 2em,
    align: (left, right, left, center),

    table.hline(y: 2, start: 0, stroke: (thickness: 0.5pt, paint: luma(200))),
    table.vline(start: 1, end: 3, x: 2, stroke: (thickness: 0.5pt, paint: luma(200))),

    table.cell(align: left)[preceding\ #ro[n] becomes],
    table.cell(colspan: 2, [~]),
    table.cell(align: left)[preceding\ #ro[n] becomes],

    table.cell(colspan: 2, [~]),
    table(
      columns: 2 * (column_width,),
      ro[a], ro[ā],
      ro[i], ro[ā],
      ro[u], ro[ū],
      ro[ṛ], ro[ṝ],
      ro[ḷ], [~],
      ro[e], ro[ai],
      ro[o], ro[au],
    ),
    table.cell(align: center+horizon)[#block(width: 4em)[#ro[nn] (e)\ (if~preceded~by a~short~vowel)]],

    table(
        columns: 1,
        [~],
        [(a)~#ro[ṃś]],
        [(b)~#ro[ṃṣ]],
        [(c)~#ro[ṃs]],
        [~],
        [~],
        [(d)~#ro[ñ(ch)]],
        [~]
      ),


    table(
      columns: 3 * (column_width,),
      table.cell(rowspan: 5, [~]),
      [ka], [kha],
      ro[ca], ro[cha],
      ro[ṭa], ro[ṭha],
      ro[ta], ro[tha],
      [pa], [pha],
      table.cell(colspan: 3, [~]),
      ro[śa], [ṣa], [sa],
      table.cell(colspan: 3, [end of line]),
    ),

    table(
      columns: 4 * (column_width,),
      [ga],   [gha],   [ṅa],   [~],
      ro[ja], ro[jha], [ña], [~],
      ro[ḍa], ro[ḍha], [ṇa], [~],
      [da], [dha], [na], [~],
      [ba], [bha], [ma], [~],
      [ya], [ra], ro[la], [va],
      [ha], [~], [~], [~],
    ),
    table(
      columns: (2*column_width,),
      [~],
      [#ro[ñ] (f)],
      [#ro[ṇ] (g)],
      [~],
      [~],
      [#ro[ṃl] (h)],
      [~],
      [~]
    )

  )
]
]

+ Here are examples for each of these eight rules:

  #indent()[
    #set enum(numbering: "(a)", spacing: 4em)
    #set par(spacing: 2.5em)
    + #sandhi-example[तस्मिन्][च][तस्मिंश्च][tasmin][ca][tasmiṃś ca]
      #sandhi-example[नरान्][च][नरांश्च][narān][ca][narāṃś ca]
    + #sandhi-example[नरान्][ट][नरांष्ट][narān][ṭa][narāṃṣ ṭa]
    + #sandhi-example[नरान्][तत्र][नरांस्तत्र][narān][tatra][narāṃs tatra]
    + #sandhi-example[नरान्][शोभन्ते][नराञ्छोभन्ते][narān][śobhante][narāñ chobhante]

      or (rarely)#v(-1em)
      #sandhi-example[नरान्][शोभन्ते][नरांञ्शोभन्ते][narān][śobhante][narāñ śobhante]
    + #sandhi-example[राजन्][अत्र][राजन्नत्र][rājan][atra][rājann atra]

      #sandhi-example[नरान्][अत्र][नरानत्र][narān][atra][narān atra]

    + #sandhi-example[नरान्][जयति][नराञ्जयति][narān][jayati][narāñ jayati]

    + #sandhi-example[नरान्][ड][नराण्ड][narān][ḍa][narāṇ ḍa]

    + #sandhi-example[नरान्][लभते][नरांल्लभते][narān][labhate][narāṃl labhate]<Lesson:16:sandhi_n:examples:end>

  ]

#pagebreak(weak: true)
== Grammar: Nouns~in #romanization[an]#general_index(display: [Masculine #romanization[an]])[Noun declensions][Masculine an]<section:masculine_an>

#[#set enum(indent: -1.7em)
+ Here is the declension for nouns ending in #romanization[an]:

  Stem: #romanization[rājan] (masculine) king; #romanization[ātman] (masculine) Self

  #align(right)[#block(breakable: false, width: 125%)[
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

    #declension_table(
      columns: (auto, auto, auto, auto),
      function: (term) => term,
      row-gutter: (2em, 3em),

    [Nom.],
      sa_ro[राजा][rājā],
      sa_ro[राजानौ][rājānau],
      sa_ro[राजानः][rājānaḥ],
    [Acc.],
      sa_ro[राजानम्][rājānam],
      sa_ro[राजानौ][rājānau],
      different[राज्ञः][आत्मनः][rājñaḥ][ātmanaḥ],
    [Inst.],
      different[राज्ञा][आत्मना][rājñā][ātmanā],
      sa_ro[राजभ्याम्][rājabhyām],
      sa_ro[राजभिः][rājabhiḥ],
    [Dat.],
      different[राज्ञे][आत्मने][rājñe][ātmane],
      sa_ro[राजभ्याम्][rājabhyām],
      sa_ro[राजभ्यः][rājabhyaḥ],
    [Abl.],
      different[राज्ञः][आत्मनः][rājñaḥ][ātmanaḥ],
      sa_ro[राजभ्याम्][rājabhyām],
      sa_ro[राजभ्यः][rājabhyaḥ],
    [Gen.],
      different[राज्ञः][आत्मनः][rājñaḥ][ātmanaḥ],
      different[राज्ञोः][आत्मनोः][rājñoḥ][ātmanoḥ],
      different[राज्ञाम्][आत्मनाम्][rājñām][ātmanām],
    [Loc.],
      different[राज्ञि][आत्मनि][rājñi][ātmani],
      different[राज्ञोः][आत्मनोः][rājñoḥ][ātmanoḥ],
      sa_ro[राजसु][rājasu],
    [Voc.],
      sa_ro[राजन्][rājan],
      sa_ro[राजानौ][rājānau],
      sa_ro[राजानः][rājānaḥ],
  )
]
]

+ Note that the only difference between #romanization[rājan] and #romanization[ātman] is that
  since the #romanization[tmn] combination cannot occur, #romanization[ātman] always keeps the
  #romanization[a] before the #romanization[n]. Sometimes that #romanization[a] may be long. If so, the form is
  considered strong. The neuter is similar to the masculine:

  Stem: #romanization[nāman] (neuter) name#general_index(display: [Neuter #romanization[an]])[Noun declensions][Neuter an]<section:neuter_an>
  #[
    #let ro(term) = romanization(term)
  #let sa(term) = sanskrit(term)
  #let sa_ro(term1, term2) = [#sanskrit[#term1]\ #romanization[#term2]]

  #let optional(a, b, c, d) = table(
      columns: (auto, auto),
      row-gutter: par-leading,
      column-gutter: 0.5em,
      sanskrit(a), sanskrit(b),
      romanization(c), [(#romanization(d))]
      )

    #declension_table(
      columns: (auto, auto, auto, auto),
      function: (term) => term,
      row-gutter: (2em, 2.8em),

    [Nom.],
      sa_ro[नाम][nāma],
      optional[नाम्नी][नामनी][nāmnī][nāmanī],
      sa_ro[नामानि][nāmāni],
    [Acc.],
      sa_ro[नाम][nāma],
      optional[नाम्नी][नामनी][nāmnī][nāmanī],
      sa_ro[नामानि][nāmāni],
    [Inst.],
      sa_ro[नाम्ना][nāmnā],
      sa_ro[नामभ्याम्][nāmabhyām],
      sa_ro[नामभिः][nāmabhiḥ],
    [Dat.],
      sa_ro[नाम्ने][nāmne],
      sa_ro[नामभ्याम्][nāmabhyām],
      sa_ro[नामभ्यः][nāmabhyaḥ],
    [Abl.],
      sa_ro[नाम्नः][nāmnaḥ],
      sa_ro[नामभ्याम्][nāmabhyām],
      sa_ro[नामभ्यः][nāmabhyaḥ],
    [Gen.],
      sa_ro[नाम्नः][nāmnaḥ],
      sa_ro[नाम्नोः][nāmnoḥ],
      sa_ro[नाम्नाम्][nāmnām],
    [Loc.],
      optional[नाम्नि][नामनि][nāmni][nāmani],
      sa_ro[नाम्नोः][nāmnoḥ],
      sa_ro[नामसु][nāmasu],
    [Voc.],
      optional[नामन्][नाम][nāman][nāma],
      optional[नाम्नी][नामनी][nāmnī][nāmanī],
      sa_ro[नामानि][nāmāni],
  )
]

// == The imperfect for #root[as]

+ #margin-heading[#upper[The imperfect for #root[as]]] Here is the imperfect for #root[as] #general_index(display : [#root[as] (imperfect)])[as (imperfect)]

  #[
    #import "../tables.typ"
    #let sa(t) = sanskrit(t)
    #let ro(t) = romanization(t)
    #align(right)[
    #tables.conjugation-table(
      columns: (3.5em, 1fr, 1fr, 1fr),
      row-gutter: (1.5em, 2.5em),
      [3rd],
      [#sa[आसीत्]\ #ro[āsīt]],
      [#sa[आस्ताम्]\ #ro[āstām]],
      [#sa[आसन्]\ #ro[āsan]],

      [2nd],
      [#sa[आसीः]\ #ro[āsīḥ]],
      [#sa[आस्तम्]\ #ro[āstam]],
      [#sa[आस्त]\ #ro[āsta]],

      [1st],
      [#sa[आसम्]\ #ro[āsam]],
      [#sa[आस्व]\ #ro[āsva]],
      [#sa[आस्म]\ #ro[āsma]],
    )
  ]
]

  Remember that these are not the endings, but the entire verb.

+ #margin-heading[#upper[The #grammar[dvandva]["two-by-two", copulative compound; both members are principal. If compound were dissolved, members would be joined by "and"] compound#general_index(display: [#romanization[dvandva] compound])[dvandva compound]]]Now we will begin our study of compounds#general_index[Compounds] (#grammar[samāsa]["put together", compound]). Sanskrit
  has several different types of compounds, which are members
  joined together to create one unit. In #devanāgarī, compounds are
  written without a break. With transliteration, in this text the
  members of a compound are joined by a hyphen, when #sandhi
  permits. For example:

  #indent[
    #sanskrit[एकवचन]#h(1em) #romanization[eka-vacana] (singular number)
  ]

+ Nominal compounds join nouns, adjectives, or pronouns. They are
  usually formed by taking the base form (#romanization[nara], #romanization[phala], etc.) and
  putting them together, using #sandhi rules. Generally only the last
  member is declined, and prior members have loss#general_index[Loss of case ending] (#grammar[luk][loss (of case ending)]) of case
  ending (#romanization[sup]#index(index: "grammar")[sup]).

+ The first type of compound that we will study is the #romanization[dvandva]
  compound. A #romanization[dvandva] (related to the word "dual") is a series of
  equal items that would normally be joined by "and". For example,
  "Sītā and Rāma" could be written as a #romanization[dvandva] compound:

  #indent[
    #sanskrit[सीतारामौ]\
    #romanization[sītā-rāmau]
  ]

+ All compounds may undergo an analysis #general_index[Analysis of a compound] (#grammar[vigraha]["held apart", analysis of a compound]), which is how
  the words would appear if the compound were dissolved. For
  example:

  #indent[
    #compound-vigraha[सीतारामौ][sītā-rāmau][सीता रामश्च][sītā-rāmaś ca]["Sīta-Rāma"][Sītā and Rāma]
  ]

+ This #romanization[dvandva] (above) is called an #grammar[itaretara-dvandva][compound whose members are viewed separately], because it
  names its members in a distributive sense. (See #13.#todo[missing point ref]) In it, the last
  member is in the dual because two persons are named.

+ If more than two persons are named, the last member is in the
  plural. For example:
  #indent[
    #compound-vigraha[आचार्यशिष्याः][ācārya-śiṣyāḥ][अचार्यः शिष्याश्च][ācārya śiṣyāś ca]["teacher-students"][#block(width: 115%)[the teacher and students]]
   ]
+ A #romanization[dvandva] with three members is always plural. For example:
  #indent[
    #compound-vigraha[अश्वगजमृगाः][aśva-gaja-mṛgāḥ][अश्वो गजो मृगाश्च][aśvo gajo mṛgāś ca][#block(width: 110%)["horse-elephant-deer"]][#block(width: 125%)[horse, elephant, and deer]]
   ]

+ The gender is determined by the last item named. For example:
  #indent[
    #compound-vigraha[रामसीते][rāma-sīte][रामः सीता च][rāmaḥ sītā ca]["Rāma-Sītā"][Rāma and Sītā]
   ]
+ The first member is in its stem form even if it refers to something
  plural. Because of this, there is sometimes ambiguity concerning
  whether a member is singular, dual, or plural. For example:

    #indent[
    #table(
      columns: (8em, auto,),
      column-gutter: 1.5em,
      [
        #sanskrit[आचार्यशिष्याः]\
        "teacher-students"
      ],
      [
        _could be analyzed as_\
        teacher and students _or_\
        teachers and student _or_\
        teachers and students
      ],
    )
   ]
  You must judge the correct translation by the context, and in most
  contexts, the first example would be what is meant: "the teacher
  and the students."

+ There is an additional kind of #romanization[dvandva], called #romanization[samāhāra], in
  which the ending is always singular and neuter. The members are
  referred to collectively as a single unit. The meaning of the
  individual members is not as important as the collective sense of the
  whole compound. Often pairs of opposites are put in #general_index(display: [#romanization[samāhāra-dvandva] compound])[samahara-dvandva compound] #grammar[samāhāra-dvandva][compound whose members are viewed as a whole. Last member takes neuter, singular ending] form. For example:

    #indent[
    #table(
      columns: (8em, auto, auto, ),
      column-gutter: 1.5em,
      [
        #sanskrit[सुखदुःखम्]\
        #romanization[sukha-duḥkham]\
      ],
      [#romanization[vigraha:]],
      [
        #sanskrit[सुखं दुःखं च]\
        #box(width: 105%)[#romanization[sukhaṃ duḥkhaṃ ca]]
      ],
      block(width: 115%)["happiness-suffering"],
      [analysis:],
      block(width: 105%)[happiness and suffering]
    )
   ]

+ Words ending in #romanization[-an] usually act in compounds like words that end
  in #romanization[-a]. For example, #romanization[ātman] is often reduced to #romanization[ātma], when it is
  prior to the last member of the compound. Some words, such as
  #romanization[rājan], take the #romanization[-a] ending as a prior member and also as the last
  member of the compound. For example:
    #indent[
    #table(
      columns: (8em, auto,),
      column-gutter: 1.5em,
      row-gutter: 3em,
      align: bottom,
      [
        #sanskrit[राजरामौ]\
        #romanization[rāja-rāmau]
      ],
      [The king and Rāma],
      [
        #sanskrit[रामराजौ]\
        #romanization[rāma-rājau]
      ],
      [Rāma and the king]
    )
    ]
+ #margin-heading([#upper[The negative compound]#general_index[Negative compound]])<section:negative_compound>
  Another type of compound is negating, or the negative compound
  (#grammar(term-display: romanization[nañ-samāsa])[nañ][negative compound], or negative #romanization[samāsa]). A noun can be negated by placing #romanization[a]
  before it. For example:
    #indent[
    #table(
      columns: (8em, auto,),
      column-gutter: 1.5em,
      [
        #sanskrit[विद्या]\
        #romanization[vidyā]\
        knowledge
      ],
      [
        #sanskrit[अविद्या] \
        #romanization[avidyā]\
        ignorance
      ]
    )
    ]
+ A gerund is also negated with #romanization[a]. If the gerund begins with #romanization[a], and
  there is no prefix, the ending is #romanization[-tva]. For example:
    #indent[
    #table(
      columns: (8em, auto,),
      column-gutter: 1.5em,
      align: bottom,
      [
        #sanskrit[अगत्वा]\
        #romanization[agatvā]
      ],
      [
        not having gone
      ]
    )
  ]

+ If the word begins with a vowel, then it is negated with #romanization[an]. For
  example:
      #indent[
    #table(
      columns: (8em, auto,),
      column-gutter: 1.5em,
      align: bottom,
      [
        #sanskrit[अनुदित्वा]\
        #romanization[anuditvā]
      ],
      [
        not having spoken
      ]
    )
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
    [आत्मन्], neuter[ātman], block(width: 110%)[Self (usually has capital "S")\ (given in stem form)],
    [कर्मन्], neuter[karman], [action],
    [कृष्ण], adjective[kṛṣṇa][ā], [black],
    [कृष्णः], masculine(label: [mas. noun])[kṛṣṇaḥ], [Kṛṣṇa],
    [नामन्], neuter[nāman], [name],
    [प्रिय], adjective[priya][ā], [dear, beloved],
    [रमणीय], adjective[ramaṇīya][ā], [pleasant],
    [राजन्], masculine[rājan], [king],
    [शुक्ल], adjective[śukla][ā], [white],
    [शोभन], adjective(alt: [ī])[śobhana][ā], [shining, bright, beautiful]
  )

  // #table(
  //   columns: (1fr, 1fr),
  //   row-gutter: 2.5em,
  //   align: (left, left+bottom),
  //   table.header([Sanskrit], [English]),
  //   [#sa[आत्मन्]\ #neuter[ātman]], [~\ Self (usually has capital "S")\ (given in stem form)],
  //   [#sa[करमन्]\ #neuter[karaman]], [action],
  //   [#sa[कृष्ण]\ #adjective[kṛṣṇa][ā]], [black],
  //   [#sa[कृष्ण]\ #masculine(label: [mas. noun])[kṛṣṇa]], [Kṛṣṇa],
  //   [#sa[नामन्]\ #neuter[nāman]], [name],
  //   [#sa[प्रिय]\ #adjective[priya][ā]], [dear, beloved],
  //   [#sa[रामणीय]\ #adjective[rāmaṇīya][ā]], [pleasant],
  //   [#sa[राजन्]\ #masculine[rājan]], [king],
  //   [#sa[शुक्ल]\ #adjective[śukla][ā]], [white],
  //   [#sa[शोभन]\ #adjective[śobhana][ā]#sidenote[or #romanization[ī]]], [shining, bright, beautiful],



  // )
]

#pagebreak(weak: true)
== Exercises
+ Memorize the #sandhi rules for final #romanization[n].
+ Memorize the masculine and neuter for the #romanization[an] declension.
+ Memorize the imperfect of #root[as].
+ Review the formation of #romanization[dvandva] compounds.
+ Translate the following sentences into English:
  #set enum(spacing: 4em)
  #set par(leading: 2em, spacing: 2em);

  #devanagari_enum[
    + #sanskrit[कृष्णोऽश्वमृगगजानगोपायत्]
    + #sanskrit[प्रियो राजा रामो ग्रामस्य बालानस्मयत]
    + #sanskrit[कन्या प्रजां सूर्यात्तस्याश्छाययागोपायत्]
    + #sanskrit[य आत्मानं बोधति स कर्माणि रमते]
    + #sanskrit[प्रजा कृष्णस्याश्वस्य कर्माहसत्]
    + #sanskrit[यदा सा तस्य नामावदत्तदा बाल उदतिष्ठत्]
    + #sanskrit[प्रियं तस्य पुत्रमुपगत्य वीरोऽस्मयत]
    + #sanskrit[बालबाले शोभनस्य राज्ञः प्रजे स्तः]
    + #sanskrit[शुक्ला अश्वा वने आसन्]#errata[#sanskrit[वन] → #sanskrit[वने]\ added missing #romanization[e] (for Locative)]
    + #sanskrit[आसीद्राजा रामो नाम ग्रामे]
  ]

+ Translate the following sentences into Sanskrit:

  #set enum(spacing: 3em)
  + The black horse drinks the water from the river.
  + He who knows the Self enjoys action and inaction.
  + The king's name was Kṛṣṇa.
  + The king enjoys the pleasant actions of the son.
  + The beloved hero understood perfection and imperfection
    (success and failure).
  + The boy comes from the elephant and returns to the house.
  + That which neither comes nor goes is the Self.
  + When the king approached, the boys and girls stood up.
  + The man who was king came from the black forest.
  + Knowledge of the Self is knowledge also of the sun and the
    moon.

