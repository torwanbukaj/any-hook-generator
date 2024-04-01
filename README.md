# Any-hook OpenSCAD generator (fully customizable)

Generate your own models using OpenSCAD software and the provided **any-hook-generator.scad** project file.

Free-of-charge OpenSCAD software to edit the file (and to generate STL files) can be downloaded from the official source here: https://openscad.org/downloads.html

## How to generate your own hook?
This hook design consists of 23 parts that are interconnected (tail-to-head). Twenty-one parts are configurable. Around half of them are straight bars, another half are arcs. Part 0 and Part 22 are just rounded endings.

You can control:
- length of the straight parts - by parameters **straightX**,
- radius and angle of the arcs - by parameters: **rotation_radiusX** and **rotation_angleX**,
...where X is a number of a part you want to modify.


### Use case - "square seat" + "closed nest"


### Use case - "screw hole" + "flat nest"

### Rendering time (F6 in OpenSCAD)
Don't be surprised that rendering takes a few minutes! It gets much shorter when you do not use any **rounding_radius** (=0.0).

# How to print? 
- Increase number of walls so they take up whole space (no infill) to increase flexibility of a hook
- make sure that Z seam is not located in the "flexible" parts.

