\version "2.18.2"
\language "deutsch"

%\paper {
%	#(set-paper-size "a4" 'landscape)
%}

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
}
pedal = \relative c {
	es4 r16 g f g c,4 r16 es d es |
	as,4 b es,8 es' d c
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
