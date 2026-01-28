⍝ Chapter 2

⍝ Colors are (red, green, blue) tuples (arrays)
color←{
    3≠≢⍵:'Must provide exactly 3 RGB values'⎕SIGNAL 11
    ⍵
}

⍝ adding colors
⎕← color 0.9 0.6 0.75 + color 0.7 0.1 0.25

⍝ subtracting colors
⎕← color 0.9 0.6 0.75 - color 0.7 0.1 0.25

⍝ multiplying colors by scalars
⎕← color 0.2 0.3 0.4 × 2

⍝ multiplying colors
⎕← color 1 0.2 0.4 × color 0.9 1 0.1

⍝ creating a canvas
canvas← 10 20 ⍴ ⊂color 0 0 0 

⍝ writing pixels to a canvas
canvas[3;4]← ⊂color 1 0 0

⍝ Create a ppm header
ppm_header←{⍪'P3' (⍺, ⍵) '255'}

⍝ construct a ppm
canvas1← 3 5 ⍴ ⊂color 0 0 0
canvas1[1;1]← ⊂color 1.5 0 0
canvas1[2;3]← ⊂color 0 0.5 0
canvas1[2;5]← ⊂color -0.5 0 1
ppm← ⍪(5 ppm_header 3) canvas1 

⎕←ppm

⎕OFF
