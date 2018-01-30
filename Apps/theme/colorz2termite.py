#!/usr/bin/env python3
import sys

colors = []
colors.append(['#21212A', '#2B2C37']) # Black
for line in sys.stdin:
    colors.append(line.split())
colors.append(['#DEDEF5', '#E7E7FF']) # White

norm, bold = zip(*colors)
for i, color in enumerate(norm + bold):
    print('color{} = {}'.format(i, color))
