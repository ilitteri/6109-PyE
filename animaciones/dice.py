from manim import *

DICE_FACES = [
    "one",
    "two",
    "three",
    "four",
    "five",
    "six"
]

class Foo(Scene):
    def construct(self):
        # faces = VGroup(SVGMobject(f'dice-six-faces-{face}.svg' for face in DICE_FACES))
        # for face in faces:
        #     self.play(Create(face))
        #     self.wait()
        one = SVGMobject("/home/ivan/LaTeX/6109-PyE/animaciones/dice-six-faces-five.svg")
        self.play(Write(one))
        self.wait()