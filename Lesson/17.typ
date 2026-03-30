#import "../style.typ": *

#{
  let content = (
    Alphabet: (
      [The #sandhi rules for final #romanization[t]],
    ),
    Grammar: (
      [Nouns ending in #romanization[ṛ] and the future tense],
    ),
    Vocabulary: (
      [Nouns in #romanization[ṛ]],
    ),
  )

  [#lesson[Seventeen]<Lesson:17>]
chapter_summary(page_break: true, content)
}

== Alphabet: #sandhi~rules for~final~#romanization[t]#general_index(display: [Final #romanization[t]])[sandhi][Final t]<Lesson:17:sandhi_t:examples:start>

+ When the first word ends in #romanization[t], in the majority of cases it remains
  the same if the following letter is unvoiced, and it changes to #romanization[d] if
  the following letter is voiced. Those letters which are in bold are
  exceptions. See the examples that follow.

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
    align: (left, right, left, right),

    table.hline(y: 2, start: 0, stroke: (thickness: 0.5pt, paint: luma(200))),
    table.vline(start: 1, end: 3, x: 2, stroke: (thickness: 0.5pt, paint: luma(200))),

    table.cell(align: left)[#ro[t]~remains~#ro[t] except:],
    table.cell(colspan: 2, [~]),
    table.cell(align: left)[#ro[t] changes\ to #ro[d]~except:],

    table.cell(colspan: 2, [~]),
    table(
      columns: 2 * (column_width,),
      [a], [ā],
      [i], [ā],
      [u], [ū],
      [ṛ], [ṝ],
      [ḷ], [~],
      [e], [ai],
      [o], [au],
    ),
    table.cell(align: bottom+right)[#block(width: 4em)[(before~all~nasals)\ #ro[n] (d)]],

    table(
        columns: 1,
        [~],
        [(a)~#ro[c]],
        [(b)~#ro[ṭ]],
        [~],
        [~],
        [~],
        [(c)~#ro[c(ch)]],
        [~]
      ),


    table(
      columns: 3 * (column_width,),
      table.cell(rowspan: 5, [~]),
      [ka], [kha],
      ro[ca], ro[cha],
      ro[ṭa], ro[ṭha],
      [ta], [tha],
      [pa], [pha],
      table.cell(colspan: 3, [~]),
      ro[śa], [ṣa], [sa],
      table.cell(colspan: 3, align: right, [end of line]),
    ),

    table(
      columns: 4 * (column_width,),
      [ga],     [gha], ro[ṅa], [~],
      ro[ja], ro[jha], ro[ña], [~],
      ro[ḍa], ro[ḍha], ro[ṇa], [~],
      [da],     [dha], ro[na], [~],
      [ba],     [bha], ro[ma], [~],
      [ya],      [ra], ro[la], [va],
      ro[ha],     [~],    [~], [~],
    ),
    table(
      columns: (2*column_width,),
      align: right,
      [~],
      [#ro[j] (e)],
      [#ro[ḍ] (f)],
      [~],
      [~],
      [#ro[l] (g)],
      [#ro[d(dh)]~(h)],
      [~]
    )

  )
]
]
+ Here are examples for each of these eight rules:

  #[
    #set enum(numbering: "(a)")
    + #sandhi-example[रामात्][च][रामाच्च][rāmāt][ca][rāmāc ca]

    + #sandhi-example[रामात्][ट][रामाट्ट][rāmāt][ṭa][rāmāṭ ṭa]

    + #sandhi-example[रामात्][शास्त्रम्][रामाच्छास्त्रम्][rāmāt][śāstram][rāmāc chāstram]

    + #sandhi-example[रामात्][मन्यते][रामान्मन्यते][rāmāt][manyate][rāmān manyate]

    + #sandhi-example[रामात्][जलम्][रामाज्जलम][rāmāt][jalam][rāmāj jalam]

    + #sandhi-example[रामात्][ड][रामाड्ड][rāmāt][ḍa][rāmāḍ ḍa]

    + #sandhi-example[रामात्][लभते][रामाल्लभते][rāmāt][labhate][rāmāl labhate]

    + #sandhi-example[रामात्][हस्तः][रामाद्धस्तः][rāmāt][hastaḥ][rāmād dhastaḥ]<Lesson:17:sandhi_t:examples:end>
  ]

#pagebreak(weak: true)
== Grammar: Nouns~in~#romanization[ṛ]#general_index(display: [Masculine #romanization[ṛ], feminine #romanization[ṛ]])[Noun declensions][Masculine ṛ, feminine ṛ]<section:masculine_feminine_ṛ>

+ Here is the declension for nouns ending in #romanization[ṛ]. These nouns are
  usually an agent of action or a relation, such as father or mother.

  #[
    Stem: #romanization[dātṛ] (masculine) giver; #romanization[svasṛ] (feminine) sister

    #align(right)[#block(breakable: false, width: 100%)[
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
      // columns: (auto, auto, auto, auto),
      function: (term) => term,
      row-gutter: (2em, 3em),

    [Nom.],
      sa_ro[दाता][dātā],
      sa_ro[दातारौ][dātārau],
      sa_ro[दातारः][dātāraḥ],
    [Acc.],
      sa_ro[दातारम][dātāram],
      sa_ro[दातारौ][dātārau],
      different[दातॄन्][स्वसॄः][dātṝn][svasṝḥ],
    [Inst.],
      sa_ro[दात्रा][dātrā],
      sa_ro[दातृभ्याम्][dātṛbhyām],
      sa_ro[दातृभिः][dātṛbhiḥ],
    [Dat.],
      sa_ro[दात्रे][dātre],
      sa_ro[दातृभ्याम्][dātṛbhyām],
      sa_ro[दातृभ्यः][dātṛbhyaḥ],
    [Abl.],
      sa_ro[दातुः][dātuḥ],
      sa_ro[दातृभ्याम्][dātṛbhyām],
      sa_ro[दातृभ्यः][dātṛbhyaḥ],
    [Gen.],
      sa_ro[दातुः][dātuḥ],
      sa_ro[दात्रोः][dātroḥ],
      sa_ro[दातॄनाम्][dātṝṇām],
    [Loc.],
      sa_ro[दातरि][dātari],
      sa_ro[दात्रोः][datroḥ],
      sa_ro[दातृषु][dātṛṣu],
    [Voc.],
      sa_ro[दातर्][dātar],
      sa_ro[दातारौ][dātārau],
      sa_ro[दातारः][dātāraḥ],
  )
]
]
  ]

+ Father, mother, and brother have a weaker form (looking at the
  second syllable) in the nominative and vocative (dual and plural),
  and the accusative (singular and dual):

  #[
    Stem: #romanization[pitā] (mas.) father; #romanization[mātṛ] (fem.) mother;
    #romanization[bhratṛ] (mas.) brother

    #align(right)[#block(breakable: false, width: 100%)[
  #let ro(term) = romanization(term)
  #let sa(term) = sanskrit(term)
  #let sa_ro(term1, term2) = [#sanskrit[#term1]\ #romanization[#term2]]

  #let different(a, b, c, d, e, f) = table(
      columns: (auto, auto, auto),
      row-gutter: par-leading,
      column-gutter: 0.5em,
      sanskrit(a), sanskrit(b), sanskrit(c),
      romanization(d), romanization(e), romanization(f)
      )

    #declension_table(
      columns: (3em, 1.5fr, 1.5fr, 3fr),
      function: (term) => term,
      row-gutter: (2em, 3em),

    [Nom.],
      sa_ro[पिता][pitā],
      sa_ro[पितरौ][pitarau],
      sa_ro[पितरः][pitaraḥ],
    [Acc.],
      sa_ro[पितरम्][pitaram],
      sa_ro[पितरौ][pitarau],
      different[पितॄन्][भ्रातॄन्][मातॄः][pitṝn][bhrātṝn][mātṝḥ],
    [Voc.],
      sa_ro[पितर्][pitar],
      sa_ro[पितरौ][pitarau],
      sa_ro[पितरः][pitaraḥ],

    )
    ]
    ]
  ]

