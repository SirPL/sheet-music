\version "2.18.2"
\language "deutsch"

\paper {
	#(set-paper-size "letter" 'landscape)
}

\header {
	title = "Triosonata organowa nr 1 w Es dur"
	composer = "J. S. Bach"
	subtitle = "BWV 525"	
}

keyTime = { \key es \major \time 2/2 }

manualOne = \relative c'' {
	R1 |
	R1 |
	b8 d f4 b,8 es g4( |
	g16) b a g f8 es\prall d c16 d es d c b |
	c8 c f4( f16) es d es f es d c |
	d8 d g4( g8) c, d16 es f8( |
	f) b, c16 d es8( es16) g, as c b as g f | 
	f'8 d es4( es16) g f es d c b c |
	des as g f es g as b c b as g f b c d |
	es c b as g d' es f b, es f g c, f b, as |
	g4 r8 g f16 as d c d as f as |
	g b es b g b es, g d8 f b4 |
	es,8 g b4( b16) c e d e b g b |
	a c f c a c f, a e8 g c4 |
	f,8 a c4( c16) d fis e fis c a c |
	b d g d b d g, b c8 f, f' es16 d |
	c16 f, g a b c d es f8 d b4 |
	f'8 d as4 f'8 d g, f' |
	es c g c16 d es8 c f, es' |
	d8 b f b16 c des8 b e, des' |
	c16 b a g f es d c d8 b' c, a' |
	b d f4 b,8 es g4( |
	g16) b a g f8 es d c16 d es d c b |
	es as, g f es g as b c b as g f b c d |
	es8. f16 d8.\prall es16 es8 b es4( |
	es16) d c d es d c b c8 c f4( |
	f16) es d es f es d c des c des f es des c b |
}
manualTwo = \relative es' {
	es8 g b4 es,8 as c4( |
	c16) es d c b8 as\prall g f16 g as g f es |
	f es d c b d es f g f es d c f g a |
	b8. c16 a8. b16 b8 f b4( |
	b16) as g as b as g f g8 g c4( |
	c16) b a b c b as g as g as c b as g f |
	g f g b as g f es f es f as g f es d |
	es d c b b'8 as g4\prall f\prall |
	es8 g b4 es,8 as c4( |
	c16) es d c b8 as g es' f, d' |
	es,4 r8 es d es b'4 |
	es,8 g b4 f16 as d c d as f as |
	g16 b es b g b es, d e8 g c4 |
	f,8 a c4 g16 b e d e b g b |
	a c f c a c f, e fis8 a d4 |
	g,8 b es4( es16) d c d es d c b |
	a4 r16 a16 b c b d f es f d b d |
	as d f es f d as d g, d' f es f d g, d' |
	f, b d c d b f b e, b' des c des b e, b' |
}
pedal = \relative c {
	es4 r16 g f g c,4 r16 es d es |
	as,4 b es,8 es' d c |
	d f d b es g es c |
	d es f f, b4 r8 d |
	f4 r8 as c,4 r8 es |
	g4 r8 b c, es as4 |
	b,8 d g4 as,8 c f as( |
	as) as, g c b b'4 as8 |
	g b g es as c as f |
	g as b d, es c as b |
	es, f g es b'4 r8 d |
	es4 r8 g, b4 r8 d |
	es4 r8 g c,4 r8 e8 |
	f4 r8 a,8 c4 r8 e |
	f4 r8 a8 d,4 r8 fis |
	g4 r8 c b a b e, |
	f f, f' es d4 r8 d' |
	c4 r8 c, h4 r8 h' |
	c4 r8 b, a4 r8 a' |
}

\score {
<<
	\new PianoStaff <<
		\new Staff = "ManualOne" <<
			\keyTime
			\clef "treble"
			\new Voice {
				\set baseMoment = #(ly:make-moment 1/16)
				\set beatStructure = #'(4 4 4 4)
				\manualOne
			}
		>>
		\new Staff = "ManualTwo" <<
			\keyTime
			\clef "treble"
			\new Voice {
				\set baseMoment = #(ly:make-moment 1/16)
				\set beatStructure = #'(4 4 4 4)
				\manualTwo
			}
		>>
	>>
	\new Staff = "PedalOrgan" <<
		\keyTime
		\clef "bass"
		\new Voice {
			\set baseMoment = #(ly:make-moment 1/8)
			\set beatStructure = #'(4 4 4 4)
			\pedal
		}
	>>
>>
\layout{}
\midi{}
}
