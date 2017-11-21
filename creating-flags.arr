#lang pyret

include image
include image-structs

# flag of Madagascar
background = rectangle(300, 200, "solid", "white")
overlay-xy(above(rectangle(200, 100, "solid", color(252,61,50,1)),
                 rectangle(200, 100, "solid", color(0,126,58,1))),
               -100, 0,
               background)

# flag of Turkey
background = rectangle(300, 200, "solid", color(227,10,23,1))
overlay-xy(beside-align("middle", overlay-xy(circle(40, "solid", color(227,10,23,1)),
                  -22, -10,
                  circle(50, "solid", "white")),
                star(25, "solid", "white")),
              -45, -50,
              background)
