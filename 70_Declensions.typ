#import "style.typ": *
#import "tables.typ"
#pagebreak(weak: true)

#show heading.where(level: 2): it => [
  #margin-heading(it.body)
  #v(0.5em)
]
#[
  #show heading.where(level: 1): it => {
    set text(
      size: 1.2*text-size,
      font: sans-font,
      weight: "semibold",
    )
    [#upper(it.body)]
  }

#heading(level: 1, outlined: true, [Tables])
]

#heading_lvl2[a][Masculine]#general_index[Noun declensions][Masculine a]<tables:masculine_a>

Stem: #romanization[nara] (masculine) man (given on #ref(<section:masculine_a>, form: "page"))

#declension_table(
  comment_below: [The instrumental singular for #romanization[gaja] is #romanization[gajena], and the genitive plural
    for #romanization[gaja] is #romanization[gajānām]. The #romanization[r] in #romanization[nareṇa] and
    #romanization[naraṇam] causes the #romanization[n] to become #romanization[ṇ]. (See #ref(
      <sandhi:n_to_ṇ_with_r>,
      form: "page",
    ).)],
  [Nom.],
  [नरः],
  [नरौ],
  [नराः],
  [Acc.],
  [नरम्],
  [नरौ],
  [नरान्],
  [Inst.],
  [नरेण~\*],
  [नराभ्याम्],
  [नरैः],
  [Dat.],
  [नराय],
  [नराभ्याम्],
  [नरेभ्यः],
  [Abl.],
  [नरात्],
  [नराभ्याम्],
  [नरेभ्यः],
  [Gen.],
  [नरस्य],
  [नरयोः],
  [नराणाम्~\*],
  [Loc.],
  [नरे],
  [नरयोः],
  [नरेषु],
  [Voc.],
  [नर],
  [नरौ],
  [नराः],
)

#pagebreak(weak: true)
#heading_lvl2[a][Neuter]#general_index[Noun declensions][Neuter a]<tables:neuter_a>

Stem: #romanization[phala] (neuter) fruit (given on #ref(<section:neuter_a>, form: "page"))

#declension_table(
  [Nom.],
  [फलम्],
  [फले],
  [फलानि],
  [Acc.],
  [फलम्],
  [फले],
  [फलानि],
  [Inst.],
  [फलेन],
  [फलाभ्याम्],
  [फलैः],
  [Dat.],
  [फलाय],
  [फलाभ्याम्],
  [फलेभ्यः],
  [Abl.],
  [फलात्],
  [फलाभ्याम्],
  [फलेभ्यः],
  [Gen.],
  [फलस्य],
  [फलयोः],
  [फलानाम्],
  [Loc.],
  [फले],
  [फलयोः],
  [फलेषु],
  [Voc.],
  [फल],
  [फले],
  [फलानि],
)

#pagebreak(weak: true)
#heading_lvl2[ā][Feminine]#general_index[Noun declensions][Feminine ā]<tables:feminine_ā>

Stem: #romanization[senā] (feminine) army (given on #ref(<section:feminine_ā>, form: "page"))

#declension_table(
  [Nom.],
  [सेना],
  [सेने],
  [सेनाः],
  [Acc.],
  [सेनाम्],
  [सेने],
  [सेनाः],
  [Inst.],
  [सेनया],
  [सेनाभ्याम्],
  [सेनाभिः],
  [Dat.],
  [सेनायै],
  [सेनाभ्याम्],
  [सेनाभ्यः],
  [Abl.],
  [सेनायाः],
  [सेनाभ्याम्],
  [सेनाभ्यः],
  [Gen.],
  [सेनायाः],
  [सेनयोः],
  [सेनानाम्],
  [Loc.],
  [सेनायाम्],
  [सेनयोः],
  [सेनासु],
  [Voc.],
  [सेने],
  [सेने],
  [सेनाः],
)

