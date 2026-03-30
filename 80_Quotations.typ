#import "style.typ": *

#pagebreak(weak: true)
#[
  #show heading.where(level: 1): it => {}
  #heading(outlined: true, level: 1)[Sanskrit Quotations]<section:Sanskrit_Quotations>
  == Sanskrit Quotations
]

#let quotation(
  source-indent: 30%,
  source: [],
  verse: [],
  text-sa,
  text-ro,
  literal,
  translation
) = {

  block(breakable: false, below: 2em)[
  #set par(spacing: 1.4em)
  #par(leading: 2.5em, text(size: 1.1em, sanskrit(text-sa)))
  #[
    #romanization(text-ro)
    #if literal != [] {
      linebreak() + literal
    }
  ]
  #if translation != [] {
    par(translation)
  }

  #h(source-indent)
  #box(
    width: 100% - source-indent,
    [#romanization(source) #verse]
    )
  ]
}

#quotation(
  source: [Ṛk Saṃhitā],
  verse: [1.164.39])[
    ऋचो अक्षरे परमे व्योमन्\
    यस्मिन्देवा अधि विश्वे निषेदुः\
    यस्तन्न वेद किमृचा करिष्यति\
    य इत्तद्विदुस्त इमे समासते
  ][
    ṛco akṣare parame vyoman\
    yasmin devā adhi viśve niṣeduḥ\
    yas tan na veda kim ṛcā kariṣyati\
    ya it tad vidus ta ime samāste
  ][][]

#[
  #set par(hanging-indent: 1.5em, spacing: 1em)
The verses of the Veda exist in the collapse of fullness (the kṣara of~'A') in the transcendental field, the Self,

In which reside all the devas, the impulses of creative intelligence, the laws of nature responsible for the whole manifest universe.

He whose awareness is not open to this field, what can the verses accomplish for him?

Those who know this level of reality are established in evenness, wholeness of life.
#note(numbering: none, alignment: "bottom")[Observe the translation of H.H. Wilson (1866):

_All the gods have taken their seats upon this supreme heaven, the imperishable (text) of the Veda; what will he, who knows not this do with the Veda? but they who do know it, they are perfect._
]
]
// word-by-word translation
#let wbw2(
  text-ro,
  translation,
  width: auto,
  ) = {
    box(width: width)[
      #set par(leading: 0.75em)
      #romanization[#text-ro]\
      #small[#translation]
    ]
  }

#table(columns: 3,
  row-gutter: 2em,
  wbw2[ṛco][verses],
  wbw2[akṣare][in the collapse of fullness],
  [
    #wbw2[parame][in the transcendental]#h(1em)
    #wbw2[vyoman][field]
  ],

  wbw2[yasmin][in which],
  wbw2[devā][impulses (laws of nature)],
  [#wbw2[adhi viśve][responsible for the universe]#h(.8em)
   #wbw2[niṣeduḥ][reside]],

  wbw2[yas][who],
  [#wbw2[tan][this (field)]#h(1em)
  #wbw2[na veda][not know]],
  [#wbw2[kim][what]#h(1em)
  #wbw2[ṛcā][verses]#h(1em)
  #wbw2[kariṣyati][will accomplish]
  ],

  wbw2[ya][who],
  [#wbw2[it tad][this (level)]#h(1em)
  #wbw2[vidus][know]],
  [#wbw2[ta ime][they]#h(1em)
  #wbw2[samāsate][in evenness established]
  ]
)


#pagebreak()

+ #quotation(source: [Bhagavad-Gītā], verse: [2.45])[निस्त्रैगुण्यो भवार्जुन][nistraiguṇyo bhavārjuna][without three #romanization[guṇas] be, O Arjuna][Be without the three guṇas, O Arjuna.]

+ #quotation(source: [Bhagavad-Gītā], verse: [2.48])[योगस्थः कुरु कर्माणि][yogasthaḥ kuru karmaṇi][yoga established perform actions][Established in Yoga perform actions.]

+ #quotation(source: [Bhagavad-Gītā], verse: [9.8])[प्रकृतिं स्वामवष्टभ्य विसृजामि पुनः पुनः][prakṛtiṃ svām avaṣṭabhya visṛjāmi punaḥ punaḥ][nature own taking recourse I create again again][Taking recourse to my own nature, I create again and again.]

+ #quotation(source: [Bhagavad-Gītā], verse: [9.10])[मयाध्यक्षेण प्रकृतिः सूयते सचराचरम्][mayādhyakṣeṇa prakṛtiḥ sūyate sacarācaram][by my presidentship nature creates moving unmoving][Under my presidentship my nature creates all creation.]

#pagebreak(weak: true)
== #romanization[Mahāvākyas] Great~Sayings

#[#set enum(indent: -1.7em, spacing: 2.5em)
+ #quotation(
  source: [Bṛhadāraṇyaka Upaniṣad],
  verse: [1.4.10]
  )[अहं ब्रह्मास्मि][ahaṃ brahmāsmi][I totality am][I am Totality.]

+ #quotation(
  source: [Chāndogya Upaniṣad],
  verse: [6.11]
  )[तत्त्वमसि][tat tvam asi][that thou art][Thou art that.]

