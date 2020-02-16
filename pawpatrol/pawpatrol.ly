% LilyBin
\header {
  title = \markup { "Paw Patrol" }
  composer = "written by Michael Smidi Smith and Scott Krippayne"
  tagline = ""
}
\language "german"
\include "predefined-guitar-fretboards.ly"
\include "german_lyrics.ily"
\include "voice.ily"

\score{
  <<
    %\new FretBoards {
      %\harmonies
    %}
    \new ChordNames {
      \semiGermanChords
      \harmonies
    }
    \new Voice = "RH" {
      \rh
    }
    \new Lyrics \lyricsto "RH" \textI
    \new Lyrics \lyricsto "RH" \text
  >>
	\layout{
    \context {
      \Voice
      \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #30
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/4)
    }
  }
	\midi{
	  \tempo 4 = 160
	}
}
\paper {
  system-system-spacing =
  #'((basic-distance . 20)
  (minimum-distance . 8)
  (padding . 1)
  (stretchability . 60))
}