#pagebreak(weak: true)
#heading_lvl2(in-outline-as: [Masculine #romanization[i], feminine #romanization[i]])[i][Masculine\
  Feminine]#general_index[Noun declensions][Masculine i, feminine i]<tables:masculine_feminine_i>

Stem: #romanization[agni] (masculine) fire; #romanization[kīrti] (feminine) glory\
(given on #ref(<section:masculine_feminine_i>, form: "page"))

#block(width: 110%)[#declension_table(
  columns: (0.35fr, 1fr, .8fr, 1fr),
  [Nom.],
  [अग्निः],
  [अग्नी],
  [अग्नयः],
  [Acc.],
  [अग्निम्],
  [अग्नी],
  [अग्नीन् कीर्तीः],
  [Inst.],
  [अग्निना कीर्त्या],
  [अग्निभ्याम्],
  [अग्निभिः],
  [Dat.],
  [अग्नये कीर्त्यै],
  [अग्निभयाम्],
  [अग्निभ्यः],
  [Abl.],
  [अग्नेः कीर्त्याः],
  [आग्निभयाम्],
  [अग्निभ्यः],
  [Gen.],
  [अग्नेः कीर्त्याः],
  [अग्न्योः],
  [अग्नीनाम्],
  [Loc.],
  [अग्नौ कीर्त्याम्],
  [अग्न्योः],
  [अग्निषु],
  [Voc.],
  [अग्ने],
  [अग्नी],
  [अग्नयः],
)]

The singular dative, ablative, genitive, and locative have an optional feminine form. For example, the feminine dative
singular is #romanization[kīrtaye] or #romanization[kīrtyai]. The feminine instrumental singular is
#romanization[kīrtyā], and the feminine plural accusative is #romanization[kīrtīḥ] only.#sidenote[In the original: "The
  feminine instrumental singular is #romanization[kīrtyā]."]

#pagebreak(weak: true)
#heading_lvl2[ī][Feminine]#general_index[Noun declensions][Feminine ī]<tables:feminine_ī>

Stem: #romanization[nadī] (feminine) river (given on #ref(<section:feminine_ī>, form: "page"))

#declension_table(
  [Nom.],
  [नदी],
  [नद्यौ],
  [नद्यः],
  [Acc.],
  [नदीम्],
  [नद्यौ],
  [नदीः],
  [Inst.],
  [नद्या],
  [नदीभ्याम्],
  [नदीभिः],
  [Dat.],
  [नद्यै],
  [नदीभ्याम्],
  [नदीभ्यः],
  [Abl.],
  [नद्याः],
  [नदीभ्याम्],
  [नदीभ्यः],
  [Gen.],
  [नद्याः],
  [नद्योः],
  [नदीनाम्],
  [Loc.],
  [नद्याम्],
  [नद्योः],
  [नदीषु],
  [Voc.],
  [नदि],
  [नद्यौ],
  [नद्यः],
)

#pagebreak(weak: true)
#heading_lvl2[an][Masculine]#general_index[Noun declensions][Masculine an]<tables:masculine_an>

Stem: #romanization[rājan] (masculine) king; #romanization[ātman] (masculine) Self (given on #ref(
  <section:masculine_an>,
  form: "page",
).)

#declension_table(
  [Nom.],
  [राजा],
  [राजानौ],
  [राजानः],
  [Acc.],
  [राजानम्],
  [राजानौ],
  [राज्ञः आत्मनः],
  [Inst.],
  [राज्ञा आत्मना],
  [राजभ्याम्],
  [राजभिः],
  [Dat.],
  [राज्ञे आत्मने],
  [राजभ्याम्],
  [राजभ्यः],
  [Abl.],
  [राज्ञः आत्मनः],
  [राजभ्याम्],
  [राजभ्यः],
  [Gen.],
  [राज्ञः\ आत्मनः],
  [राज्ञोः\ आत्मनोः],
  [राज्ञाम् आत्मनाम्],
  [Loc.],
  [राज्ञि आत्मनि],
  [राज्ञोः आत्मनोः],
  [राजसु],
  [Voc.],
  [राजन्],
  [राजानौ],
  [राजानः],
)

