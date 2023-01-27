import random
from math import sin, pi

# Comment
with open("pressure.dat", "w") as f:
    for i in range(100):
        x = i * 2 * pi / 100
        y = sin(x) + random.random() * 0.1
        f.write(f"{i*0.1:02f} {y:04f}\n")
