#import "style.typ": *
#[
  #show heading.where(level: 1): it => {
    set text(
      size: 1.2*text-size,
      font: sans-font,
      weight: "semibold",
    )
    [#upper(it.body)]
  }

  #heading(
    outlined: true,
    supplement: [Lesson],
    [Introduction]
  )
]

== Reasons~for studying Sanskrit
There are several reasons to study the subtle and refined language
of~Sanskrit. The sound, script, grammar, and systematic nature
of the language is charming in itself, something of great beauty.
The study of Sanskrit creates orderliness within the mind because
Sanskrit is a highly systematic language, reflecting the orderliness
of~nature itself.

Most students who study Sanskrit also have an interest in the
content of the Sanskrit literature. This large body of literature is
enormously diverse, including such fields as philosophy, science,
art, music, phonology, grammar, mathematics, architecture,
history, education, and logic (to name just a few). The literature
can be understood in greater depth when it is studied in its original
language.

Even a little Sanskrit will give you control over English translations
of the Sanskrit literature, so you will be able to decide if a crucial
word has been mistranslated. While you may not become an expert
translator of the Sanskrit literature, you'll find that an introductory
knowledge of Sanskrit has great worth. Even a small knowledge of
Sanskrit is useful when reading Sanskrit texts in English. And who
knows? The study of Sanskrit could lead to something far beyond
what you anticipated.

== Vedic~and Classical Sanskrit
Sanskrit#general_index[Sanskrit] (#grammar[saṃskṛta]["put together, perfected", Sanskrit]) means "perfected", or
"put together" ("put"
#romanization[kṛta] and "together" #romanization[sam]). Sanskrit is divided into two principal
parts: Vedic Sanskrit and Classical Sanskrit. The older language is
Vedic Sanskrit, or Vedic, the language of the #romanization[Saṃhitā] and
#romanization[Brāhmaṇa]. Vedic Sanskrit begins with the #romanization[Ṛk-Saṃhitā]. Classical
Sanskrit, which includes several aspects, is the language of the
#romanization[Bhagavad-Gītā], #romanization[Rāmāyana], and the rest of the Sanskrit
literature.

This text focuses on the beginning study of Classical Sanskrit,
although several of the quotations are in Vedic Sanskrit. Normally,
Vedic Sanskrit is studied after Classical Sanskrit is learned.

== Texts~on Sanskrit
Over the past several hundred years, few Western scholars have
written grammars or introductory textbooks for Sanskrit. As early as the 16th Century, Jesuits from Portugal were studying Sanskrit in
India. In the 18th Century, the first (European) Sanskrit grammar,
_Grammatica Granthamia seu samscrdumica_, was written in Latin by
a German Jesuit missionary, Johann Hanxleden. Some 19th Century
works are by: Bartholome (1801), Foster (1804), Colebrooke
(1805), Carey (1806), Wilkens (1808), Hamilton (1814), Yates
(1820), Bopp (1827), Wilson (1841), Monier-Williams (1846),
Ballantyne (1862), Benfey (1863), Müller (1866), Kielhorn (1870),
Whitney (1879), and Perry (1886). Some 20th Century works are
by: MacDonell (1911), Renou (1942), Antoine (1954), Burrow
(1955), Tyberg (1964), Gonda (1966), Hart (1972), Coulson
(1976), and Goldman (1980).

== Features of this~text
This text is written to fulfill a need that still remains, which is to
make the introductory study of Sanskrit simple, concise, and
systematic, thereby making it more accessible and enjoyable for a
beginning student. The text is not a complete survey of Sanskrit
grammar, or even a primer. It is meant to be a #box["pre-primer"], a
step-by-step introduction to the fundamental aspects of the language.

Some of the features of this text are:

#indent[
- Small, learnable steps
- A balance between alphabet, grammar, and vocabulary in
  each lesson
- As few unnecessary complications as possible
- Gradual integration of #sandhi rules
]

After completing this text, you should be able to study any of the
above Sanskrit textbooks more comfortably, or begin Part Two of this
text. Part Two will feature the reading of selected verses from
the #romanization[Bhagavad-Gītā], accompanied by a more thorough explanation
of unfamiliar rules of grammar as they are encountered in the
reading. Both volumes together will cover the basic rules of
Sanskrit grammar. For college classes, Part One covers the
standard material for a one-semester course and Part Two for the
second semester. After completing Part Two, the student should be
able to read the #romanization[Bhagavad-Gītā] with the aid of a Sanskrit dictionary and a word-by-word English translation.

In this text, each lesson has three sections:

#indent[
  #set enum(spacing: par-leading)
  + Alphabet,
  + Grammar,
  + Vocabulary,
]

== Alphabet


1. The study of any language begins with the study of the alphabet---\ both pronunciation and script. From the beginning, the
  pronunciation of Sanskrit should be relaxed and natural, without
  straining. One of the texts of #romanization[Śikṣā] states that Sanskrit should be
  pronounced with sweetness, clearness and patience (#romanization[Pāṇinīya
  Śikṣā], 33). It will be helpful to imitate the pronunciation of a
  qualified person. As you listen to different Sanskrit recitations, you
  may notice that there is some slight variation in pronunciation (#romanization[ai],
  #romanization[au], #romanization[ṃ], #romanization[ḥ]), because Sanskrit has been pronounced slightly differently in different parts of India.

  #block(height: 5em)[Also included in this section will be the study of the script
  (#devanāgarī). The #devanāgarī script will be studied gradually
  over the first seven lessons. In those lessons, the exercises will be
  in roman script. Beginning in the seventh lesson, the exercises will
  be given in both roman and #devanāgarī script. Once #devanāgarī
  has been learned, the exercises will be in #devanāgarī only.]

  One challenge for the beginning student is learning the rules, called
  #sandhi rules, which describe how the sounds of words change in
  different environments. In the past, students have found these rules
  demanding, because they cannot be used until they are memorized,
  and they are difficult to memorize without being used. By
  introducing #sandhi in small steps that are easy to master, this text
  attempts to overcome this problem. Beginning in @Lesson:2, the
  exercises will be given without #sandhi (#grammar[pada-pāṭha]["word-reading", (without #sandhi) recitation of the individual words of the Veda]), but will
  also be observed with #sandhi (#grammar[saṃhitā-pāṭha]["collected reading", (with #sandhi) recitation of the "collected" text of the Veda]). Beginning in
  @Lesson:8, the #sandhi rules will be given in chart form, so that the
  charts can be used temporarily as a quick reference to gain
  understanding of the general context of the rules. After using the
  charts for some time, it will be easy to memorize the rules, which
  begin in @Lesson:13.


== Grammar
2. The study of grammar is from #romanization[Vyākaraṇa], of which the primary
  text is the #romanization[Aṣṭādhyāyī] of #romanization[Pāṇini]#general_index(display: romanization[Pāṇini])[Panini]. The #romanization[Aṣṭādhyāyī] is a concise
  and complete grammar of Sanskrit, containing about 4,000 #romanization[sūtras],
  or aphorisms. While #romanization[saṃskṛta] means to "put together",
  #grammar[vyākaraṇa]["taken apart", grammar]#general_index(display: romanization[vyākaraṇa])[vyakarana] means to "undo" or to "take apart". It gives the details
  of the structure of the language.

  Many of the grammatical terms are given in Sanskrit. Memorizing
  these terms will be useful for several reasons. It will give you a
  better understanding of the tradition from which these rules came.
  It will allow you to feel more comfortable when studying more
  advanced Sanskrit textbooks, of which many use these terms. It
  will increase your vocabulary, which will be useful in many areas,
  since most of these terms are also found in other areas than
  grammar.

== Vocabulary
3. According to #romanization[Yāska's Nirukta]#general_index(display: romanization[Nirukta])[Nirukta]#general_index(display: romanization[Yāska])[Yaska] (the #romanization[Vedāṅga] dealing with word
  meaning), all Sanskrit words can be divided into four categories:
  verbs (#grammar[ākhyāta]["fully spoken", verb]), nominals (nouns, pronouns, and adjectives)
  (#grammar[nāman]["name", nominal]), prefixes#general_index[Prefixes] (#grammar[upasarga]["discharged near", verb prefix]), and indeclinables (#grammar[nipāta][indeclinable]). Verbs,
  as well as nominals, are systematically derived from verb roots#general_index[Roots]
  (#grammar[dhātu]["element, root"]), of which there are about 2,000. In this text, the limited
  vocabulary is aimed at eventually providing you with an entry into
  the reading of the #romanization[Bhagavad-Gītā] and the #romanization[Rāmāyaṇa].

== How to study this text
Review the alphabet, grammar rules, and vocabulary frequently
and in a relaxed state of mind before doing the exercises. Then the
exercises will be more enjoyable, with fewer difficult areas. The
exercises in this text contain as few idiomatic Sanskrit expressions
as possible, so that you will not be overburdened with learning too
much at one time. If the exercises seem difficult, you should
review more. The answers to the exercises are given in the back of
the text (#ref(<answers1>, form: "page")).

In general, you should review as often as possible during the day,
taking a few minutes to bring the material to mind. If there is any
hesitation in recall, immediately look at the written form, rather
than straining and thus “programming” your mind to forget. The
best way to memorize is to speak the words out loud, if possible.
Memorization should be easy, comfortable, and frequent.

== Acknowledgements

#block(width: 102%)[The following individuals have kindly offered inspiration and
creative suggestions, and have cheerfully assisted in the preparation
of this text: Bryan Aubrey, Niels Baumann, Harriet Berman, Laurie
Couture, Michael Davis, Carol de Giere, Katherine Doak, Lawrence
Eyre, James French, June French, Peter Freund, Elizabeth
Goldfinger, Shepley Hansen, Jean Harrison, Monica Hayward,
Park Hensley, Jos Hindriks, Sherry Hogue, Jan Houben, Robert
Hütwohl, Alicia Isen, Vernon Katz, Lee Keng, John Kremer, John
Konhaus, Sara Konhaus, Margaret Lerom, Sherry Levesque, Dawn
Macheca, Richard Marsan, Devorah McKay, Meha Mehta, Christine
Mosse, Anthony Naylon, Patricia Oates, Dafna O'Neill, Helen
Ovens, Craig Pearson, David Reigle, Beatrice Reilly, Beth Reilly,
John Roberts, Robert Roney,
Frederick Rosenberg, Susan
Rosenfield, William Sands, Peter Scharf, Barney Sherman, Barbara
Small, Thomas Stanley, Dale Stephens, Jan Storms, Sheila Terry,
Roxie Teague, Susan Tripp, Agnes Maria Von Agris, Douglas
Walker, Keith Wegman, Geoffrey Wells, Julan White, and Elinor
Wolfe. Many other students who have studied this text have given
valuable feedback. Peter Freund and Eric Vautier developed the
devanāgarī and transliteration fonts used in this text. My wife, Linda
assisted in editing and offered continuous guidance and support.]

The Sanskrit quotations beginning on page #ref(<section:Sanskrit_Quotations>, form: "page") (Part One) and the
verses from the #romanization[Bhagavad Gītā] (Part Two) are from translations by
Maharishi Mahesh Yogi.

== For further study
#[
  #set list(spacing: 0.85*par-leading)
  #set par(leading: 0.75*par-leading)
- _Sanskrit Manual_, Roderick Buknell, Motilal Banarsidass
- _A Sanskrit-English Dictionary_, Monier Monier-Williams, Motilal Banarsidass
- _The Bhagavad Gītā_, translated by Winthrop Sargeant, State of New York University Press
- _Devavāṇīpraveśikā: Introduction to the Sanskrit Language_, Goldman and Sutherland, University of California, Berkely
- _Sanskrit, An Introduction to the Classical Language_, Michael Coulson, Teach Yourself Books, Hodder and Stoughton
- _A Sanskrit Grammar for Students_, Arthur MacDonell, Motilal Banarsidass
- _Saṃskṛtasubodhinī: A Sanskrit Primer_, Madhav Deshpande, University of Michigan
- _Sanskrit: An Easy Introduction to an Enchanting Language_, Ashok Aklujkar, University of British Columbia
- _Sanskrit Grammar_, William Dwight Whitney, Motilal Banarsidass
- _Sanskrit Reader_, Charles Lanman, Motilal Banarsidass
- _A Higher Sanskrit Grammar_, M. R. Kale, Motilal Banarsidass
- _A Manual of Sanskrit Phonetics_, C. C. Uhlenbeck, Munshiram
- _A Dictionary of Sanskrit Grammar_, K. V. Abhyankar, Baroda Oriental Institute
- _A Critical Study of Sanskrit Phonetics_, Vidhata Mishra
]

/*
== Dedication

This book is dedicated with deep appreciation and gratitude to
Maharishi Mahesh Yogi. Maharishi describes Sanskrit as the
language of nature, the language of the impulses within pure
consciousness, the Self. Maharishi explains how the ancient Vedic
rishis of the Himalayas, fathoming the silent depth of their own
pure consciousness, cognized these impulses. These cognitions
were recorded in the Vedic literature, a vast body of beautiful
expressions that embodies the mechanics of evolution in every field
of life.

Over the years, Maharishi has emphasized the most significant
passages from this literature, of which many are included in the
section of this text entitled "Sanskrit Quotations". The knowledge
contained in these expressions can be found at the foundation of
every Culture and tradition.

From the Vedic tradition of India, Maharishi has brought to light
practical procedures for experiencing pure consciousness and
promoting evolution in daily life—Maharishi's Transcendental
Meditation and TM-Sidhi program. This simple, natural program
has brought happiness and fulfillment to millions of people around
the world, and has been verified by more than 500 scientific studies
on every continent. Maharishi has provided the means for
removing stress and suffering and for unfolding the full potential
within every individual—for creating perfect health, progress,
prosperity, and permanent peace in the world.
*/
