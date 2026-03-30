#import "@preview/in-dexter:0.7.2"
#import "style.typ"

#let devanagari-sort-order(entry) = {
  // Phoneme → 3-digit sort token (000–999).
  // Process longest matches first to handle digraphs (kh, gh, ai, au, etc.)
  let table = (
    // Vowels
    ("au", "009"), ("ai", "007"), ("ā",  "001"), ("ī",  "003"),
    ("ū",  "005"), ("a",  "000"), ("i",  "002"), ("u",  "004"),
    ("e",  "006"), ("o",  "008"),
    // Velar stops
    ("kh", "011"), ("gh", "013"), ("ṅ",  "014"), ("k",  "010"), ("g",  "012"),
    // Palatal stops
    ("ch", "016"), ("jh", "018"), ("ñ",  "019"), ("c",  "015"), ("j",  "017"),
    // Retroflex stops
    ("ṭh", "021"), ("ḍh", "023"), ("ṇ",  "024"), ("ṭ",  "020"), ("ḍ",  "022"),
    // Dental stops
    ("th", "026"), ("dh", "028"), ("t",  "025"), ("d",  "027"), ("n",  "029"),
    // Labial stops
    ("ph", "031"), ("bh", "033"), ("p",  "030"), ("b",  "032"), ("m",  "034"),
    // Semivowels
    ("y",  "035"), ("r",  "036"), ("l",  "037"), ("v",  "038"),
    // Sibilants & h
    ("ś",  "039"), ("ṣ",  "040"), ("s",  "041"), ("h",  "042"),
    // Vedic ḷ
    ("ḷ",  "043"),
  )

  let s = lower(entry)
  let result = ""
  let i = 0
  let chars = s.clusters()  // grapheme clusters, important for diacritics
  let n = chars.len()

  while i < n {
    // Try to match a phoneme at position i (try longer ones first)
    let matched = false
    for (phoneme, token) in table {
      let plen = phoneme.clusters().len()
      if i + plen <= n {
        let candidate = chars.slice(i, i + plen).join()
        if candidate == phoneme {
          result = result + token
          i = i + plen
          matched = true
          break
        }
      }
    }
    if not matched {
      // Unknown character: use it literally (sorts after known phonemes
      // since our tokens are all digits and letters sort after digits in ASCII,
      // or just append it raw — it will sort consistently)
      result = result + chars.at(i)
      i = i + 1
    }
  }

  result
}

#pagebreak()
#[
  #show heading.where(level: 1): it => {}
  #heading(outlined: true, level: 1)[
    Index of Grammatical Terms
  ]
  == Index~of Grammatical Terms
]
#in-dexter.make-index(
  indexes: ("grammar",),
  use-page-counter: true,
  section-title: (_, _) => {},
  sort-order: devanagari-sort-order,
  surround: body => {
    set par(
      first-line-indent: 0pt,
      spacing: 1.1 * style.par-leading,
      hanging-indent: 2em,
    )
    body
  },
)

#pagebreak()
#[
  #show heading.where(level: 1): it => {}
  #heading(outlined: true, level: 1)[
    General Index
  ]
  == General Index
]

#in-dexter.make-index(
  indexes: ("general",),
  use-page-counter: true,
  section-title: (_, _) => {},
  surround: body => {
    set par(
      first-line-indent: 0pt,
      spacing: 0.9 * style.par-leading,
      hanging-indent: 1em,
    )
    body
  },
)
