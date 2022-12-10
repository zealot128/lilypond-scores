\version "2.18.2"

\header {
  title = \markup { \fontsize #6 \override #'(font-name . "Heiti SC") "朋友 (Péngyǒu)" }
   composer = "Waking Chau"
  tagline = ""
} 

global = {
  \key g \major 
  \time 4/4
}


harmonies = \chordmode {
  \set noChordSymbol= ""
  
  \global
  r1 g1 e1:m b1:m e1:m a1:m c1 d1 d1
     g1 e1:m b1:m e1:m a1:m c1 g1 r1
     
     g1 d1 e:m b:m c g c d
     g d e:m b:m c g c g
}


right = \relative c'' {
   

  
  \global
  
  r2 b4 a g2 a4 b g2 a4 b d2 d4 e g,2 e4 g a2 a4 g e2 e4 g a b a g a2 
    b4 a g2 a4 b g2 a4 b d d d e g,2 e4 g a2 a4 g=' e2 d4 e=' g1
  
  
  r2^"Chrous" b4 c d d d e d2 e4 fis g g g e d2 d4 b g2 g4 e' d2 b4 a g2 e4 g a2 
     b4 c d d d e d2 e4 fis g g g e d2 d4 b g2 g4 e' d2 b4 a g2 e4 g g1
      \bar "|."

}

left = \relative c' {
  \global
  
  r1   
  <g d'>
  <e b'> <b fis'> <e b'> <c a'> <c g'> <d a'> <d a'> <d g> <b g'> <b fis'> <e b'> <c a'> <c g'> <g d'>
  

  
  
  r1 g'2 <b d> fis <a d> e <g b> d <fis b> c <e g> b <d g> c <e g> d <fis a>
     g2 <b d> fis <a d> e <g b> d <fis b> c <e g> b <d g> c <e g> <b d g>1
}

\score {
  
  \new PianoStaff \with {
    instrumentName = "Klavier"
  } <<
       \new ChordNames {
      \semiGermanChords
      \harmonies
    }
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}

\paper {
  system-system-spacing =
  #'((basic-distance . 20)
     (minimum-distance . 8)
     (padding . 1)
     (stretchability . 60))
}