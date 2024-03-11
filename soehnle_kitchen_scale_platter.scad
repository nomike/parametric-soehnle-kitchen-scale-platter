$fn = 256;
plate_diameter = 150;
plate_thickness = 4;
holder_diameter = 52;
holder_wall_strength = 2;
holder_thickness = 3.55;
holder_overhang = 0.4;
holder_overhang_thickness = 1;

union() {
    cylinder(d=plate_diameter, h=plate_thickness);
    difference() {
        translate([0, 0, plate_thickness]) cylinder(d=holder_diameter + holder_wall_strength, h=holder_thickness + holder_overhang_thickness);
        translate([0, 0, plate_thickness]) cylinder(d=holder_diameter, h=holder_thickness);
        translate([0, 0, plate_thickness + holder_thickness]) cylinder(d=holder_diameter - holder_overhang, h=holder_thickness);
    }
}
