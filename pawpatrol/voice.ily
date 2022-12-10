\language "german"
\version "2.18.2"

harmonies = \chordmode {
  c1 a1:m f g
  c1 f  g g
  a1:m f g g
  a1:m g2 f2 f1
  r1 g1
  c1 a1:m f g
  c1 a1:m f g
  a:m g d:m
}

rh = \relative c' {
	\accidentalStyle Score.piano
	\tempo "Energetic" 4 = 220

  % Paw Patrol
  e4 d8 c2 r8
  % Paw Patrol
  e4 d8 c2

  c8
  % Die Helfer auf 4 Pfoten
  a4 c c a
  e'4. d2 c8

  e4 e e e
  d c8 c4. r4
  a4 c c a
  d2 r2

  e4 e e e
  d c8 c4. r8 c8
  a4 c c a
  d2. r4

  \override NoteHead.style = #'cross
  e8 e4 r8
  e8 e4 r8
  e4. r8
  e8 e4 r8
  e8 e4 r8
  e4 r8 r8
  \revert NoteHead.style

  r4 d4 d d
  d4 c8 e4. r4

  % Paw Patrol
  e4 d8 c2 r8
  % Paw Patrol
  e4 d8 c2 c8

  a4 c c a
  e'4. d2 r8

  % Pa Patrol
  e4 d8 c2 r8
  e4 d8 c2 c8

  a4 c c a
  e'4. d4.

  \override NoteHead.style = #'cross
  % kein einsatz zu
  e4 e8 e8 e4
  % gross keine Pfote
  e4 e8 e8 e8 e8
  % zu klein
  e4 e2

  % Paw Patrol
  e4 e8 e4. e4
  e4 e8 e4. r4
  \revert NoteHead.style

  %  ein anruf
  r4 c4 c4 d4
  % reicht wir sind bereit
  e4 g4 g4 e8 c8~ c4
  %     wohaho
  r4 e8 g4 c,8~
  %     wohoho

  c4 r4 e4 d8 c8~
  c4 r4 e8 g4 a8~
  %-ho
  a8 g4. e4 d8 c8~
  c2 r2

  \bar "|."
}

