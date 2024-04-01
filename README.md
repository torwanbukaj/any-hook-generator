# Any-hook OpenSCAD generator (fully customizable)

![Any-hook front page image](img/any-hook-front-txt-600px.jpg?raw=true)

This work is licensed under a
[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License][cc-by-nc-sa].

Generate your own models using OpenSCAD software and the provided **any-hook-generator.scad** project file.

Free-of-charge OpenSCAD software to edit the file (and to generate STL files) can be downloaded from the official source here: https://openscad.org/downloads.html

## How to generate your own hook?
This hook design consists of 23 parts that are interconnected (tail-to-head). Twenty-one parts are configurable. Around half of them are straight bars, another half are arcs. Part 0 and Part 22 are just rounded endings.

![Any-hook overview](img/any-hook-overview-v2-txt-600px.jpg?raw=true)

You can control:
- length of the straight parts - by parameters **straightX**,
- radius and angle of the arcs - by parameters: **rotation_radiusX** and **rotation_angleX**,
...where X is a number of a part you want to modify.


### Use case - "square seat" + "closed nest"

![Use case - square seat and closed nest](img/case-study-example-square-seat-txt-600px.jpg?raw=true)

### Use case - "screw hole" + "flat nest"

![Use case - screw hole and flat nest](img/case-study-example-screw-hole-txt-600px.jpg?raw=true)

### Rendering time (F6 in OpenSCAD)
Don't be surprised that rendering takes a few minutes! It gets much shorter when you do not use any **rounding_radius** (=0.0).

# How to print? 
- Increase number of walls so they take up whole space (no infill) to increase flexibility of a hook
- make sure that Z seam is not located in the "flexible" parts.

# Just a real example of use...

![Any-hook real example of use](img/any-hook-example-600px.jpg?raw=true)

---
Shield: [![CC BY-NC-SA 4.0][cc-by-nc-sa-shield]][cc-by-nc-sa]

This work is licensed under a
[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License][cc-by-nc-sa].

[![CC BY-NC-SA 4.0][cc-by-nc-sa-image]][cc-by-nc-sa]

[cc-by-nc-sa]: http://creativecommons.org/licenses/by-nc-sa/4.0/
[cc-by-nc-sa-image]: https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png
[cc-by-nc-sa-shield]: https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg