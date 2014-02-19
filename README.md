# Research Journal

Input: Project Lead Name, Project Name, Customer Name
Output: 3 random shapes, with color and position

=> we have to generate 3 sets of value(s) from each Input, a shape, a
color and a position


## Shape

Let's start with a shape that has
  - 1 Starting point (2 Values)
  - 4 bezier paths (each one needs 4 values)

The first path will need 6 data points:

  control 1 x,y
  control 2 x,y
  target x,y

The remaining 3 paths need 4 data points each:

  control 2 x,y
  target x,y

This means that from 1 string of arbitrary length we have to produce 18
data points. But, since the origin (M), control1 of the first path and
target of the last path are the same value, we get down to 16 values.

## Color

## Positon


# References

http://docs.webplatform.org/wiki/svg/tutorials/smarter_svg_shapes
http://letmespellitoutforyou.com/samples/svg_path.html
