#| COMMENTS ------------------------------------------- |#

; Line comment

#! Line comment, for unix bash scripts
#!/Another form of line comment for scripts \
and this is still commented

#| #| Nested |# Block comment |#

(#;(sexp-comment) "this is not commented-out")

#!and-this-is-not-comment


#| SYMBOLS -------------------------------------------- |#

; Legal symbol names
(Racket Rac#ket #%Racket)

; Verbatim spaces in symbols
(|Racket language| Racket\ language)

; Case sensitivity modifiers
(#ci #cs #cI #cS #CI #CS Racket)


#| NUMBERS -------------------------------------------- |#

; Normal numbers
(-1 1/2 1.0 2e5 #e1 1.##)

; Imaginary numbers
(1+2i 3-10I 1/2+3/4i 1.0-3.0e71i)

; Non-decimal numbers
(#b101 #X2E5LBA #o12277s100)

; Special numbers
(Inf.0 NaN.F #I#D+Inf.F+3i)

; Invalid numbers
(#b333 #xG11)


#| BOOLEANS ------------------------------------------- |#

; Valid booleans
(#t #F #false)

; Invalid booleans
(#False #TrUe)


#| STRINGS, CHARS, KEYWORDS --------------------------- |#

#<<END
  Here string END still string
END

; Valid strings
("normal string" #"byte string" #rx"regexp" #px"regexp 2")

; Character specification in strings
("\U11552 \123 \xAB" "\" \n \t")

; Characters
(#\null #\a #\backspace #\u11AA #\λ)

; Invalid characters
(#\nulll #\NewLine #\back #\u11AAA)

; Keywords
(#:keyword #:2nd-keyword)

"multiline\
string"

; Invalid strings or escapes
("\O" #"\U81811")

"badly-written multiline
string"


#| LISTS, QUOTES, DATA STRUCTURES --------------------- |#

; Quotes
('symbol '[q-list] `{q ,unq ,@(unq-splice)} #'q-syntax)

; Valid vectors
(#[1 2 3 4] #{1 2 3 4} #4[1 2 3 4] #10{} #Fx(1 2 3) #fl(1 2 3))

; Invalid vectors
(#[1 2 3 . 4] #fX[1 2 3])

; Structures
(#s(structure) #s{structure})

; Hash tables
(#hash(("a" . 5)) #hasheqv((a . 5) (b . 7)))


#| OTHER FORMS ---------------------------------------- |#

; Boxes
(#&17 #&symbol)

; Graphs
((#1=100 #1# #1#) #0=(1 . #0#))

; Reader and lang pragmas
#lang Racket+stuff
#!Racket+stuff
#reader (some-datum)

; Compiled expression
#~(complied-expression)
