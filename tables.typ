#import "style.typ": *

#let conjugation-table(
  columns: (4em, auto, auto, auto),
  align: (left, left, left, left),
  // column-gutter: 2em,
  header: true,
  header-text: ([Singular], [Dual], [Plural]),
  function: x => x,
  ..content,
) = {
  show table.cell: it => {
    if it.y == 0 {
      smallcaps(it)
    } else if it.x == 0 {
      it
    } else {
      function(it)
    }
  }
  table(
    columns: columns,
    align: align,
    // column-gutter: column-gutter,
    if header {
      table.header([], ..header-text)
    },
    ..content
  )
}


#let conjugation-gacchati = conjugation-table.with(
  [Third],
  [#romanization[gacchati]\ (he, she goes)],
  [#romanization[gacchataḥ]\ (they two go)],
  [#romanization[gacchanti]\ (they all go)],

  [Second],
  [#romanization[gacchasi]\ (you go)],
  [#romanization[gacchathaḥ] \ (you two go)],
  [#romanization[gacchatha] \ (you all go)],

  [First],
  [#romanization[gacchāmi]\ (I go)],
  [#romanization[gacchāvaḥ]\ (we two go)],
  [#romanization[gacchāmaḥ]\ (we all go)],
)

#let conjugation-bhasate = conjugation-table.with(
  [Third],
  [#romanization[bhāṣate]\ (he, speaks)],
  [#romanization[bhāṣete]\ (they two speak)],
  [#romanization[bhāṣante]\ (they all speak)],

  [Second],
  [#romanization[bhāṣase]\ (you speak)],
  [#romanization[bhāṣethe] \ (you two speak)],
  [#romanization[bhāṣadhve] \ (you all speak)],

  [First],
  [#romanization[bhāṣe]\ (I speak)],
  [#romanization[bhāṣāvahe]\ (we two go)],
  [#romanization[bhāṣāmahe]\ (we all speak)],
)
#let conjugation-asti = conjugation-table.with(
  function: romanization,
  [Third],
  [asti],
  [staḥ],
  [santi],
  [Second],
  [asi],
  [sthaḥ],
  [stha],
  [First],
  [asmi],
  [svaḥ],
  [smaḥ],
)

#let conjugation(verb, ..content) = {
  block(
    breakable: false,
  )[
    #verb
    #conjugation-table.with(
      function: sanskrit,
      row-gutter: (2em, 3em),
      columns: (3em, 6em, 6em, 6em),
      ..content
    )()
  ]
}


#let declension-narah = [
  #let ro(term) = romanization(term)
  #set par(leading: 0.5em)
  #declension_table(
    columns: (6em, .8fr, 1fr, 1fr),
    function: romanization,
    row-gutter: (0.9em, 1.2em),
    fill: luma(240),
    comment_below: [#romanization[gajena], #romanization[gajānām] (See #ref(<sandhi:n_to_ṇ_with_r>, form: "page").)],
    [Nominative\ (subject)],
    [naraḥ],
    [narau],
    [narāḥ],
    [Accusative\ (object)],
    [naram],
    [narau],
    [narān],
    [Instrumental\ (with)],
    [nareṇa\*],
    [narābhyām],
    [naraiḥ],
    [Dative\ (for)],
    [narāya],
    [narābhyām],
    [narebhyaḥ],
    [Ablative\ (from)],
    [narāt],
    [narābhyām],
    [narebhyaḥ],
    [Genitive\ (of, 's)],
    [narasya],
    [narayoḥ],
    [narāṇām\*],
    [Locative\ (in, on)],
    [nare],
    [narayoḥ],
    [nareṣu],
    [Vocative\ (O)],
    [nara],
    [narau],
    [narāḥ],
  )
]

#let declension-phalam = [
  #let ro(term) = romanization(term)
  #set par(leading: 0.5em)
  #declension_table(
    columns: (6em, .8fr, 1fr, 1fr),
    align: (left, left + horizon, left + horizon, left + horizon),
    function: romanization,
    row-gutter: (.9em, 1.2em),
    fill: luma(240),
    comment_below: [#romanization[śāstrāṇi], #romanization[śāstreṇa], #romanization[śāstrāṇām]],
    [Nominative\ (subject)],
    [phalam],
    [phale],
    [phalāni\*],
    [Accusative\ (object)],
    [phalam],
    [phale],
    [phalāni\*],
    [Instrumental\ (with)],
    [phalena\*],
    [phalābhyām],
    [phalaiḥ],
    [Dative\ (for)],
    [phalāya],
    [phalābhyām],
    [phalebhyaḥ],
    [Ablative\ (from)],
    [phalāt],
    [phalābhyām],
    [phalebhyaḥ],
    [Genitive\ (of, 's)],
    [phalasya],
    [phalayoḥ],
    [phalānām\*],
    [Locative\ (in, on)],
    [phale],
    [phalayoḥ],
    [phaleṣu],
    [Vocative\ (O)],
    [phala],
    [phale],
    [phalāni\*],
  )
]