#pagebreak(weak: true)
#heading_lvl2[an][Neuter]#general_index[Noun declensions][Neuter an]<tables:neuter_an>

Stem: #romanization[nāman] (neuter) name (given on #ref(<section:neuter_an>, form: "page").)

#declension_table(
  [Nom.],
  [नाम],
  [नाम्नी नामनी],
  [नामानि],
  [Acc.],
  [नाम],
  [नाम्नी नामनी],
  [नामानि],
  [Inst.],
  [नाम्ना],
  [नामभ्याम्],
  [नामभिः],
  [Dat.],
  [नाम्ने],
  [नामभ्याम्],
  [नामभ्यः],
  [Abl.],
  [नाम्नः],
  [नामभ्याम्],
  [नामभ्यः],
  [Gen.],
  [नाम्नः],
  [नाम्नोः],
  [नाम्नाम्],
  [Loc.],
  [नाम्नि नामनि],
  [नाम्नोः],
  [नामसु],
  [Voc.],
  [नामन् नाम],
  [नाम्नी नामनी],
  [नामानि],
)

#pagebreak(weak: true)
#heading_lvl2(
  in-outline-as: [Masculine #romanization[ṛ], feminine #romanization[ṛ]],
)[ṛ][Masculine\ Feminine]#general_index[Noun declensions][Masculine ṛ, feminine ṛ]<tables:masculine_feminine_ṛ>

Stem: #romanization[dātṛ] (masculine) giver; #romanization[svasṛ] (feminine) sister (given on #ref(
  <section:masculine_feminine_ṛ>,
  form: "page",
).)

#declension_table(
  columns: (10%, 20%, 25%, 45%),
  [Nom.],
  [दाता],
  [दातारौ],
  [दातारः],
  [Acc.],
  [दातारम्],
  [दातारौ],
  [दातॄन् ~ स्वसॄः],
  [Inst.],
  [दात्रा],
  [दातृभ्याम्],
  [दातृभिः],
  [Dat.],
  [दात्रे],
  [दातृभ्याम्],
  [दातृभ्यः],
  [Abl.],
  [दातुः],
  [दातृभ्याम्],
  [दातृभ्यः],
  [Gen.],
  [दातूः],
  [दात्रोः],
  [दातॄनाम्],
  [Loc.],
  [दातरि],
  [दात्रोः],
  [दातृषु],
  [Voc.],
  [दातर्],
  [दातारौ],
  [दातारः],
)

Stem: #romanization[pitṛ] (masculine) father; #romanization[mātṛ] (feminine) mother; #romanization[bhrātṛ] (masculine)
brother


#declension_table(
  function: romanization,
  header: (),
  row-gutter: 1.5em,
  columns: (10%, 20%, 20%, 50%),
  comment_below: [
    These nouns follow #romanization[dātṛ] in all other cases.
  ],
  [Nom.],
  [pitā],
  [pitarau],
  [pitaraḥ],
  [Acc.],
  [pitaram],
  [pitarau],
  [pitṝ /mātṝḥ / bhrātṝn],
)

#pagebreak(weak: true)
#heading_lvl2(in-outline-as: [Masculine #romanization[u], feminine #romanization[u]])[u][Masculine\
  Feminine]#general_index[Noun declensions][Masculine u, feminine u]<tables:masculine_feminine_u>

Stem: #romanization[hetu] (masculine) cause #romanization[dhenu] (feminine) cow (given on #ref(<section:masculine_feminine_u>, form: "page").)