+ #quotation(
  source: [Chāndogya Upaniṣad],
  verse: [3.14.1]
  )[सर्वं खल्विदं ब्रह्म][sarvaṃ khalv idaṃ brahma][all (emphatic) this (is) Brahman][All this is Totality.]

+ #quotation(
  source: [Aitareya Upaniṣad],
  verse: [3.14.1]
  )[प्रज्ञानं ब्रह्म][prajñānaṃ brahma][][
    Fully awake self-referral dynamism (of the universe) born of the infinite organizing power of pure knowledge, the Veda---fully awake totality of the individual consciousness is _Brahman_, which comprehends the infinite dynamism of the universe in the infinite silence of the Self.
  ]

+ #quotation(
  source: [Iśa Upaniṣad],
  verse: [(introductory verse for #romanization[Upaniṣads] of the #romanization[Śukla Yajur-Veda])]
  )[पूर्णमदः पूर्णमिदं पूर्णात्पूर्णमुदच्यते\ पूर्णस्य पूर्णमादाय पूर्णमेवावशिष्यते][pūrṇam adaḥ pūrṇam idaṃ pūrṇāt pūrṇam udacyate\ pūrṇasya pūrṇam ādāya pūrṇam evāvaśiṣyate][][]

  #v(1em)
  #par(justify: true, leading: 2em)[
  #wbw2[pūrṇam][full (is)]
  #wbw2[adaḥ][that]
  #wbw2[pūrṇam][full (is)]
  #wbw2[idaṃ][this]
  #wbw2[pūrṇāt][from fullness]
  #wbw2[pūrṇam][fullness]
  #wbw2[udacyate][comes out]
  #wbw2[pūrṇasya][of fullness]
  #wbw2[pūrṇam][fullness]
  #wbw2[ādāya][taking]
  #wbw2[pūrṇam][fullness]
  #wbw2[evāvaśiṣyate][remains]
  ]

  #par(leading: 2em)[
  That is full; this is full; From fullness fullness comes out.\
  Taking fullness from fullness, what remains is fullness.
  ]

+ #quotation(
    source: [Mahā Upaniṣad],
    verse: [6.71],
  )[वसुधैव कुटुम्बकम्][vasudhaiva kuṭumbakam][the world family][The world is my family.]

+ #quotation(
    source: [Taittirīya Upaniṣad],
    verse: [3.10],
  )[अहं विश्वम्][ahaṃ viśvam][][My universe is my Self.]

+ #quotation(
    source: [Yoga Sūtra],
    verse: [2.16],
  )[हेयं दुःखमनाहतम्][heyaṃ duḥkham anāgatam][avert danger not yet come][Avert the danger which has not yet come.]

+ #quotation(
    source: [Taittirīya Upaniṣad],
    verse: [2.6.1],
)[तत्सृष्ट्वा तदेवानुप्राविशत्][tat sṛṣṭvā tad evānuprāviśat][it having created it entered into][The Creator, having created the creation, entered into it.]

+ #quotation(
    source: [Śaṅkara, Bhaja Govindam],
    verse: [20]
  )[भगवद्गीता किञ्चिदधीता\ गङ्गाजललवकणिका पीता][bhagavad-gītā kiñcid adhītā\ gaṅgā-jalala-kaṇikā pītā][#romanization[Bhagavad-Gītā] a little studied\ Ganges-water-drop-particle drank\ ][Even a little study of the #romanization[Bhagavad-Gītā],\ like a drop of the flow of nectar, is sufficient.]

+ #quotation(
    source: [Upaniṣads],
    verse: [(introductory verse for #romanization[Upaniṣads] of the #romanization[Kṛṣṇa Yajur-Veda])],
    )[
      सह नाववतु\
      सह नौ भुनक्तु\
      सह वीर्यं करवावहै\
      तेजस्वि नावधीतमस्तु\
      मा विद्विषावहै][
      saha nāv avatu\
      saha nau bhunaktu\
      saha vīryaṃ karavāvhai\
      tejasvi nāv adhītam astu\
      mā vidviṣāvhai
    ][][]

    Let us be together,

    Let us eat together,

    Let us be vital together,

    Let us be radiating truth,\
    #box(inset: (left: 1em))[radiating the light of life,]

    Never shall we denounce anyone,\
    #box(inset: (left: 1em))[never entertain negativity.]

+ #quotation(
    source: [Manu Smṛti],
    verse: [4.138],
  )[सत्यं ब्रूयात्प्रियं ब्रूयात्][satyaṃ brūyāt priyaṃ brūyāt][truth speak sweetness speak][Speak the sweet truth.]

+ #quotation(
    source: [Muṇḍaka Upaniṣad],
    verse: [3.2.9],
  )[
    ब्रह्मावित् ब्रह्मैव भवति
  ][
    brahmāvit brahmaiva bhavati
  ][
    Brahman knower Brahman is
  ][
    Tha knower of Brahman is Brahman itself.
  ]

