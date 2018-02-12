#lang pyret

include image
include image-structs

#|
  in terms of flag aspect ratio: pyret image height is equal to flag width and pyret
  image width is equal to flag length
|#

#|
  flag of Madagascar
  aspect ratio 2:3
  two horizontal bands of red and green with a white vertical band on the hoist side
|#
background-madagascar = rectangle(300, 200, "solid", "white")
madagascar-flag = overlay-xy(above(rectangle(200, 100, "solid", color(252,61,50,1)),
                 rectangle(200, 100, "solid", color(0,126,58,1))),
               -100, 0,
               background-madagascar)

#|
  flag of Turkey
  aspect ratio 2:3
  a red field with a white star and crescent slightly left of center
|#
background-turkish = rectangle(300, 200, "solid", color(227,10,23,1))
turkish-flag = overlay-xy(beside-align("middle", overlay-xy(circle(40, "solid", color(227,10,23,1)),
                  -22, -10,
                  circle(50, "solid", "white")),
                star(25, "solid", "white")),
              -45, -50,
              background-turkish)

overlay-xy(madagascar-flag, 350, 0, turkish-flag)
