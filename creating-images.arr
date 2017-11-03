#lang pyret

include image

circle :: (radius :: Number, mode :: String, color :: ImageColor) -> Image
circle(15, "solid", "blue")

# constructs a new image where img1 overlays img2
overlay :: (img1 :: Image, img2 :: Image) -> Image
overlay(circle(15, "solid", "blue"),
        circle(30, "outline", "black"))

#|
  overlays img1 and img2 but initially lines up the two images upper-left corners
  and then shifts img2 to the right by dx pixels, and down by dy pixels
|#
overlay-xy :: (img1 :: Image, dx :: Number, dy :: Number, img2 :: Image) -> Image
overlay-xy(circle(15, "solid", "blue"),
           -25, -25,
           circle(30, "outline", "black"))

eye = overlay-xy(circle(15, "solid", "blue"),
                 -25, -25,
                 circle(30, "outline", "black"))

# constructs an image by placing img1 to the left of img2
beside :: (img1 :: Image, img2 :: Image) -> Image
beside(eye, eye)

# flips images left to right
flip-horizontal :: (img :: Image) -> Image
beside(eye, flip-horizontal(eye))

triangle :: (side-length :: Number, mode :: String, color :: ImageColor) -> Image
triangle(45, "solid", "purple")

overlay(circle(5, "solid", "red"),
        overlay(circle(10, "outline", "red"),
                circle(15, "outline", "red")))
