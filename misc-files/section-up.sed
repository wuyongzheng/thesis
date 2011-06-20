#!/bin/sed
# use standard sed. don't use extended regexp

s/\\chapter\([\*]\?\){/\\part\1{/g
s/\\section\([\*]\?\){/\\chapter\1{/g
s/\\subsection\([\*]\?\){/\\section\1{/g
s/\\subsubsection\([\*]\?\){/\\subsection\1{/g
s/\\paragraph\([\*]\?\){/\\subsubsection\1{/g
s/\\subparagraph\([\*]\?\){/\\paragraph\1{/g