+ #quotation(
    source: [Bṛhadāraṇyaka Upaniṣad],
    verse: [1.4.2],
  )[द्वितीयाद्वै भयं भवति][
    dvitīyād vai bhayaṃ bhavati
  ][
    from duality certainly fear is
  ][
    Certainly fear is born of duality.
  ]

+ #quotation(
    source: [Ṛk Saṃhitā],
    verse: [5.44.14],
  )[यो जागार तमृचः कामयन्ते][
    yo jāgāra tam ṛcaḥ kāmayante
  ][
    who is awake him hymns seek out
  ][
    He who is awake, the ṛcas seek him out.
  ]

+ #quotation(
    source: [Ṛk Saṃhitā],
    verse: [10.19.1],
  )[निवर्तध्वम्][nivartadhvam][][Return.]

+ #quotation(
    source: [Ṛk Saṃhitā],
    verse: [1.158.6],
  )[यतीनां ब्रह्मा भवति सारथिः][
    yatīnāṃ brahmā bhavati sārathiḥ
  ][][
    For those who are established in self-referral consciousness, Brahmā, the Creator, becomes the charioteer of all activity.
  ]

+ #quotation(
    source: [Nṛsiṃhottaratāpanīya Upaniṣad],
    verse: [7],
  )[आतमैवेदं सर्वम्][ātmaivedaṃ sarvam][][
    Ātmā is all that there is.
  ]

+ #quotation(
    source: [Chāndogya Upaniṣad],
    verse: [6.2.1],
  )[एकमेवाद्वितीयम्][ekam evādvitīyam][one no second][
    One reality without a second.
  ]

+ #quotation(
    source: [Kaṭha Upaniṣad],
    verse: [1.2.20],
  )[
    अणोरणीयान्महतोमहीयान्
  ][
    aṇoraṇīyān mahatomahīyān
  ][
    than small smaller than large larger
  ][
    Smaller than the smallest, larger than the largest.
  ]

+ #quotation(
    source: [Yoga Sūtra],
    verse: [2.35],
  )[तत्सन्निधौ वैरत्यागः][tat-sannidhau vaira-tyāgaḥ][
    that-vicinity hostile tendencies-eliminated
  ][
    In the vicinity of Yoga, hostile tendencies are eliminated.
  ]

+ #quotation(
    source: [Muṇḍaka Upaniṣad],
    verse: [3.1.6],
  )[सत्यमेव जयते][satyam eva jyate][][Truth alone triumphs.]

+ #block(breakable:false)[#quotation(
    source: [Bṛhadāraṇyaka Upaniṣad],
    verse: [1.3.28],
  )[
    असतो मा सद्गमय\
    तमसो मा ज्योतिर्गमय\
    मृत्योर्मा अमृतं गमय
  ][
    asato mā sad gamaya\
    tamaso mā jyotir gamaya\
    mṛtyor mā amṛtaṃ gamaya
  ][][ ]

    From non-existence lead me to existence,\
    From darkness lead me to light,\
    From death lead me to immortality.

  #table(
    columns: 4,

  wbw2[asato][from non-existence],
  wbw2[mā][me],
  wbw2[sad][existence],
  wbw2[gamaya][lead],

  wbw2[tamaso][from darkness],
  wbw2[mā][me],
  wbw2[jyotir][light],
  wbw2[gamaya][lead],

  wbw2[mṛtyor][from death],
  wbw2[mā][me],
  wbw2[amṛtaṃ][immortality],
  wbw2[gamaya][lead]
  )
]

+ #quotation(
    source: [Caraka Saṃhitā, Sūtrasthāna],
    verse: [25.40],
  )[आयुर्वेदो अमृतानाम्][āyur-vedo amṛtānām][][
    Knowledge of lifespan truly belongs to the custodians of immortality.
  ]

+ #quotation(
    source: [Muktikā Upaniṣad],
    verse: [1.9],
  )[
    तिलेषु तैलवद्वेदे वेदान्तः सुप्रतिष्ठितः
  ][
    tileṣu tailavad vede vedāntaḥ supratiṣṭhataḥ
  ][
    in a sesame seed oil-like in Veda Vedānta is established
  ][
    #box(width: 110%)[As oil is present in a sesame seed, so is Vedānta present in the Veda.]
  ]

