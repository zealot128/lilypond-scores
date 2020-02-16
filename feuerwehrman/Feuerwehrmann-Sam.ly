\version "2.18.2"

\header {
  title = "Feuerwehrmann Sam"
  composer = "Heneghan, Lawson, Pickvance"
  arranger = "Arr. S.Wienert"
  tagline = ""
}

global = {
  \key d \major
  \time 4/4
  \tempo "Allegro"
}

chordNames = \chordmode {
  \global
  \semiGermanChords
  \set chordChanges = ##t
  
  r1 \repeat volta 2 { 
    d1 g2 d2
    fis,2:m b,2:m
    a b,:m 
    c2 g2
    d1 g2 d2 
    fis2:m b,2:m a2 b2:m
    d2 b,2:m g2 a2
    d2 b,2:m g2 a2
    cis,2:m d4 fis4:m g2 a2 d1 
  }
  
}

melody = \relative c'' {
  \global
 
  a,8 a8 a8 a8 a8 a8 a8
  
  
  % Alarm es kommt ein Notruf an
  d8 
  \repeat volta 2 {
  d4 a'4 d,4 a'4 
  d,4 a'8 d,4. r4
  
  % Feuerwehrmann Sam ist unser Mann
  | fis8 fis8 a a b4 fis | fis a8 b2 r8 |
  
  % Ninanina
  | fis'4 e4 fis4 e4 |
  
  % Ganz egal was auch passiert
  | d,4 a'4 d,4 a'4 |
  | d,4 a'8 d,4. r4 |
  | fis a b d | fis, a8 b2 
  
 
  a8 | fis' e d cis16 b4.~ b16
  
  a8 | b8 b8 e8 e8 cis4 r8
  a8 | fis' e d cis16 b4.~ b16
  a8 | b8 b8 e4 cis4.  
  a8 b8 a b a16 fis16~ fis2
  b4 e cis b8. cis16 } 
  \alternative {
    { d2 r4. d,8 }
    { d'1 }
  }
  \bar "|."
  
  
  
}

verse = \lyricmode {
  _ _ _ _ _ _ _ \set stanza = "1. "
  
  A8 -- larm es kommt ein Not4ruf an
  Feu8er8wehr8mann8 Sam4 ist un8 -- ser Mann
  
  NI NO NI NO
  
  Ganz e4 -- gal was auch pass4iert4
  er bleibt ruhig und kon4zen8triert
  
  Denn er löscht je8den Brand 
  ja Feu8er8wehr8mann Sam
  
  Da8für ist er be8kannt
  ja Feu8er8wehr8mann Sam
  
  Was im8mer dicht bedroht
  Sam hilft dir in der Not
  
  
  \set stanza = "2. " am Not
}

verseB = \lyricmode {
  
  _ _ _ _ _ _ _ \set stanza = "2. "
  am Land im Was4ser in der Luft
  
  Sam _ hört _ je4 den Hil4 fe ruf
  
  _ _ _ _
  
  Sam und sei4ne Crew sind hier
  sind zur Stel4le hel4fen dir
}

\score {
   \unfoldRepeats <<
    \new ChordNames \chordNames
    \new Staff { \melody }
   
  >>
  
  \midi {
    \tempo 4=140
  }
}
\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
    \addlyrics { \verse }
    \addlyrics { \verseB }
  >>
  
  \layout { }
 
}


  \markup {
  \fill-line {
    \hspace #0.1 % moves the column off the left margin;
     % can be removed if space on the page is tight
     \column {
       \combine \null \vspace #0.1 
        \general-align #Y #DOWN {
          \epsfile #X #35 #"Malvorlagen-Feuerwehrmann-Sam.eps"
          }
     }
      \hspace #0.1 % adds horizontal spacing between columns;
      \column {
        \line { Bild: 1kng.com }
        
      }
  }
     
  }
\paper {
  system-system-spacing =
  #'((basic-distance . 16 )
  (minimum-distance . 8)
  (padding . 1)
  (stretchability . 60))
}