#declension_table(
  [Nom.],
  [हेतुः],
  [हेतू],
  [हेतवः],
  [Acc.],
  [हेतुम्],
  [हेतू],
  [हेतून् ~ धेनूः],
  [Inst.],
  [हेतुना ~ धेन्वा],
  [हेतुभ्याम्],
  [हेतुभिः],
  [Dat.],
  [हेतवे ~ धेन्वै],
  [हेतुभ्याम्],
  [हेतुभ्यः],
  [Abl.],
  [हेतोः ~ धेन्वाः],
  [हेतुभ्याम्],
  [हेतुभ्यः],
  [Gen.],
  [हेतोः ~ धेन्वाः],
  [हेत्वोः],
  [हेतूनाम्],
  [Loc.],
  [हेतौ ~ धेन्वाम्],
  [हेत्वोः],
  [हेतुषु],
  [Voc.],
  [हेतो],
  [हेतू],
  [हेतवः],
)


The singular dative, ablative, genitive, and locative have an optional feminine form. For example, the feminine dative
singular is #romanization[dhenave] or #romanization[dhenvai].


#pagebreak(weak: true)

#heading_lvl2(in-outline-as: [Pronouns])[mad\ asmad][]#general_index[Pronoun declensions][I, we]<tables:mad_asmad>

