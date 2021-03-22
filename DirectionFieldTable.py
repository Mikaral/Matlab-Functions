import math

while(True):
  x = float(input())
  y = float(input())
  f = 1/(1+(x**2)+(y**2))
  tg = math.degrees(math.atan(f))
  print('|  x  |  y  |f(x,y)| Teta° |')
  print("| {:.1f} | {:.1f} | {:.2f} | {:.2f} |".format(x,y,f,tg))
  print('____________________________')