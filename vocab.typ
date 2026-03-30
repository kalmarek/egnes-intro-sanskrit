#import "style.typ": romanization, root, sanskrit

#let generic(term, label: []) = {
  romanization(term) + if label != [] and label != none {
    [ (#label)]
  } else {
    []
  }
}

#let indeclinable(term, label: [ind.]) = generic(term, label: label)

#let masculine(term, label : [mas.]) = generic(term, label: label)
#let neuter(term, label: [n.]) = generic(term, label: label)
#let feminine(term, label: [fem.]) = generic(term, label: label)

#let pronoun(term, label: [pro.]) = generic(term, label: label)

#let prefix(term, label: [prefix]) = generic(term, label: label)

#let adjective(term, femdecl, alt: none, label: [adj.]) = {
  if femdecl == [] {
    generic(term, label: label)
  } else if alt == none {
    [#romanization(term) mf(#romanization(femdecl))n (#label)]
  } else {
    [#romanization(term) mf(#romanization(femdecl) or #romanization(alt))n (#label)]
  }
}

#let verb(label: [root], rt, form) = [#generic(root[#rt], label: label) #romanization[#form]]
#let verb_prefix(prefix, rt, form, label: [root]) = [#romanization[#prefix] + #verb(rt, form, label: label)]

#let list(columns: 3, row-gutter: 3em, ..content) = {
  if type(row-gutter) == array {
        row-gutter = row-gutter
      } else {
        row-gutter = (2/3*row-gutter, row-gutter)
      }
  if columns == 2 {
    set table(
      columns: (1fr, 0.7fr),
      row-gutter: row-gutter,
      column-gutter: 0.5em,
    )
    show table.cell: it => {
      if it.y == 0 {
        smallcaps(it)
      } else {
        it
      }
    }
    table(
      table.header([Sanskrit], [English]),
      ..content
    )
  } else if columns == 3 {
    set table(
      columns: (0.5fr, 1.4fr, 1.3fr),
      column-gutter: 1em,
      row-gutter: row-gutter,
    )
    show table.cell: it =>{
      if it.y == 0 {
        smallcaps(it)
      } else {
        if it.x == 0 {
          sanskrit(it)
        } else if it.x == 1 {
          it
        } else {
          it
        }
      }
    }
    table(
      table.header(
        table.cell(colspan: 2, [Sanskrit]),
        [English]
      ),
      ..content
    )

  } else {
    panic("vocabulary: columns must be 2 or 3")
  }


  }


