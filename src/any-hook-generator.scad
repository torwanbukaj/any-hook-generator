/* Any-hook generator (fully customizable)
   by torwan @ April 1st, 2024
   
   - v1.0 (15th March 2024): Initial version.
   - v1.1 (1st April 2024):
     - Added slight overlap between the sub-parts (as big as a value
       of "cc" is) to make sure that a final hook is a "one body" model.
     - Added "part10_is_last" to disable all parts behind Part 10 (when
       True). This may be helpful when you want to use a screw and a screw
       hole in the Part 10 and don't want to waste time on zeroing all
       parameters of the remaining parts behind the Part 10. Thanks to
       **filipemeiracastro** (Thingiverse) for suggesting this!
*/

/* Description / Hints:
   - See more details on https://www.thingiverse.com/thing:6534190
     or on https://github.com/torwanbukaj/any-hook-generator
   - All dimensions in [mm].
   - To generate STL file, render the object using F6 and save it
     using F7.
   - $fn controls number of a circle fragments. I recommend to use
     $fn = 100 or more.
   - PRINTING RECOMMENDATIONS: When slicing, increase wall count
     (wall thickness) in a way that there is no infill between
     the outer walls. From my experience, this helps the printed
     hooks to be more flexible and to keep their initial shape
     after exposing them to some (even significant) forces.
     Infill will work against flexibility.
   - Every hook consists of interconnected 23 parts: rounded endings,
     straight bars and arcs. Length of each straight part, as well as
     angle and radius of each arcs can be modified.
   - You can influence the shape of a hook by modifying parameters in
     the section "Model shape parameters"
*/

// ---------- Model general parameters -----------
/* [Model general parameters] */
// Hook width
hook_width = 10.0;

// Hook thickness
hook_thickness = 3.0;

// Rounding radius for smoothing sharp edges
rounding_radius = 0.5;

// Enable screw nest in Part 10
part10_screw_nest_enable = false;

// Disable all Parts behind Part 10
part10_is_last = false;

// ------------ Model shape parameters ----------
// Numbering of the individual parts of a hook:
/*
                                  ____   ___________
                                 | 22 | / | 18 |    \
                                 |____|/19|____|_ 17 \
              ____________        \ 21|___/      \____\
             /  |  6   |  \        \  |20/        |   | 
            / 5/_______| 7/\        \_|_/         |   |
           /__/         \/8/\ ________            |   |
          |   |          \/ 9|  10  | \           |16 |
          | 4 |           \__|______|11\          |   |
          |___|          __          \__\         |   |
          \   \         /0 \          \12\        |___|
           \ 3 \_______/\__/           \__\_______/15/
            \  |   2  | 1 /             \13  |14 |  /             
             \_|______|__/               \___|___|_/

Parts 0 and 22 are just rounded endings on both sides and do not
require any parametrization.  
*/


/* [Model shape parameters] */

// Part 1 radius:
rotation_radius1 = 3.5;
// Part 1 angle:
rotation_angle1 = 45;

// Part 2 length:
straight2 = 5.0;

// Part 3 radius:
rotation_radius3 = 3.5;
// Part 3 angle:
rotation_angle3 = 90;

// Part 4 length:
straight4 = 7.0;

// Part 5 radius:
rotation_radius5 = 3.5;
// Part 5 angle:
rotation_angle5 = 90;

// Part 6 length:
straight6 = 5.0;

// Part 7 radius:
rotation_radius7 = 0.5;
rotation_angle7 = 45;

// Part 8 length:
straight8 = 5.0;

// Part 9 radius:
rotation_radius9 = 0.5;
// Part 9 angle:
rotation_angle9 = 45;

// Part 10 length:
straight10 = 10.0;

// Part 11 radius:
rotation_radius11 = 0.5;
// Part 11 angle:
rotation_angle11 = 45;

// Part 12 length:
straight12 = 3.0;

// Part 13 radius:
rotation_radius13 = 0.5;
// Part 13 angle:
rotation_angle13 = 45;

// Part 14 length:
straight14 = 4.0;

// Part 15 radius:
rotation_radius15 = 3.5;
// Part 15 angle:
rotation_angle15 = 90;

// Part 16 length:
straight16 = 6.0;

// Part 17 radius:
rotation_radius17 = 3.5;
// Part 17 angle:
rotation_angle17 = 90;

// Part 18 length:
straight18 = 4.0;

// Part 19 radius:
rotation_radius19 = 1.0;
// Part 19 angle:
rotation_angle19 = 35;

// Part 20 length:
straight20 = 4.0;

// Part 21 radius:
rotation_radius21 = 1.0;
// Part 21 angle:
rotation_angle21 = 35;

// ----------- Screw-holes dimensions ------------
/* [Screw-holes dimensions] */