+ In a few but frequently used #romanization[dvandva] compounds of pairs, such as
  "mother and father", the first word usually ends in #romanization[ā], the nominative
  singular. For example:
  #indent[
    #table(
      columns: (7em, auto),
      sanskrit[मातापितरौ], [],
      romanization[mātā-pitarau], [mother and father],
    )
  ]

+ #margin-heading[#upper[The future tense]]
  Now we will study the future tense. Sometimes the present
  indicative may indicate the immediate future. For example:
  #indent[
    #table(
      columns: (7em, auto),
      sanskrit[गच्छामि], [],
      romanization[gacchāmi], [I will go],
    )
  ]
+ More often, the simple future is used. The future tense (#grammar[lakāra][lṛṭ][simple future]) is used
  for any future action. It is formed by adding #romanization[sya] or #romanization[iṣya] to the
  strengthened root. (Remember that #romanization[s] becomes #romanization[ṣ] when immediately
  preceded by any vowel except #romanization[a] or #romanization[ā]. See internal sandhi, #ref(<sandhi:s_to_ṣ>, form: "page"))
+ Most roots are strengthened by adding #romanization[guṇa] changes to the vowel.
  (See #ref(<guṇa_vṛddhi>, form: "page").) The standard active and middle endings are then
  added.

+ Here is the third person singular future for some of the verbs we have learned:

  #[
    #import "../vocab.typ"
    #import "../vocab.typ": verb, verb_prefix
    #show table.cell: it => {
      if it.x == 1 {
        romanization(it)
      } else {
        it
      }
    }
    #table(
      columns: (auto, auto, auto),
      column-gutter: 2em,
      row-gutter: 2.8em,

      verb_prefix(label: none)[upa][gam][], [upagamiṣyati], [he will approach],
      root[gam], [gamiṣyati], [he will go],
      root[gup], [gopsyati], [he will protect],
      root[cint], [cintayiṣyati -te], [he will think],
      root[ji], [jeṣyati], [he will conquer],
      root[dṛś], [drakṣyati], [he will see],
      root[nī], [neṣyati -te], [he will lead],
      root[paṭh], [paṭhiṣyati], [he will read],
      root[paś], [drakṣyati], [he will see],
      root[pā], [pāsyati], [he will drink],
      root[prach], [prakṣyati], [he will ask],
      root[budh], [bodhiṣyati -te], [he will know],
      root[bhū], [bhaviṣyati], [he will be],
      root[man], [maṃsyate], [he will think],
      root[ram], [raṃsyate], [he will enjoy],
      root[labh], [lapsyate], [he will obtain],
      root[vad], [vadiṣyati], [he will speak],
      root[vas], [vatsyati], [he will live],
      root[śubh], [śobhiṣyate], [he will shine],
      root[sev], [seviṣyate], [he will serve],
      root[sthā], [sthāsyati], [he will stand],
      root[smi], [smeṣyate], [he will smile],
      root[smṛ], [smariṣyati], [he will remember],
      root[has], [hasiṣyati], [he will laugh],

    )
  ]