+ #quotation(
    source: [Māṇḍūkya Upaniṣad],
    verse: [7],
  )[अयमात्मा ब्रह्म][ayamātmā brahma][][This Ātmā is Brahman.]

+ #quotation(
    source: [Bhagavad-Gītā],
    verse: [7.4],
  )[
    भूमिरापोऽनलो वायुः\
    खं मनो बुद्धिरेव च\
    अहंकार इतीयं मे\
    भिन्ना प्रकृतिरष्टधा
  ][
    bhūmir āpo 'nalo vāyuḥ\
    khaṃ mano buddhir eva ca\
    ahaṃkāra itīyaṃ me\
    bhinnā prakṛtir aṣṭadhā
  ][][
    Earth, water, fire, air,\
    space, mind, intellect and\
    ego: Thus is my\
    prakṛti divided eightfold.
  ]

+ #quotation(
    source: [Śvetāśvatara Upaniṣad],
    verse: [2.5],
  )[अमृतस्य पुत्राः][amṛtasya putrāḥ][of immortality O sons][O sons of immortality.]

+ #quotation(
    source: [Bhagavad-Gītā],
    verse: [4.38],
  )[
    तत्स्वयं योगसंसिद्धः कालेनात्मनि विन्दति
  ][
    tat svayaṃ yoga-saṃsiddhaḥ kālenātmani vindati
  ][
    this himself yoga-perfected with time in himself finds
  ][
    He who is perfected in Yoga, of himself in time finds this within himself.
  ]
+ #quotation(
    source: [Bhagavad-Gītā],
    verse: [2.48],
  )[समत्वं योग उच्यते][samatvaṃ yoga ucyate][balance yoga is called][Balance of mind is called Yoga.]

+ #quotation(
    source: [Brahma Sūtra],
    verse: [1.2.9],
  )[अत्ता चराचरग्रहणात्][attā carācara-grahaṇāt][
    devourer movable-immovable-from taking in
  ][
    Brahman is the devourer of all diversity.
  ]

+ #quotation(
    source: [Manu Smṛti],
    verse: [2.6],
  )[वेदो अखिलो धर्ममूलम्][vedo akhilo dharma-mūlam][][Veda is the root of all laws.]

+ #quotation(
    source: [Chāndogya Upaniṣad],
    verse: [7.23],
    )[यो वै भूमा तत्सुखं नाल्पे सुखमस्ति][yo vai bhūmā tat sukhaṃ nālpe sukham asti][which unbounded that happy not small joy is][
    That which is unbounded is happy. There is no happiness in the small.
  ]

+ #quotation(
    source: [Bṛhadāraṇyaka Upaniṣad],
    verse: [2.4.5],
    )[आत्मा वारे द्रष्टव्यः श्रोतव्यो मन्तव्यो निदिध्यासितव्यः][
    ātmā vāre draṣṭavyaḥ śrotavyo mantavyo nididhyāsitavyaḥ
  ][][
    That Ātmā alone, that simplest form of awareness alone, is worthy of seeing, hearing, contemplating, and realizing.
  ]

+ #quotation(
    source: [Gauḍapāda's Māṇḍūkya Kārikā],
    verse: [3.34],
  )[प्रचारः स तु विज्ञेयः][pracāraḥ sa tu vijñeyaḥ][][The mind gets expanded in the transcendent.]

+ #quotation(
    source: [Ṛk Saṃhitā],
    verse: [7.1.1],
  )[दूरेदृशं गृहपतिमथर्युम्][dūre-dṛśaṃ gṛha-patim atharyum][
    distance-seen house owner reverberating
  ][
    Far in the distance is seen the owner of the house, reverberating.
  ]

+ #quotation(
    source: [Nṛsiṃhottaratāpanīya Upaniṣad],
    verse: [1],
  )[
    शिवं शान्तमद्वैतं चतुर्थं मन्यन्ते स आत्मा सविज्ञेयः
  ][
    śivaṃ śāntam advaitaṃ caturthaṃ manyante sa ātmā sa vijñeyaḥ
  ][
    blissful peaceful undivided fourth they regard that Self that to be known
  ][
    The peaceful, the blissful, the undivided is thought to be the fourth; that is the Self. That is to be known.
  ]

+ #quotation(
    source: [Bhagavad-Gītā],
    verse: [18.73],
  )[स्मृतिर्लब्धा][smṛtir labdhā][memory regained][I have regained memory.]

+ #quotation(
    source: [Brahma Sūtra],
    verse: [1.1.1],
  )[अथातो ब्रह्मजिज्ञासा][athāto brahma-jijñāsā][now from here brahman-desire to know
  ][Now, from here, the desire to know Brahman.]

+ #quotation(
    source: [Bhagavad-Gītā],
    verse: [9.5],
  )[पश्य मे योगमैश्वरम्][paśya me yogam aiśvaram][behold my yoga sovereign][Behold the richness of my Yoga.]