//Distance of the screw nest from the beginning of a part
screw_offset = 5.0;

// Screw head diameter
screw_head_dia = 6.4; 

// Screw leg diameter (make it 0.1-0.2 bigger than real)
screw_leg_dia = 3.3;

// Screw head height
screw_head_h = 2.6;

// How much a screw has to drop into material (hiding head)
screw_head_drop = 0.2;

// ------------ Supporting parameters ------------
/* [Supporting parameters] */
// General number of a circle fragments
$fn = 100;

// Number of a circle fragments for rounding (stay rather low)
fn_rounding = 20;

// TRUE  -> every part in different color in the pre-view, FALSE - one color
color_parts = true;

// ------------- Helping parameters --------------
// (do not modify below parameters)
/* [Hidden] */
cc = 0.01;

rotation_radius11c = part10_is_last ? 0 : rotation_radius11;
rotation_angle11c = part10_is_last ? 0 : rotation_angle11;

straight12c = part10_is_last ? 0 : straight12;

rotation_radius13c = part10_is_last ? 0 : rotation_radius13;
rotation_angle13c = part10_is_last ? 0 : rotation_angle13;

straight14c = part10_is_last ? 0 : straight14;

rotation_radius15c = part10_is_last ? 0 : rotation_radius15;
rotation_angle15c = part10_is_last ? 0 : rotation_angle15;

straight16c = part10_is_last ? 0 : straight16;

rotation_radius17c = part10_is_last ? 0 : rotation_radius17;
rotation_angle17c = part10_is_last ? 0 : rotation_angle17;

straight18c = part10_is_last ? 0 : straight18;

rotation_radius19c = part10_is_last ? 0 : rotation_radius19;
rotation_angle19c = part10_is_last ? 0 : rotation_angle19;

straight20c = part10_is_last ? 0 : straight20;

rotation_radius21c = part10_is_last ? 0 : rotation_radius21;
rotation_angle21c = part10_is_last ? 0 : rotation_angle21;

// ------------- Helping parameters --------------
// (do not modify below parameters)

part0_col  =  color_parts ? "Gold" : "Gold";
part1_col  =  color_parts ? "Yellow" : "Gold";  
part2_col  =  color_parts ? "Olive" : "Gold"; 
part3_col  =  color_parts ? "DarkKhaki" : "Gold"; 
part4_col  =  color_parts ? "BurlyWood" : "Gold"; 
part5_col  =  color_parts ? "RosyBrown" : "Gold"; 
part6_col  =  color_parts ? "Coral" : "Gold"; 
part7_col  =  color_parts ? "Goldenrod" : "Gold"; 
part8_col  =  color_parts ? "Chocolate" : "Gold"; 
part9_col  =  color_parts ? "MistyRose" : "Gold"; 
part10_col =  color_parts ? "Maroon" : "Gold"; 
part11_col =  color_parts ? "Goldenrod" : "Gold";
part12_col =  color_parts ? "BurlyWood" : "Gold"; 
part13_col =  color_parts ? "Yellow" : "Gold"; 
part14_col =  color_parts ? "DarkKhaki" : "Gold"; 
part15_col =  color_parts ? "Chocolate" : "Gold"; 
part16_col =  color_parts ? "MistyRose" : "Gold";
part17_col =  color_parts ? "Maroon" : "Gold";
part18_col =  color_parts ? "Goldenrod" : "Gold";
part19_col =  color_parts ? "BurlyWood" : "Gold"; 
part20_col =  color_parts ? "Yellow" : "Gold";
part21_col =  color_parts ? "Olive" : "Gold";
part22_col =  color_parts ? "Maroon" : "Gold";

// --------------- GENERATION AREA ---------------

rotate([0, 90, 0])
    generate_hook();

// ------------------ MODULES --------------------
// (you do not need to touch anything below unless you
// know what you do :) )

module generate_hook()
{
add_turn_lu(angle = rotation_angle21c, radius = rotation_radius21c, color = part21_col)
add_straight(length = straight20c, color = part20_col)
add_turn_ld(angle = rotation_angle19c, radius = rotation_radius19c, color = part19_col)
add_straight(length = straight18c, color = part18_col)
add_turn_ld(angle = rotation_angle17c, radius = rotation_radius17c, color = part17_col)
add_straight(length = straight16c, color = part16_col)
add_turn_ld(angle = rotation_angle15c, radius = rotation_radius15c, color = part15_col)
add_straight(length = straight14c, color = part14_col)
add_turn_ld(angle = rotation_angle13c, radius = rotation_radius13c, color = part13_col)
add_straight(length = straight12c, color = part12_col)
add_turn_lu(angle = rotation_angle11c, radius = rotation_radius11c, color = part11_col)
add_straight(length = straight10, color = part10_col, screw_nest = part10_screw_nest_enable)
add_turn_ld(angle = rotation_angle9, radius = rotation_radius9, color = part9_col)
add_straight(length = straight8, color = part8_col)
add_turn_lu(angle = rotation_angle7, radius = rotation_radius7, color = part7_col)
add_straight(length = straight6, color = part6_col)
add_turn_lu(angle = rotation_angle5, radius = rotation_radius5, color = part5_col)
add_straight(length = straight4, color = part4_col)
add_turn_lu(angle = rotation_angle3, radius = rotation_radius3, color = part3_col)
add_straight(length = straight2, color = part2_col)
add_turn_lu(angle = rotation_angle1, radius = rotation_radius1, color = part1_col)
make_rounded_end(color = part0_col);

make_rounded_end(color = part22_col);
}

