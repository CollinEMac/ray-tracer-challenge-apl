⍝ a Dyalog APL implementation of The Ray Tracer Challenge by Jamis Buck for fun.

⍝ a point has a w of 1.0
isPoint←{¯1↑⍵}

⍝ This is a point
isPointTestTrue ← isPoint 4.3 ¯4.2 3.1 1.0
⎕← isPointTestTrue

⍝ This is a vector 
isPointTestFalse ← isPoint 4.3 ¯4.2 3.1 0.0
⎕← isPointTestFalse

⍝ Create a point
point←{⍵, 1 }
⎕← point 4.3 ¯4.2 3.1 

⍝ Create a vector
vector←{⍵, 0 }
⎕← vector 4.3 ¯4.2 3.1 

⍝ add tuples
⎕← 3 ¯2 5 1 + ¯2 3 1 0

⍝ subtract points
⎕← 3 2 1 1 - 5 6 7 1

⍝ subtract vector from a point
⎕← 3 2 1 1 - 5 6 7 0

⍝ subtract vectors
⎕← 3 2 1 0 - 5 6 7 0

⍝ negate a vector 
⎕← - ¯1 2 ¯3 4

⍝ multiply a tuple by a scalar
⎕← 1 ¯2 3 ¯4 × 3.5

⍝ multiply a tuple by a fraction
⎕← 1 ¯2 3 ¯4 × 0.5

⍝ divide a tuple by a scalar
⎕← 1 ¯2 3 ¯4 ÷ 2

⍝ magnitude of a vector
magnitude← {(+⌿⍵*2)*0.5}
⎕← magnitude 1 0 0 0 
⎕← magnitude 0 1 0 0 
⎕← magnitude 0 0 1 0 
⎕← magnitude 1 2 3 0 
⎕← magnitude ¯1 ¯2 ¯3 0 

⍝ normalize a vector
normalize← {⍵÷magnitude ⍵}
⎕← normalize 4 0 0 0 
⎕← normalize 1 2 3 0 

⍝ magnitude of a normalized vector
⎕← magnitude normalize 1 2 3 0 

⍝ dot product of 2 tuples
⎕← +⌿ (1 2 3 0 × 2 3 4 0)

⍝ cross product of 2 vectors 
cross ← {(⍺[2 3 1]×⍵[3 1 2])-⍺[3 1 2]×⍵[2 3 1]}
⎕← 1 2 3 0 cross 2 3 4 0
⎕← 2 3 4 0 cross 1 2 3 0

⎕OFF