+ #quotation(
    source: [Devī Upaniṣad],
    verse: [1],
  )[वेदोऽहम्][vedo 'ham][][I am the Veda.]

+ #quotation(
    source: [Yoga Sūtra],
    verse: [1.1],
  )[अथ योगानुशासनम्][atha yogānuśāsanam][now yoga teaching][Now is the teaching on Yoga.]

+ #quotation(
    source: [Yoga Sūtra],
    verse: [1.2],
  )[योगश्चित्तवृत्तिनिरोधः][yogaś citta-vṛtti-nirodhaḥ][yoga mind-activity-complete settling][Yoga is the complete settling of the activity of the mind.]

+ #quotation(
    source: [Yoga Sūtra],
    verse: [1.3],
  )[तदा द्रष्टुः स्वरूपे अवस्थानम्][tadā drṣṭuḥ svarūpe avasthānam][the the observer in himself established][Then the observer is established in himself.]

+ #quotation(
    source: [Yoga Sūtra],
    verse: [1.4],
  )[वृत्तिसारूप्यमितरत्र][vṛtti-sārūpyam-itar-atra][][Tendencies of the observer emerge from here and remain here.#sidenote[corrected: #romanization[itaḥ] to #romanization[itar]]]

+ #quotation(
    source: [Bhagavad-Gītā],
    verse: [5.11],
  )[
    योगिनः कर्म कुर्वन्ति सङ्गं त्यक्त्वात्मशुद्धये
  ][
    yoginaḥ karma kurvanti saṅgaṃ tyaktvātma-śuddhaye
  ][
    yogis action perform attachment abandoning self-purification
  ][
    Yogis, abandoning attachment perform actions for self-purification.
  ]

+ #quotation(
    source: [Bhagavad-Gītā],
    verse: [6.8],
  )[ज्ञानविज्ञानतृप्तात्मा][jñāna-vijñāna-tṛptātmā][
    knowledge-experience-contented-Self
  ][Contented in knowledge and experience.]

+ #quotation(
    source: [Taittirīya Upaniṣad],
    verse: [3.6.1],
  )[
    आनन्दाद्ध्येव खल्विमानि भूतानि जायन्ते\
    आनन्देन जातानि जीवन्ति\
    आनन्दं प्रयन्त्यभिसंविशन्ति
  ][
    ānandād dhy eva khalv imāni bhūtāni jāyante\
    ānandena jātāni jīvanti\
    ānandaṃ prajanty abhisaṃviśanti
  ][][
    Out of bliss these beings are born,\
    In bliss they are sustained,\
    And to bliss they go and merge again.
  ]

+ #quotation(
    source: [],
    verse: [Introduction to #romanization[Upaniṣads] of #romanization[Atharva Veda]],
  )[
    भद्रं कर्णेभिः शृणुयाम देवा\
    भद्रं पश्येमाक्षभिर्यजत्राः
  ][
    bhadraṃ karṇebhiḥ śṛṇuyāma devā\
    bhadraṃ paśyemākṣabhir yajatrāḥ
  ][][
    All good I should hear from the ears.\
    All good I should see through the eyes.
  ]

+ #quotation(
    source: [Chāndogya Upaniṣad],
    verse: [7.1.3],
  )[तरति शोकमात्मवित्][tarati śokam ātmavit][crosses suffering Self-knower][Established in the Self, one overcomes sorrows and suffering.]

+ #quotation(
    source: [Bhagavad-Gītā],
    verse: [6.28],
  )[ब्रह्मसंस्पर्शमत्यन्तं सुखम्][brahma-saṃsparśam atyantaṃ sukham][brahman-contact infinite bliss][Contact with Brahman is infinite joy.]

+ #quotation(
    source: [Ṛk Saṃhitā],
    verse: [10.191.3],
  )[समितिः समानी][samitiḥ samānī][assembly even][An assembly is significant in unity.]

+ #quotation(
    source: [Bhagavad-Gītā],
    verse: [4.17],
  )[गहना कर्मणो गतिः][gahanā karmaṇo gatiḥ][unfathomable of action course][Unfathomable is the course of action.]

+ #quotation(
    source: [Bhagavad-Gītā],
    verse: [2.40],
  )[स्वल्पमप्यस्य धर्मस्य त्रायते महतो भयात्][
    svalpam apy asya dharmasya trāyate mahato bhayāt][
      little even of this dharma delivers from great fear
    ][Even a little of this dharma delivers from great fear.]

+ #quotation(
    source: [Brahma Sūtra],
    verse: [1.1.12],
  )[आनन्दमयोऽभ्यासात्][ānandamayo 'bhyāsāt][blissful from practice][Brahman becomes blissful through practice.]

+ #quotation(
    source: [Bhagavad-Gītā],
    verse: [11.33],
  )[निमित्तमात्रं भव सव्यसाचिन्][nimitta-mātraṃ bhava savyasācin][instrument-only be Arjuna][Be only the instrument, O Arjuna.]

+ #quotation(
    source: [Bhagavad-Gītā],
    verse: [2.40],
  )[प्रत्यवायो न विद्यते][pratyavāyo na vidyate][obstacle not exists][No obstacle exists.]

+ #quotation(
    source: [Bhagavad-Gītā],
    verse: [6.29],
  )[सर्वभूतस्थमात्मानं सर्वभूतानि चात्मनीक्षते][
    sarvabhūtastham ātmānaṃ sarvabhūtāni cātmanīkṣate
  ][in all beings established Self all beings and in the Self he sees][
    He sees the Self in all beings, and all beings in the Self.
  ]

+ #quotation(
    source: [Bhagavad-Gītā],
    verse: [4.19],
  )[ज्ञानाग्निदग्धकर्माणं तमाहुः पणडितं बुधाः][
    jñānāgni-dagdha-karmāṇaṃ tam āhuḥ paṇḍitaṃ budhāḥ
  ][knowledge-fire-burnt-action him call wise knowers of reality][
    Whose action is burnt up in the fire of knowledge, him the knowers of Reality call wise.
  ]

+ #quotation(
    source: [Bhagavad-Gītā],
    verse: [6.36],
  )[
    वशयात्मना तु यतता शक्योऽवाप्तुमुपायतः][
    vaśayātmanā tu yatatā śakyo 'vāptum upāyataḥ][
    disciplined-man endeavoring possible to gain through proper means][
    Yoga can be gained through proper means by the man of endeavor who is disciplined.
    ]

+ #quotation(
    source: [Yoga Sūtra],
    verse: [1.14],
  )[
    स तु दीर्घकालनैरंतर्यसत्कारासेवितो दृढभूमिः][
    sa tu dīrgha-kāla-nairaṃtarya-satkārāsevito dṛḍha-bhūmiḥ
    ][][
    Yoga becomes an established state when it has been respectfully and uninterruptedly cultivated for a long time.
    ]
]


#pagebreak(weak: true)
#[
  #show heading.where(level: 1): it => {}
  #heading(outlined: true, level: 1)[Reading from the #romanization[Bhagavad-Gītā]]<section:Reading_from_BG>
]
== #romanization[Bhagavad-Gītā] Chapter Two

#let devanagari_num(number) = {
  if number == none {
    return none
  }
  let s = repr(number)
  let devanagari_digits = (
    "1": "१",
    "2": "२",
    "3": "३",
    "4": "४",
    "5": "५",
    "6": "६",
    "7": "७",
    "8": "८",
    "9": "९",
    "0": "०",
  )
  let res = ()
  for ch in repr(number) {
    res.push(devanagari_digits.at(ch))
  }
  return res.join("")
}

#let bhagavad-gita(verse: none, text-sa, text-ro) = [#block(breakable: false, below: 2.25em)[
    #set par(leading: 1.5em, spacing: 1.1em)
    #sanskrit[#text-sa~॥]
    #if verse != none {
      sanskrit[#devanagari_num(verse)॥]
    }
    #set par(leading: 1.2em)
    #romanization[#text-ro]~#verse
    #v(.05em)
  ]
]

#bhagavad-gita(verse: 45)[
  त्रैगुण्यविषया वेदा निस्त्रैगुण्यो भवार्जुन~।\
  निर्द्वन्द्वो नित्यसत्तवस्थो निर्योगक्षेम आत्मवान्
][
 traiguṇya-viṣayā vedā nistraiguṇyo bhavārjuna\
 nirdvandvo nitya-sattvastho niryoga-kṣema ātmavān
]

#bhagavad-gita(verse: 48)[
  योगस्थः कुरु कर्माणि सङ्गं त्यक्त्वा धनञ्जय~।\
  सिद्धयसिद्धयोः समो भूत्वा समत्वं योग उच्यते
][
  yogasthaḥ kuru karmaṇi saṅgaṃ tyaktvā dhanañjaya\
  siddhy-asiddhyoḥ samo bhūtvā samatvaṃ yoga ucyate
]

#bhagavad-gita(verse: 49)[
  दूरेण ह्यवरं कर्म बुद्धियोगाद्धनञ्जय~।\
  बुद्धौ शरणमन्विच्छ कृपणाः फलहेतवः
][
  dūreṇa hy avaraṃ karma buddhi-yogād dhanañjaya\
  buddhau śaraṇam anviccha kṛpaṇāḥ phala-hetavaḥ
]

#bhagavad-gita(verse: 50)[
  बुद्धियुक्तो जहातीह उभे सुकृतदुष्कृते~।\
  तस्माद्योगाय युज्यस्व योगः कर्मसु कौशलम्
][
  buddhi-yukto jahātīha ubhe sukṛta-duṣkṛte\
  tasmād yogāya yujyasva yogaḥ karmasu kauśalam
]

#bhagavad-gita(verse: 51)[
  कर्मजं बुद्धियुक्ता हि फलं त्यक्त्वा मनीषिणः~।\
  जन्मबन्धविनिर्मुक्ताः पदं गच्छन्त्यनामयम्
][
  karmajaṃ buddhi-yuktā hi phalaṃ tyaktvā manīṣiṇaḥ\
  janma-bandha-vinirmuktāḥ padaṃ gacchanty anāmayam
]

#bhagavad-gita(verse: 52)[
  यदा ते मोहकलिलं बुद्धिर्व्यतितरिष्यति~।\
  तदा गन्तासि निर्वेदं श्रोतव्यस्य श्रुतस्य च
][
  yadā te moha-kalilaṃ buddhir vyatitariṣyati\
  tadā gantāsi nirvedaṃ śrotavyasya śrutasya ca
]

#bhagavad-gita(verse: 53)[
  श्रुतिविप्रतिपन्ना ते यदा स्थास्यति निश्चला~।\
  समाधावचला बुद्धिस्तदा योगमवाप्स्यसि
][
  śruti-vipratipannā te yadā sthāsyati niścalā\
  samādhāv acalā buddhis tadā yogam avāpsyasi
]

#bhagavad-gita(verse: 54)[
  अर्जुन उवाच~।\
  स्थितप्रज्ञस्य का भाषा समाधिस्थस्य केशव~।\
  स्थितधीः किं प्रभाषेत किमासीत व्रजेत किम्
][
  arjuna uvāca
  #v(-.7em)
  sthita-prajñasya kā bhāṣā samādhi-sthasya keśava\
  sthita-dhīḥ kiṃ prabhāṣeta kim āsīta vrajeta kim
]

#bhagavad-gita(verse: 55)[
  श्रीभगवानुवाच~।\
  प्रजहाति यदा कामान्सर्वान्पार्थ मनोगतान्~।\
  आत्मन्येवात्मना तुष्टः स्थितप्रज्ञस्तदोच्यते
][
  śrī-bhagavān uvāca
  #v(-.7em)
  prajahāti yadā kāmān sarvān pārtha mano-gatān\
  ātmany evātmanā tuṣṭaḥ sthita-prajñas tadocyate
]

#bhagavad-gita(verse: 56)[
  दुःखेष्वनुद्विग्नमनाः सुखेषु विगतस्पृहः~।\
  वीतरागभयक्रोधः स्थितधीर्मुनिरुच्यते
][
  duḥkheṣv anudvigna-manāḥ sukheṣu vigata-spṛhaḥ\
  vīta-rāga-bhaya-krodhaḥ sthita-dhīr munir ucyate
]

#bhagavad-gita(verse: 57)[
  यः सर्वत्रानभिस्नेहस्तत्तत्प्राप्य शुभाशुभम्~।\
  नाभिनन्दति न द्विष्टि तस्य प्रज्ञा प्रतिष्ठिता
][
  yaḥ sarvatrānabhisnehas tat tat prāpya śubhāśubham\
  nābhinandati na dviṣṭi tasya prajñā pratiṣṭhitā
]

#bhagavad-gita(verse: 58)[
  यदा संहरते चायं कूर्मोऽङ्गानीव सर्वशः~।\
  इन्द्रियाणीन्द्रियार्थेभ्यस्तस्य प्रज्ञा प्रतिष्ठिता
][
  yadā saṃharate cāyaṃ kūrmo 'ṅgānīva sarvaśaḥ\
  indriyāṇīndriyārthebhyas tasya prajñā pratiṣṭhitā
]

#bhagavad-gita(verse: 59)[
  विषया विनिवर्तन्ते निराहारस्य देहिनः~।\
  रसवर्जं रसोऽप्यस्य परं दृष्ट्वा निवर्तते
][
  viṣayā vinivartante nirāhārasya dehinaḥ\
  rasa-varjaṃ raso 'py asya paraṃ dṛṣṭvā nivartate
]

#bhagavad-gita(verse: 60)[
  यततो ह्यपि कौन्तेय पुरुषस्य विपश्चितः~।\
  इन्द्रियाणि प्रमाथीनि हरन्ति प्रसभं मनः
][
  yatato hy api kaunteya puruṣasya vipaścitaḥ\
  indriyāṇi pramāthīni haranti prasabhaṃ manaḥ
]

#bhagavad-gita(verse: 61)[
  तानि सर्वाणि संयम्य युक्त आसीत मत्परः~।\
  वशे हि यसयेन्द्रियाणि तस्य प्रज्ञा प्रतिष्ठिता
][
  tāni sarvāṇi saṃyamya yukta āsīta matparaḥ\
  vaśe hi yasayendriyāṇi tasya prajñā pratiṣṭhitā
]

#bhagavad-gita(verse: 62)[
  ध्यायतो विषयान्पुंसः सङ्गस्तेषूपजायते~।\
  सङ्गात्संजायते कामः कामात्क्रोधोऽभिजायते
][
  dhyāyato viṣayān puṃsaḥ saṅgas teṣūpajāyate\
  saṇgāt saṃjāyate kāmaḥ kāmāt krodho 'bhijāyate
]

#bhagavad-gita(verse: 63)[
  क्रोधाद्भवति संमोहः संमोहात्स्मृतिविभ्रमः~।\
  स्मृतिभ्रंशाद्बुद्धिनाशो बुद्धिनाशात्प्रणश्यति
][
  krodhād bhavati saṃmohaḥ saṃmohāt smṛti-vibhramaḥ\
  smṛti-bhraṃśād buddhi-nāśo buddhi-nāśāt praṇaśyati
]

#bhagavad-gita(verse: 64)[
  रागद्वेषवियुक्तैस्तु विषयानिन्द्रियैश्चरन्~।\
  आत्मवश्यैर्विधेयात्मा प्रसादमधिगच्छति
][
  rāga-dveṣa-viyuktais tu viṣayān indriyaiś caran\
  ātma vaśyair vidheyātmā prasādam adhigacchati
]

#bhagavad-gita(verse: 65)[
  प्रसादे सर्वदुःखानां हानिरस्योपजायते~।\
  प्रसन्नचेतसो ह्याशु बुद्धिः पर्यवतिष्ठते
][
  prasāde sarva-duḥkhānāṃ hānir asyopajāyate\
  prasanna-cetaso hy āśu buddhiḥ paryavatiṣṭhate
]

#bhagavad-gita(verse: 66)[
  नासति बुद्धिरयुक्तस्य न चायुक्तस्य भावना~।\
  न चाभावयतः शान्तिरशान्तस्य कुतः सुखम्
][
  nāsti buddhir ayuktasya na cāyuktasya bhāvanā\
  na cābhāvayataḥ śāntir aśāntasya kutaḥ sukham
]

#bhagavad-gita(verse: 67)[
  इन्द्रियाणां हि चरतां यन्मनोऽनुविधीयते~।\
  तदस्य हरति प्रज्ञां वायुर्नावमिवाम्भसि
][
  indriyāṇam hi caratāṃ yan mano 'nuvidhīyate\
  tad asya harati prajñāṃ vāyur nāvam ivāmbhasi
]

#bhagavad-gita(verse: 68)[
  तस्माद्यस्य महाबाहो निगृहीतानि सर्वशः~।\
  इन्द्रियाणीन्द्रियार्थेभ्यस्तस्य प्रज्ञा प्रतिष्ठिता
][
  tsmād yasya mahābāho nigṛhītāni sarvaśaḥ\
  indriyāṇīndriyārthebhyas tasya prajñā pratiṣṭhitā
]

#bhagavad-gita(verse: 69)[
  या निशा सर्वभूतानां तस्यां जागर्ति संयमी~।\
  यस्यां जाग्रति भूतानि सा निशा पश्यतो मुनेः
][
  yā niśā sarva-bhūtānāṃ tasyāṃ jāgarti saṃyamī\
  yasyāṃ jāgrati bhūtāni sā niśā paśyato muneḥ
]

#bhagavad-gita(verse: 70)[
  आपूर्यमाणमचलप्रतिष्ठं समुद्रमापः प्रविशन्ति यद्वत्~।\
  तद्वत्कामा यं प्रविशन्ति सर्वे स शान्तिमाप्नोति न कामकामी
][
  āpūryamāṇam acala-pratiṣṭhaṃ samudram āpaḥ praviśanti yadvat\
  tadvat kāmā yaṃ praviśanti sarve sa śantim āpnoti na kāma-kāmī
]

#bhagavad-gita(verse: 71)[
  विहाय कामान्यः सर्वान्पुमांश्चरति निःस्पृहः\
  निर्ममो निरहङ्कारः स शान्तिमधिगच्छति
][
  vihāya kāmān yaḥ sarvān pumāṃś carati niḥspṛhaḥ\
  nirmamo nirahaṅkāraḥ sa śāntim adhigacchati
]

#bhagavad-gita(verse: 72)[
  एषा ब्राह्मी स्थितिः पार्थ नैनां प्राप्य विमुह्यति~।\
  स्थितवास्यामन्तकालेऽपि ब्रह्मनिर्वाणमृच्छति
][
  eṣā brāhmī sthitiḥ pārtha naināṃ prāpya vimuhyati\
  sthitavāsyam anta-kāle 'pi brahma-nirvāṇam ṛcchati
]