module add_turn_ld(angle = 5, radius = 2, color = "Gold")
{
    translate([0, cc, -hook_thickness])
    rotate([angle, 0, 0])
    {
        ty = radius * sin(angle);
        tz = hook_thickness + radius * (1 - cos(angle));     
        translate([0, -ty, tz])
        {
            // Previous parts
            children();
            
            // New part being added
            color(color)
            translate([0, 0, 0])
                prepare_arc(rot_r = radius,
                            rot_ang = angle,
                            rot_part = 0,
                            part_type = "ld");    
        }
    }
}

module add_turn_lu(angle = 5, radius = 2, color = "Gold")
{
    translate([0, cc, 0])
    rotate([-angle, 0, 0])
    {
        ty = radius * sin(angle);
        tz = radius * (1 - cos(angle));     
        translate([0, -ty, -tz])

        {
            // Previous parts
            children();
            
            // New part being added
            color(color)
            translate([0, 0, 0])
                prepare_arc(rot_r = radius,
                            rot_ang = angle,
                            rot_part = 0,
                            part_type = "lu");    
        }
    }
}

module add_straight(length = 2, color = "Gold", screw_nest = false)
{
    translate([0, -length+cc, 0])
    {
        // Previous parts
        children();
        
        // New part being added
        color(color)
        translate([0, 0, -hook_thickness])
            make_straight(len = length, screw_nest = screw_nest);
    }     
}

module make_rounded_end(color = "Gold")
{   
    color(color)
    translate([0, 0, -hook_thickness/2])
        rotate([0, 90, 0])
            translate([0, 0, rounding_radius+cc/4])
                minkowski()
                    {
                        cylinder(d = hook_thickness-2*rounding_radius,
                                 h = hook_width-2*rounding_radius-cc/2);
                        sphere(r = rounding_radius);
                    }
}

module prepare_arc(rot_r = 0, rot_ang = 0, rot_part = 0, part_type = "")
{
    rotate([-rot_part, 0, 0])
        prepare_arc_preorient();
    
    module prepare_arc_preorient()
    {
        if (part_type == "lu") 
                translate([0, 0, -hook_thickness])
                    make_arc(rot_r = rot_r, rot_ang = rot_ang);

        if (part_type == "ld") 
                mirror([0, 0, 1])
                    make_arc(rot_r = rot_r, rot_ang = rot_ang);  
    }
}  

module make_arc(rot_r = 0, rot_ang = 0)
{
translate([0, 0, rot_r+hook_thickness])
    rotate([0, 90, 0])
        rotate_extrude(angle = rot_ang)
            translate([rot_r, 0, 0])
                hook_cs_blueprint();
}                            
                            
module make_straight(len = 0, screw_nest = false)
{
    difference()
    {
        translate([hook_width, 0, hook_thickness])
            rotate([0, 90, 90])
                linear_extrude(len)
                    hook_cs_blueprint();
        if (screw_nest == true)
            translate([hook_width/2, len-screw_offset, hook_thickness+cc/2])
                rotate([180, 0, 0])
                    screw_nest(head_dia = screw_head_dia,
                               head_drop = screw_head_drop,
                               screw_head_h = screw_head_h,
                               total_length = hook_thickness+cc,
                               screw_leg_dia = screw_leg_dia);
    }
} 
                            
module hook_cs_blueprint()
{
    translate([rounding_radius, rounding_radius, 0])
        offset(r = rounding_radius, $fn = fn_rounding)
            square([hook_thickness-2*rounding_radius,
                    hook_width-2*rounding_radius]);    
}

module screw_nest(head_dia = 6,
                  head_drop = 1,
                  screw_head_h = 3,
                  total_length = 10,
                  screw_leg_dia = 2) // Template for space for a mounting screw
{
    rotate_extrude(angle = 360)
        polygon([[0, 0],
                 [head_dia/2, -cc],
                 [head_dia/2, head_drop],
                 [screw_leg_dia/2, head_drop + screw_head_h],
                 [screw_leg_dia/2, total_length+cc],
                 [0, total_length+cc]
                ]);
}