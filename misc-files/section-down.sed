#!/bin/sed
# use standard sed. don't use extended regexp

s/\\paragraph\([\*]\?\){/\\subparagraph\1{/g
s/\\subsubsection\([\*]\?\){/\\paragraph\1{/g
s/\\subsection\([\*]\?\){/\\subsubsection\1{/g
s/\\section\([\*]\?\){/\\subsection\1{/g
s/\\chapter\([\*]\?\){/\\section\1{/g
s/\\part\([\*]\?\){/\\chapter\1{/g
