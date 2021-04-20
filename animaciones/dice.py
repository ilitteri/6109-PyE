from manim import *

class Foo(Scene):
    def construct(self):
        s = SampleSpace()
        self.play(Create(s))
        self.wait()