Stem: #romanization[mad] (singular) I; #romanization[asmad] (plural) we (given on #ref(
  <section:mad_asmad>,
  form: "page",
))
#[
  #let sp = sym.space
  #set par(leading: 1em)
  #declension_table(
    columns: (13%, 20%, 30%, 30%),
    align: 4 * (left,),
    [Nom.\ #box(width: 5em)[I, we]],
    [अहम्],
    [आवाम्],
    [वजम्],
    [Acc.\ #box(width: 5em)[me, us]],
    [माम#sp मा],
    [आवाम्#sp नौ],
    [अस्मान्#sp नः],
    [Inst.\ #box(width: 5em)[with me, us]],
    [मया],
    [आवाभ्याम्],
    [अस्माभिः],
    [Dat.\ #box(width: 5em)[for me, us]],
    [मह्यम्#sp ते],
    [आवाभ्याम्#sp नौ],
    [अस्मभ्यम्#sp नः],
    [Abl.\ #box(width: 5em)[from me, us]],
    [मत्],
    [आवाभ्याम्],
    [अस्मत्],
    [Gen.\ #box(width: 5em)[my, our]],
    [मम#sp ते],
    [आवयोः#sp नौ],
    [अस्माकम्#sp नः],
    [Loc.\ #box(width: 5em)[on me, us]],
    [मयि],
    [आवयोः],
    [अस्मासु],
    // [Voc.],      [],        [],           [],
  )
]

#pagebreak(weak: true)
#heading_lvl2(outlined: false)[tvad\ yuṣmad][]#general_index[Pronoun declensions][you]<tables:tvad_yuṣmad>

Stem: #romanization[tvad] (singular) you; #romanization[yuṣmad] (plural) you (given on #ref(
  <section:tvad_yuṣmad>,
  form: "page",
))
#[
  #let sp = sym.space
  #set par(leading: 1em)
  #declension_table(
    columns: (13%, 22%, 30%, 28%),
    align: 4 * (left,),
    [Nom.\ #box(width: 6em)[you (subject)]],
    [त्वम्],
    [युवाम्],
    [यूयम्],
    [Acc.\ #box(width: 5em)[you (object)]],
    [त्वाम्#sp त्वा],
    [युवाम्#sp वाम्],
    [युष्मान्#sp वः],
    [Inst.\ #box(width: 5em)[with you]],
    [त्वया],
    [युवाभ्याम्],
    [युष्माभिः],
    [Dat.\ #box(width: 5em)[for you]],
    [तुभ्यम्#sp ते],
    [युवाभ्याम्#sp वाम्],
    [युष्मभ्यः#sp वः],
    [Abl.\ #box(width: 5em)[from you]],
    [त्वत्],
    [युवाभ्याम्],
    [सुष्मत्],
    [Gen.\ #box(width: 5em)[of you, your]],
    [तव#sp ते],
    [युवयोः#sp वाम्],
    [युष्माकम्#sp वः],
    [Loc.\ #box(width: 5em)[on you]],
    [त्वयि],
    [युवयोः],
    [युष्मसु],
    // [Voc.],      [],        [],           [],
  )
]

#pagebreak(weak: true)
#heading_lvl2(outlined: false)[tad][masculine]#general_index[Pronoun declensions][he]<tables:tad_masculine>

Stem: #romanization[tad] (masculine) he (given on #ref(<section:masculine_tad>, form: "page"))

#[
  #let sp = sym.space
  #set par(leading: 1em)
  #declension_table(
    columns: (23%, 1fr, 1.25fr, 1fr),
    align: 4 * (left,),
    [Nom.\ #box(width: 6em)[he, they]],
    [सः],
    [तौ],
    [ते],
    [Acc.\ #box(width: 6em)[him, them]],
    [तम्],
    [तौ],
    [तान्],
    [Inst.\ #box(width: 7em)[with him, them]],
    [तेन],
    [ताभ्याम्],
    [तैः],
    [Dat.\ #box(width: 6em)[for him, them]],
    [तस्मै],
    [ताभ्याम्],
    [तेभ्यः],
    [Abl.\ #box(width: 7em)[from him, them]],
    [तस्मात्],
    [ताभ्याम्],
    [तेभ्यः],
    [Gen.\ #box(width: 6em)[his, their]],
    [तस्य],
    [तयोः],
    [तेषाम्],
    [Loc.\ #box(width: 6em)[on him, them]],
    [तस्मिन्],
    [तयोः],
    [तेषु],
    // [Voc.\ #box(width: 6em)[]],      [],        [],           [],
  )
]
Remember that #romanization[saḥ], the nominative singular, usually appears as #romanization[sa]. (See point 5 on #ref(
  <section:sandhi_saḥ>,
  form: "page",
))


#pagebreak(weak: true)
#heading_lvl2(outlined: false)[tad][neuter]#general_index[Pronoun declensions][it]<tables:tad_neuter>

Stem: #romanization[tad] (neuter) it (given on #ref(<section:neuter_tad>, form: "page"))

#declension_table(
  columns: (20%, 25%, 25%, 25%),
  [Nom.\ it (subject)],
  [तत्],
  [ते],
  [तानि],
  [Acc.\ it (object)],
  [तत्],
  [ते],
  [तानि],
  [Inst.\ with it],
  [तेन],
  [ताभ्याम्],
  [तौः],
  [Dat.\ for it],
  [तस्मै],
  [ताभ्याम्],
  [तेभ्यः],
  [Abl.\ from it],
  [तस्मत्],
  [ताभ्याम्],
  [तेभ्यः],
  [Gen.\ of it, its],
  [तस्य],
  [तयोः],
  [तेषाम्],
  [Loc.\ on it],
  [तस्मिन्],
  [तयोः],
  [तेषु],
  // [Voc.],
  // [],
  // [],
  // [],
)

#pagebreak(weak: true)
#heading_lvl2(outlined: false)[tad][feminine]#general_index[Pronoun declensions][she]<tables:tad_feminine>

Stem: #romanization[tad] (feminine) she; (given on #ref(<section:feminine_tad>, form: "page"))

#declension_table(
  [Nom.],
  [सा],
  [ते],
  [ताः],
  [Acc.],
  [ताम्],
  [ते],
  [ताः],
  [Inst.],
  [तया],
  [ताभ्याम्],
  [ताभिः],
  [Dat.],
  [तस्यै],
  [ताभ्याम्],
  [ताभ्यः],
  [Abl.],
  [तस्याः],
  [ताभ्याम्],
  [ताभ्यः],
  [Gen.],
  [तस्याः],
  [तयोः],
  [तासाम्],
  [Loc.],
  [तस्याम्],
  [तयोः],
  [तासु],
  // [Voc.],
  // [],
  // [],
  // [],
)