#pagebreak(weak: true)
== Vocabulary: Nouns in #romanization[ṛ]
#[
  #let sa(t) = sanskrit(t)
  #let ro(t) = romanization(t)

  #import "../vocab.typ"
  #import vocab: adjective, feminine, indeclinable, masculine, neuter, pronoun, verb
  #vocab.list(
    columns: 3,
    [कदा], indeclinable[kadā], [when (used like #romanization[kutra])],
    [कर्तृ], masculine[kartṛ], [maker, doer (given in stem form)],
    [कर्त्री], feminine[kartrī], [maker, doer (follows long #romanization[ī] declension)],
    [कुलम्], neuter[kulam], [family],
    [दातृ], masculine[dātṛ], [giver],
    [दात्री], feminine[dātrī], [giver (#romanization[ī] declension)],
    [पितृ], masculine[pitṛ], [father],
    [भ्रातृ], masculine[bhrātṛ], [brother],
    [मातृ], feminine[mātṛ], [mother],
    [स्वसृ], feminine[svasṛ], [sister],
  )
]

#pagebreak(weak: true)
== Exercises
+ Memorize the #sandhi rules for final #romanization[t].
+ Memorize the declension for the nouns ending in #romanization[ṛ].
+ Make yourself familiar with the future third person singular forms.
+ Translate the following sentences into English:
  #set enum(spacing: 5em)
  #set par(leading: 3em, spacing: 3em);

  #devanagari_enum[
    + #sanskrit[मम पिता तत्र गमिष्यतीति बालस्तस्य मातरमवदत्]
    + #sanskrit[कदा तव भ्राता जलं लप्स्यत इति पितापृच्छत्]
    + #sanskrit[पितामातरौ जलात्कुलं गोप्स्यतः]
    + #sanskrit[कदा वनादागमिष्यसीति रामस्तस्य भ्रातरमपृच्छत्]
    + #sanskrit[तस्य पितरं सॆवित्वा रामो राजा भविष्यति]
    + #sanskrit[यदा तस्या भ्रातरं मन्यते तदा सा स्मयते]
    + #sanskrit[माता तसयाः प्रजायै सुखस्य दात्री भवति]
    + #sanskrit[य आत्मनं जयति स शान्तेः कर्ता]
    + #sanskrit[जलं पीत्वा तस्य मातुः पुस्तकं पठिष्यति]
    + #sanskrit[भ्रात्रा सह रामो वने वत्स्यति]
  ]

+ Translate the following sentences into Sanskrit:

  #set enum(spacing: 3em)
  + When my sister was born, she smiled at my mother.
  + My family's name is from the name of a seer.
  + "When will I speak to the king?" her father thought.
  + Her father’s wife is her mother.
  + My father is the maker of peace in our family.
  + The brother and sister will obtain fruit from the forest.
  + The hero will protect the king from the fire in the forest.
  + The son of the king has no brothers.
  + When will the students obtain knowledge from the virtuous teacher?
  + "I have seen you in the pond", the king says to the beautiful son.
