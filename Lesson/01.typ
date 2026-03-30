#import "../style.typ": *

#{
  let content = (
  Alphabet: (
      [The vowels in roman script],
      [The first six vowels in #devanāgarī],),
  Grammar: (
      [How a verb is formed],
      [The singular ending for verbs],),
  Vocabulary: (
      [The verbs #root[gam] and #root[prach]],
      [The word for "and"],
      [How to write simple sentences],
  )
)

[#lesson[One]<Lesson:1>]
chapter_summary(page_break: true, content)
}

// == Alphabet: Vowels
#flex-heading-lv2([Alphabet:\ Vowels], [The vowels in roman script])#general_index[Vowels]<Lesson1:Alphabet1>

+ In Sanskrit#general_index[Sanskrit], each letter represents one and only one sound (#grammar[varṇa]["color", sound, phoneme, letter]).
  In English, the letter "a" may indicate many sounds, but not so in
  Sanskrit. The alphabet is systematically arranged according to the
  structure of the mouth.
+ There are two basic divisions to the alphabet:

  #indent[
    #set enum(spacing: 1em)
    + Vowels (#grammar[svara]["sounded", vowel, tone], or sounded)
    + Consonants (#grammar[vyañjana]["manifesting", consonant], or manifesting)
  ]

+ Vowels can be either short#general_index[Vowels][Short] (#grammar[hrasva]["dwarfish, small", short vowel]) or long#general_index[Vowels][Long] (#grammar[dīrgha]["long", long vowel]). Short
  vowels are held for one count#general_index[Meter] (#grammar[mātrā]["meter", count, measure, duration, quantity]), and long vowels are held
  for two counts. Some vowels are called simple#general_index[Vowels][Simple] (#grammar[śuddha]["pure", simple vowel]), and
  some are called complex#general_index[Vowels][Complex] (#grammar[saṃyukta]["connected", complex vowel]).
  #table(
    columns:(auto, 5em,7em),
    row-gutter: 1em,
    align: (left, center, center),
    table.header([], upper([short]), upper([long])),
    table.cell(rowspan: 5)[Simple], romanization([a]), romanization([ā]),
                                    romanization([i]), romanization([ī]),
                                    romanization([u]), romanization([ū]),
                                    romanization([ṛ]), romanization([ṝ]),
                                    romanization([ḷ]), [],
    [], upper([long]), upper([long]),
    table.cell(rowspan: 2)[Complex#note(numbering: none)[Complex vowels also come in "long-short pairs": they used to be pronounced as #romanization[ai], #romanization[āi], and #romanization[au], #romanization[āu]. Over the time they shortened but remained to be diphthongs.]], romanization([e]), romanization([ai]),
                                     romanization([o]), romanization([au]),
  )

+ In Vedic Sanskrit, but rarely in Classical Sanskrit#index(index: "grammar")[saṃskṛta], there are also
  vowels held for three counts#general_index[Vowels][Protracted], called #grammar[pluta]["floating", vowel held for three counts, protracted], which are marked in
  #devanāgarī and roman script by the short vowel followed by the
  numeral 3. For example: #romanization[a]3, or #romanization[a] times 3. You may also see it
  marked with a long vowel: #romanization[ā]3. #romanization[Pāṇini] (1.2.27) compares the three
  counts to the calling of a rooster: #romanization[u] #romanization[ū] #romanization[u]3.
  #v(1fr)
+ Here is the pronunciation of the vowels:
  #table(
    columns:(auto, 0.7fr, 1fr),
    align: (left, left, left),
    romanization([a]), [like first "a" in], [America],
    romanization([ā]), [like the "a" in], [father],
    romanization([i]), [like the "ea" in], [heat],
    romanization([ī]), [like the "ee" in], [ghee],
    romanization([u]), [like the "u" in] , [suit],
    romanization([ū]), [like the “oo” in], [pool],
    romanization([ṛ]), [like the “ri” in], block(width: 10em, [river (usually not rolled)]),
    romanization([ṝ]), [like the “ri” in], [reed],
    romanization([ḷ]), [like the "lry" in], [jewelry],
    romanization([e]), [like the "a" in], [gate],
    romanization([ai]), [like the "ai" in], [aisle],
    romanization([o]), [like the "o" in], [pole],
    romanization([au]), [like the "ou" in], [loud]
  )
+ The lines and dots are called "diacritics"#general_index[Diacritics], or "diacritical marks".
  They are used because the Sanskrit alphabet has more letters than
  the English alphabet. Diacritics are combined with roman letters to
  represent new sounds.

+ A vowel by itself, or a consonant or group of consonants followed
  by a vowel, is called a syllable#general_index[Syllable] (#grammar[akṣara]["imperishable, that which cannot be analyzed further", syllable]).
  #v(1fr)

+ Sanskrit is written in the #grammar[devanāgarī][script of the "city of immortals"] script#general_index(display: [#devanāgarī script])[devanagari script]. The word #devanāgarī
  means the "city (#romanization[nāgarī]) of immortals (#romanization[deva])". There are no
  capital letters.

+ #block(width: 101%)[The ideal way to learn the script will be to memorize~approximately
  one letter each day, writing it 20 times or so, and putting it on a
  flash card (#devanāgarī on the front and roman on the back).
  Continue to practice regularly with your flash cards throughout the
  course. Practice for small amounts of time, several times a day.]
#flex-heading-lv2([], [The first six vowels in #devanāgarī])<Lesson1:Alphabet2>
#[ #set enum(indent: -1.6em)
10. Here are six vowels in #devanāgarī#general_index[devanagari script][Vowels]. The small numbers inside each
  letter indicate the order in drawing the various parts of the letter. In
  general, write left to right, top to bottom, writing the bar last.
  (Alternate forms for #romanization[a] and #romanization[ā] will be learned in @Lesson:7.)

    #table(
      inset: (top: 3em),
      row-gutter: 2em,
      columns: (0.25fr, 1.8fr, 0.25fr, 1.5fr),

      align: (horizon+left, left, horizon+left, left),

      [#table_ro([a])#todo([Add stroke order])], table_sa([अ]),
      table_ro([ā]), table_sa([आ]),

      table_ro([i]), table_sa([इ]),
      table_ro([ī]), table_sa([ई]),

      table_ro([u]), table_sa([उ]),
      table_ro([ū]), table_sa([ऊ]),
    )
]

#pagebreak(weak: true)
// == Grammar: Verbs
#flex-heading-lv2([Grammar:\ Verbs], [How a verb is formed])#general_index[Verbs]<Lesson1:Grammar1>

+ Sanskrit roots are divided into ten classes (#grammar[gaṇa]["list, group", class of verb roots]) in order to form
  the present stem#general_index[Stem, base]. We will study the four classes whose stems end
  in #romanization[a]. The root#general_index[Roots] (#grammar[dhātu]["element, root"]), written with #root[ ] before it, forms a stem
  (#romanization[aṅga]), and the stem adds an ending (#grammar[tiṅ][verb ending]) to form a verb (#grammar[tiṅanta]["having a #romanization[tiṅ] ending", verb, having verb endings]).

  #indent(below: 1em)[
    #table(
      columns: (.5fr, .5fr, 1fr),
      row-gutter: 2em,
      [Root], root([gam]), [go],
      [Stem], romanization([gaccha]), [go],
      [Verb], [#text-underbrace(right: 0.0em, alignment: right)[#romanization[gaccha]][Stem+]#text-underbrace(left: 0.0em, alignment: left)[#romanization[ti]][Ending (#romanization[ti])]], [he, she, or it goes],
    )
  ]

+ Verbs are in three persons (#grammar[puruṣa][person]): third (#grammar[puruṣa][prathama]["first", thrid]), or first),
  second (#grammar[puruṣa][madhyama]["middle", second] or middle), and first (#grammar[puruṣa][uttama]["last", first] or last).
  (Students in the West have learned these upside down.)
  #indent[
  #table(
      columns: (7em, 1fr),
      // column-gutter: 2em,
      [Third person#general_index[Person (verb)][Third]], [he, she, or it],
      [Second person#general_index[Person (verb)][Second]], [you],
      [First person#general_index[Person (verb)][First]], [I]
    )
  ]
// #flex-heading-lv2([], [The vowels in roman script])<Lesson1:Alphabet1>

+ The stem stays the same, but the ending changes for each person.
  This form is called the present indicative, because it is in the
  present tense, and it indicates. It is singular#general_index[Number][Singular] (#romanization[eka-vacana]#index(index: "grammar")[vacana][eka]).
  #indent[
    #table(
     columns: (7em, 1fr, 1fr),

     [Third person],
     [#romanization[gacchati] \ (#romanization[gaccha + ti])], block(width: 10em, [she goes, he goes]),

     [Second person],
     [#romanization[gacchasi] \ (#romanization[gaccha + si])],
     [you go],

     [First person],
     [#romanization[gacchāmi] \ (#romanization[gaccha + a + mi])],
     [I go]
   )
 ]

#pagebreak(weak: true)

== Vocabulary
+ Here is the vocabulary in Sanskrit and in English. Each verb
  appears in its root form, followed by the third person singular
  form. The stem can be found by removing the endings.

  #import "../vocab.typ"
  #import vocab: indeclinable, verb
  #vocab.list(columns: 2,
    [#verb([gam], [gacchati]) (3rd. per. sing.)], [he goes, she goes],
    [#indeclinable(label: [indeclinable\*])[ca]], [#block(width: 11em, [
      and (placed after the last
      word of the series, or
      after each word) (never
      first in a sentence or clause)])],
    [#verb([prach], [pṛcchati]) (3rd per. sing.)], [he asks, she asks],
  )<Outline:L1:Vocabulary1><Outline:L1:Vocabulary2>
  #comment[\*][
    Some words do not have endings, and so are called "indeclinable"#general_index[Indeclinable word]
      (#grammar[avyaya]["unmoving", indeclinable word]). Included as indeclinables are: prepositions, adverbs,
      particles, conjunctions (like #romanization[ca]), and interjections. A few nouns
      (like #romanization[svasti]) are also treated as indeclinables.
  ]

+ Here are some sample sentences:
  #table(
  columns: (1.6fr, 1fr),
  row-gutter: 2em,
  romanization([gacchāmi]), block(width: 10em,[I go. (or) I am going.]),
  romanization([pṛcchati gacchāmi ca]), [He asks and I go.],
  romanization([pṛcchati ca gacchāmi ca]), [He asks and I go.],
  romanization([gacchasi ca pṛcchasi ca]), [You go and you ask.\
(or) You go and ask.])<Outline:L1:Vocabulary3>

#pagebreak(weak: true)
== Exercises

+ Memorize the vowels and their order in roman script. Learn
  to pronounce them correctly.
+ Learn to write and recognize the first six vowels in #devanāgarī
+ Memorize the forms for the first, second, and third person singular
  verbs in the present indicative.
+ Memorize the vocabulary.
+ Translate the following sentences into English. Pronounce each
  sentence several times out loud, both before and after translating.
  Compare with the correct answers given on #ref(<answers1>, form: "page").
  #columns(2)[
    #set enum(indent: 0em, body-indent: 1em)
    + #romanization[pṛcchasi ca gacchati ca]
    + #romanization[gacchāmi pṛcchāmi ca]
    + #romanization[pṛcchati ca gacchati ca]
    + #romanization[gacchasi pṛcchāmi ca]
    #colbreak()
    5. #romanization[pṛcchati pṛcchāimi ca]
    + #romanization[gacchasi ca gacchati ca]
    + #romanization[pṛcchāmi gacchasi ca]
    + #romanization[pṛcchati ca gacchāmi ca]
  ]
+ Translate the following sentences into Sanskrit:
  #columns(2)[
    #set enum(indent: 0em, body-indent: 1em)
    + I go and I ask.
    + You ask and he goes.
    + He asks and you go.
    + He goes and asks.
    #colbreak()
    5. You ask.
    + I ask and you go.
    + I go and you go.
    + He goes and you go.
  ]
