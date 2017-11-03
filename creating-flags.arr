#lang pyret

include image

# Madagascar flag
background = rectangle(300, 200, "solid", "white")
overlay-xy(above(rectangle(200, 100, "solid", "red"),
                 rectangle(200, 100, "solid", "green")),
                 -100, 0
                 background)
