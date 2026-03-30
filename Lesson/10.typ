#import "../style.typ": *
#import "../tables.typ"

#{
let content = (
  Alphabet: (
    [The remaining #sandhi rules],
  ),
  Grammar: (
    [Pronouns and adjectives],
    [The verb #root[as]],
  ),
  Vocabulary: (
    [Adjectives and particles],
  )
)

[#lesson[Ten]<Lesson:10>]
chapter_summary(page_break: true, content)
}
#context{v(-par.leading)}
== Alphabet: Remaining #sandhi rules#general_index[sandhi][Consonant sandhi]

+ Here is the chart for the #sandhi rules for final #romanization[t], #romanization[n], and #romanization[m]:
  #[
    #let small = 0.6em
    #let large = 0.85em
    #set table(inset: (x, y) => {
    let d = (:)
    if x in (0,1,2) and y > 0 {d.left = 3em}
    if y == 0 {d.y = 0em}
    else if y == 1 {d.y = large}
      else if y == 2 {d.top = large; d.bottom = large}
      else if y == 3 {d.top = large; d.bottom = small}
      else if y == 12 {d.top = small; d.bottom = large}
      else if y == 13 {d.top = large; d.bottom = small}
      else if y == 21 {d.top = 1em; d.bottom = large}
      else {d.y = small}
    return d
    })

    #let ro(term) = romanization(term)
    #set par(leading: .5em)
    #set table.vline(
      stroke: (paint: luma(200), thickness: 0.5pt),
    )
    #set table.hline(
      stroke: (paint: luma(200), thickness: 0.5pt),
    )

    #let a-note-counter = counter("a-note")
    #a-note-counter.update(0)
    #let a-note = note.with(
      counter: a-note-counter,
      numbering: (..i) => text(
        weight: "bold",
        font: sans-font,
        size: 0.75*text-size,
        style: "normal",
        numbering("1. ", ..i)
        ),
      anchor-numbering: (.., i) => text(
        weight: "bold",
        font: sans-font,
        size: 0.75*text-size,
        baseline: -.5em,
        [#i],
      ),
      flush-numbering: false,
    )

    #table(
    columns: (1fr, 1fr, 1fr, 1fr),

    row-gutter: 0em,
    column-gutter: 1.5em,
    align: left,

    table.hline(y: 2, start: 0, end: 3, stroke: (paint: luma(0))),
    table.hline(y: 21,start: 0, end: 3, stroke: (paint: luma(0))),

    table.hline(y: 3, start: 0, end: 3),
    table.hline(y: 13, start: 0, end: 3),

    table.vline(x: 1, start: 2, end: 21),
    table.vline(x: 2, start: 2, end: 21),

    table.cell(colspan: 3, align: horizon+center,
      upper([Final letters of first word])
    ), block(height: 2.5em, upper([Initial letter of second word])),
    [#ro[t]], [#ro[n]], [#ro[m]], [],



  [#ro[d]], [#ro[n]#a-note[If the vowel before #ro[n] is short, #ro[n] becomes #romanization[nn].]], [#ro[m]], [vowels],

  [#ro[d]], [#ro[n]], [#ro[ṃ]], [#ro[g]/#ro[gh]],
  [#ro[j]], [#ro[ñ]], [#ro[ṃ]], [#ro[j]/#ro[jh]],
  [#ro[ḍ]], [#ro[ṇ]], [#ro[ṃ]], [#ro[ḍ]/#ro[ḍh]],
  [#ro[d]], [#ro[n]], [#ro[ṃ]], [#ro[d]/#ro[dh]],
  [#ro[d]], [#ro[n]], [#ro[ṃ]], [#ro[b]/#ro[bh]],

  [#ro[n]], [#ro[n]], [#ro[ṃ]], block(width: 125%)[nasals (#ro[n]/#ro[m])],
  [#ro[d]], [#ro[n]], [#ro[ṃ]], [#ro[y]/#ro[v]],
  [#ro[d]], [#ro[n]], [#ro[ṃ]], [#ro[r]],
  [#ro[l]], [#ro[ṃl]], [#ro[ṃ]], [#ro[l]],
  [#ro[d]\(#ro[dh]\)#a-note[The following #ro[h] becomes #ro[dh].]], [#ro[n]], [#ro[ṃ]], [#ro[h]],

  [#ro[t]], [#ro[n]], [#ro[ṃ]], [#ro[k]/#ro[kh]],
  [#ro[c]], [#ro[ṃś]], [#ro[ṃ]], [#ro[c]/#ro[ch]],
  [#ro[ṭ]], [#ro[ṃṣ]], [#ro[ṃ]], [#ro[ṭ]/#ro[ṭh]],
  [#ro[t]], [#ro[ṃs]], [#ro[ṃ]], [#ro[t]/#ro[th]],
  [#ro[t]], [#ro[n]], [#ro[ṃ]], [#ro[p]/#ro[ph]],

  [#ro[c]\(#ro[ch])#a-note[The following #ro[ś] becomes #ro[ch].]], [#ro[ñ]\(#ro[ch])#a-note[The following #ro[ś] _may_ become #ro[ch].]], [#ro[ṃ]], [#ro[ś]],
  [#ro[t]], [#ro[n]], [#ro[ṃ]], [#ro[ṣ]/#ro[s]],
  [#ro[t]], [#ro[n]], [#ro[ṃ]], block(width: 125%)[end of line],
  )]#v(-1em)
  Examples for this chart can be found on:
  #indent(above: -1.5em)[
    #ref(<Lesson:15:sandhi_m:examples>, form: "page")
    (for final #romanization[m])\
    #pages(
      <Lesson:16:sandhi_n:examples:start>,
      <Lesson:16:sandhi_n:examples:end>
    )
    // pages 205-207
    (for final #romanization[n])\
    #pages(
      <Lesson:17:sandhi_t:examples:start>,
      <Lesson:17:sandhi_t:examples:end>
    )
    // pages 218 and 219
    (for final #romanization[t])
  ]

+ Many of the changes on this chart occur because the last letter of
  the first word is "getting ready" to say the first letter of the next
  word. This rule, which often involves a change of voicing, is
  called “regressive assimilation.” The prior sound is assimilated.
+ There are a few additional rules, which are used less often. They
  are discussed in @Lesson:18.
+ There are no #sandhi changes if the first word ends in a vowel
  (excluding #romanization[ḥ] and #romanization[ṃ]) and the second word begins with a consonant.
+ At one time the manuscripts didn't have any breaks between
  words, sentences, or paragraphs in the written script. Fortunately,
  modem editions have introduced some spaces between words.
  Words are separated in #devanāgarī as much as possible without
  changing how they are written and without adding a #romanization[virāma].
+ Here are the cases that result in a break between words#general_index(display: [#sandhi, word breaks in])[sandhi][Words breaks in]. After the
  #sandhi has been applied, there is a break in the devanagari
  between words when the first word ends in a vowel, which
  includes #romanization[ḥ] or #romanization[ṃ]. For example:

  #indent[
    #table(
      columns: (auto, auto, auto, auto),
      column-gutter: 0.75em,
      row-gutter: 3*(1em, 2em),
      sanskrit[रामः गच्छति], [=], sanskrit[रामो गच्छति], [],
      romanization[ramaḥ gacchati], [=], romanization[ramo gacchati],  [(vowel)],


      sanskrit[रामः पृच्छति], [=], sanskrit[रामः पृच्छति],[],
      romanization[ramaḥ pṛcchati], [=], romanization[ramaḥ gacchati], [(#romanization[ḥ])],


      sanskrit[रामम् गच्छति], [=], sanskrit[रामं गच्छति], [],
      romanization[ramam gacchati], [=], romanization[ramaṃ gacchati], [(#romanization[ṃ])],

    )


]
+ If the first word ends in a vowel and the second word begins in a
  vowel and together they form a new vowel (#romanization[bhava] + #romanization[arjuna] =
  #romanization[bhavārjuna]), then there can be no break in devanagari or roman
  script. (See point 10 on #ref(<romanization:no_break_long_vowel>, form:"page")).

== Grammar: Pronouns#general_index[Pronouns]

+ Pronouns (#grammar[sarva-nāman]["all-name", pronoun (which names anything)]) decline exactly the same way that nouns
  decline. This table does not give, however, the endings, but the
  entire first person pronoun (I, we two, we, etc.):

  Stems: #romanization[mad] (singular) I#general_index(display: [I, we; #romanization[mad], #romanization[asmad]])[Pronoun declensions][I, we]; #romanization[asmad] (plural) we. Both are any gender.
  #[
  #set par(leading: 0.5em)
  #let sa_ro(term1, term2) = [
    #sanskrit[#term1]\ #romanization[#term2]]

  #align(left)[#block(width:110%)[
    #v(-1em)
    #declension_table(
      columns: (auto, 1.2fr, 1.6fr, 1.7fr),
      function: (term) => term,
      row-gutter: (2em, 2.9em),
      column-gutter: 0.5em,
      [Nom. \ I, we],
        sa_ro[अहम्][aham],
        sa_ro[आवाम्][āvām],
        sa_ro[वयम्][vayam],
      [Acc.\ me, us],
        alternate[माम्][मा][mām][mā],
        alternate[आवाम्][नौ][āvām][nau],
        alternate[असमान्][नः][asmān][naḥ],
      [Inst.\ with me, us],
        sa_ro[मया][mayā],
        sa_ro[आवाभ्याम्][āvābhyām],
        sa_ro[अस्माभिः][asmābhiḥ],
      [Dat.\ for me, us],
        alternate[मह्यम्][मे][mahyam][me],
        alternate[आवाभ्याम्][नौ][āvābhyām][nau],
        alternate[अस्मभ्यम्][नः][asmabhyam][naḥ],
      [Abl.\ from me, us],
        sa_ro[मत्][mat],
        sa_ro[आवाभ्याम्][āvābhyām],
        sa_ro[अस्मत्][asmat],
      [Gen.\ my, our],
        alternate[मम][मे][mama][me],
        alternate[आवयोः][नौ][āvayoḥ][nau],
        alternate[अस्माकम्][नः][asmākam][naḥ],
      [Loc.\ on me, us],
        sa_ro[मयि][mayi],
        sa_ro[आवयोः][āvayoḥ],
        sa_ro[अस्मासु][asmāsu],
    )<section:mad_asmad>
]
]
]

+ #block(width: 105%)[The Sanskrit words in parentheses are sometimes used. For example,
  #romanization[mā] is sometimes used instead of #romanization[mām] (except beginning a sentence).]

+ Here is the second person pronoun (you)#general_index(display: [you; #romanization[tvad], #romanization[yuṣmad]])[Pronoun declensions][you]:

  #block(width: 110%)[Stems: #romanization[tvad] (singular) you; #romanization[yuṣmad] (plural) you. Both are any gender.]
  #[
  #set par(leading: 0.5em)
  #let ro(term) = romanization(term)
  #let sa(term) = sanskrit(term)
  #let sa_ro(term1, term2) = [
    #sanskrit[#term1]\ #romanization[#term2]]
  #align(left)[#block(width:110%)[
    #declension_table(
      columns: (auto, 1.2fr, 1.6fr, 1.7fr),
      function: (term) => term,
      row-gutter: (2em, 3em),
      column-gutter: 0.5em,
    [Nom.\ you],
      sa_ro[त्वम्][tvam],
      sa_ro[युवाम्][yuvām],
      sa_ro[यूयम्][yūyam],
    [Acc.\ you],
      alternate[तवाम्][त्वा][tvām][tvā],
      alternate[युवाम्][वाम्][yuvām][vām],
      alternate[युष्मान्][वः][yuṣmān][vaḥ],
    [Inst.\ with you],
      sa_ro[त्वया][tvayā],
      sa_ro[युवाभ्याम्][yuvābhyām],
      sa_ro[युष्माभिः][yuṣmābhiḥ],
    [Dat.\ for you],
      alternate[तुभ्यम्][ते][tubhyam][te],
      alternate[युवाभ्याम्][वाम्][yuvābhyām][vām],
      alternate[युष्मभ्यम्][वः][yuṣmabhyam][vaḥ],
    [Abl.\ from you],
      sa_ro[त्वत्][tvat],
      sa_ro[युवाभ्याम्][yuvābhyām],
      sa_ro[युष्मत्][yuṣmat],
    [Gen.\ your],
      alternate[तव][ते][tava][te],
      alternate[युवयोः][वाम्][yuvayoḥ][vām],
      alternate[युष्माकम्][वः][yuṣmākam][vaḥ],
    [Loc.\ on you],
      sa_ro[त्वयि][tvayi],
      sa_ro[युवयोः][yuvayoḥ],
      sa_ro[युष्मासु][yuṣmāsu],
    // [Voc.\ (O)], [#ro[]], [#ro[]], [#ro[]],
  )<section:tvad_yuṣmad>
]
]
]

== Adjectives#general_index[Nominal, word taking case terminations]
4. Adjectives (#grammar[viśeṣaṇa]["qualifying", adjective] #general_index[Adjectives]) are considered nominals (#romanization[subanta]#index(index: "grammar")[subanta]), or noun
  forms. They are declined like nouns. They are usually placed before
  the noun that they modify and agree with it in number, case, and
  gender. For example, the adjective for "beautiful" is #romanization[sundara]:
  #indent[
    #sanskrit[सुन्दरो गजो गच्छति~।]\
    #romanization[sundaro gajo gacchati] (with #sandhi)\
    The beautiful elephant goes.
  ]
  If a genitive is also modifying a noun, the genitive goes closest to the
  noun. For example:
  #indent[
    #set par(spacing: 3em)
    #sanskrit[सुन्दरो नृपस्य गजो गच्छति~।]\
    #romanization[sundaro nṛpasja gajo gacchati] (with #sandhi)\
    The beautiful elephant of the king goes.

    #sanskrit[सुन्दरस्य नृपस्य गजो गच्छति~।]\
    #romanization[sundarasya nṛpasya gajo gacchati] (with #sandhi)\
    The elephant of the beautiful king goes.
  ]
== #root[as]
5. Once of the most common roots in Sanskrit is #root[as] #general_index(display : [#root[as] (active)])[as (active)], which means
  "to~be". We have had another root, #root[bhū], which also means "to~be", but #root[as] is more common. It is used to mean "there is" and
  as a copula. For example:
  #indent[
    #table(
      columns: 2,
      row-gutter: 3em,
      [There is the horse], [#sanskrit[अश्वोऽस्ति]\ #romanization[aśvo 'sti]],
      [Rāma is the king], [#sanskrit[रामो नृपोऽस्ति]\ #romanization[rāmo nṛpo 'sti]]
    )
  ]
  #v(1fr)
+ Here is the present indicative (#romanization[laṭ]) for #root[as]. These are not the
  endings, but the entire verb:
  #indent[
    #let sa(term) = sanskrit(term)
    #let ro(term) = romanization(term)

    #tables.conjugation-table(
      columns: (auto, 1fr, 1fr, 1fr),
      row-gutter: (1.6em, 2.4em),
      [Third],
      [#sa[अस्ति]\ #ro[asti]],
      [#sa[स्तः]\ #ro[staḥ]],
      [#sa[सन्ति]\ #ro[santi]],

      [Second],
      [#sa[असि]\ #ro[asi]],
      [#sa[स्थः]\ #ro[sthaḥ]],
      [#sa[स्थ]\ #ro[stha]],

      [First],
      [#sa[अस्मि]\ #ro[asmi]],
      [#sa[स्वः]\ #ro[svaḥ]],
      [#sa[स्मः]\ #ro[smaḥ]],
    )

  //   #table(
  //     columns: (auto, 1fr, 1fr, 1fr),
  //     // column-gutter: 1em,
  //     row-gutter: (1em, 1.5em),
  //     table.header([], smallcaps([Singular]), smallcaps([Dual]), smallcaps([Plural])),
  //     [Third],
  //       [#sanskrit[अस्ति]\ #romanization[asti]],
  //       [#sanskrit[स्तः]\ #romanization[staḥ]],
  //       [#sanskrit[सन्ति]\ #romanization[santi]],

  //     [Second],
  //       [#sanskrit[असि]\ #romanization[asi]],
  //       [#sanskrit[स्थः]\ #romanization[sthaḥ]],
  //       [#sanskrit[स्थ]\ #romanization[stha]],

  //     [First],
  //       [#sanskrit[अस्मि]\ #romanization[asmi]],
  //       [#sanskrit[स्वः]\ #romanization[svaḥ]],
  //       [#sanskrit[स्मः]\ #romanization[smaḥ]]
  //  )
  ]
  Note how closely this is related to the endings for the active
  verbs. Note also that the singular forms begin with #romanization[a], and the
  dual and plural begin with #romanization[s].
+ This verb is often understood. That is, the verb is meant, but is
  not written in the sentence. For example:
  #indent[
    #table(
      columns: (auto, 3em, auto),
      align: (left, center, left),
    [
      #sanskrit[रामो नृपोऽस्ति~।]\
      #romanization[rāmo nṛpo 'sti]\
      Rāma is the king
    ], [or], [
      #sanskrit[नृपो रामः~।]\
      #romanization[nṛpo rāmaḥ]\
      Rāma is the king.
    ]
  )
  ]
  Notice that when the verb is understood, the predicate nominative
  (king) is sometimes placed before the subject (Rāma).

+ Often this verb begins the sentence. For example:
  #indent[
    #sanskrit[अस्ति नृपो दशरथो ग्रामे~।]\
    #romanization[asti nṛpo daśaratho grāme]\
    There is a king, Daśaratha, in the village.
  ]

#pagebreak(weak: true)
== Vocabulary
  #import "../vocab.typ"
  #import vocab: adjective, indeclinable, verb, neuter, pronoun
  #vocab.list(columns: 3,
  row-gutter: 2.35em,
    [अतीव], indeclinable[atīva], [very],
    [अपि], indeclinable[api], block(width: 110%)[also, too (placed after the word it is associated with)],
    [अस्], [#block(width:13em)[#verb[as][asti] (3rd. per. sing.)]], [he, she, or it is],
    [अस्मद्], pronoun(label: [plural pro.])[asmad], [we],
    [अहो], indeclinable[aho], [aha!, hey!],
    [एवम्], indeclinable[evam], [thus, in this way],
    [कुपित], adjective[kupita][], [angry],
    [त्वद्], pronoun(label: [sing. pro.])[tvad], [you],
    [धार्मिक], adjective[dhārmika][], [virtuous],
    [नाम], indeclinable[nāma], block(width: 110%)[by name (placed after the word it is associated with)],
    [पुनर्], indeclinable[punar], [again],
    [भीत], adjective[bhīta][], [afraid],
    [मद्], pronoun(label: [sing. pro.])[mad], [I],
    [युष्मद्], pronoun(label: [plural pro.])[yuṣmad], [you],
    [सुन्दर], adjective[sundara][], [beautiful],
  )


#pagebreak(weak: true)
== Exercises

+ #set enum(spacing: 2.5em)
  Put in the correct #sandhi, write in #devanāgarī, and translate:

  + #romanization[mama putraḥ gacchati]
  + #romanization[tava gahaḥ mat tvām gacchati]
  + #romanization[mama hastau pustakeṣu staḥ]
  + #romanization[aham nṛpaḥ asmi]
  + #romanization[vayam aśve tiṣṭhāmaḥ]
  + #romanization[tvam mama pustakam paṭhasi]
  + #romanization[rāmaḥ tava nṛpaḥ asti]
  + #romanization[yūyam gṛhe stha]
  + #romanization[asmākam nṛpaḥ kupitaḥ asti]
  + #romanization[tvayā saha aham gacchāmi]
  + #romanization[dhārmikaḥ nṛpaḥ bhītaḥ asti]
  + #romanization[sundaraḥ tvam]


+ #set enum(spacing: 5em)
  Take out the sandhi and translate the following:

  + #sanskrit[नृपस्य पुत्रोऽस्ति~।]
  + #sanskrit[अहो रामः पुनर्वदति~।]
  + #sanskrit[अहमतीव भीतो भवामि~।]
  + #sanskrit[आचार्या अपि पुस्तकानि पठन्ति~।]
  + #sanskrit[अस्ति नृपो रामो नाम वने~।]
  + #sanskrit[कथं तव गृहं गच्छामीति शिष्यः पृच्छति~।]
  + #sanskrit[वीरो मम ग्रामं जयति~।]
  + #sanskrit[पुत्रः सुन्दरात्फलाज्जलं लभते~।]
  + #sanskrit[सुखीन विना दुःखमस्ति~।]
  + #sanskrit[सुन्दरो गज इति पुत्रो मन्यते~।]


+ #block(breakable:false)[#set enum(spacing: 2.5em)
  Translate the following sentences, writing them first without
  #sandhi (in #devanāgarī) and then with #sandhi (in #devanāgarī):

  + The student is not afraid of the teacher. (Use ablative for
    teacher.)
  + You obtain knowledge from the scriptures.
  + "The boy is there", says the hero to the teacher.
  + I ask the teacher about the deer.
  + "Where are you going?" the boy asks.
  + Again the hero comes to my house.
  + Your teacher speaks the truth.
  + Our horses are standing in the village.
  + There is a king, Rāma by name, in our village.
  + How do I obtain the king's horses from you?
]

#pagebreak(weak: true)
== Summary Sheet#general_index(display: [Lesson Ten])[Summary sheets][Lesson 10]<summary10>

#indent(depth: 2em, tables.conjugation-gacchati())

=== Verbs Primarily Taking Active Endings (#romanization[parasmaipada])
#table(
    columns: (6em, 1fr, 2fr),
    [#romanization[ā] + #root[gam]], romanization[āgacchati], [he comes],
    root([gam]), romanization([gacchati]), [he goes],
    root([ji]), romanization([jayati]), [he conquers],
    root([paṭh]), romanization([paṭhati]), [he reads],
    [#root[paś] (#root[dṛś])], romanization([paśyati]), [he sees],
    root([prach]), romanization([pṛcchati]), [he asks],
    root([bhū]), romanization([bhavati]), [he is],
    root([vad]), romanization([vadati]), [he speaks, he says],
    root([vas]), romanization([vasati]), [he lives],
    root([sthā]), romanization([tiṣṭhati]), [he stands],
    root([smṛ]), romanization([smarati]), [he remembers],
  )

#pagebreak(weak:true)

#indent(depth: 2em, tables.conjugation-bhasate())

=== Verbs Primarily Taking Middle Endings (#romanization[ātmanepada])
#table(
    columns: (6em, 1fr, 2fr),
    root([bhāṣ]), romanization([bhāṣate]), [he speaks],
    root([man]), romanization([manyate]), [he thinks],
    root([labh]), romanization([labhate]), [he obtains],
    root([sev]), romanization([sevate]), [he serves],
)

=== Verbs Regularly Taking Both Endings (#romanization[ubhayapada])
#table(
    columns: (6em, 1fr, 2fr),

    root([cint]), [#romanization([cintayati]) #romanization[-te]], [he thinks],
  )

=== The verb #root[as]

#indent(depth: 2em)[
  #tables.conjugation-asti()
]

Charts for pronouns are listed on pages
#ref(<tables:mad_asmad>, form: "page", supplement: none)-#ref(<tables:tad_feminine>, form: "page", supplement: none).

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

=== Neuter Nouns
#tables.declension-phalam

#columns(2)[
  #table(
    columns: (6em, 2fr),
    romanization([amṛtam]), [immortality],
    romanization([gṛham]), [house],
    romanization([jalam]), [water],
    romanization([jñānam]), [knowledge],
    romanization([duḥkham]), [suffering],
    romanization([pustakam]), [book],
    romanization([phalam]), [fruit],
    romanization([vanam]), [forest],
    romanization([śāstram]), [scripture],
    romanization([satyam]), [truth],
    romanization([sukham]), [happiness],
    romanization([sūktam]), [hymn],
  )
]

=== Adjectives
#table(
  columns: (6em, 2fr),

  romanization[kupita], [angry],
  romanization[dhārmika], [virtuous],
  romanization[bhīta], [afraid],
  romanization[sundara], [beautiful]
)


=== Indeclinables
#table(
  columns: (6em, 2fr),

  romanization([atīva]), [very],
  romanization([atra]), [here],
  romanization([api]), block(width: 105%)[also, too (placed after the word it is associated with)],
  romanization([aho]), [aha!, hey!],
  romanization([iti]), [end of quote],
  romanization([eva]), [only, ever],
  romanization([evam]), [thus, in this way],
  romanization([katham]), [how (used like #romanization[kutra])],
  romanization([kutra]), [where],
  romanization([ca]), [and],
  romanization([tatra]), [there],
  romanization([na]), [not],
  romanization([nāma]), block(width: 105%)[by name (placed after the word it is associated with)],
  romanization([vā]), [or],
  romanization([vinā]), [without],
  romanization([saha]), [with],
)
