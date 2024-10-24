$fn = 100;
if (0) {
    difference() {
        minkowski() {
            hull() {
                cylinder(h=20, d=27, center=true);
                translate([-15, 0, 0]) cube([20, 20, 16], center=true);
            }
            sphere(1);
        }
        minkowski() {
            union() {
                translate([0, 0, 4]) cylinder(h=20, d=20, center=true);
                intersection() {
                    cylinder(h=50, d=16, center=true);
                    cube([13, 16, 50], center=true);
                }
                translate([-25, 0, 0]) {
                    translate([-5, 0, 0]) cube([10, 50, 50], center=true);
                    translate([1, 0, -20]) cube([10, 5, 50], center=true);
                    translate([7.5, 0, -20]) cube([5, 10, 50], center=true);
                }
            }
            cube(0.0);
        }
    }
} else {
    difference() {
        minkowski() {
            hull() {
                translate([-25, 0, -18]) cylinder(h=60, d=30, center=true);
                translate([-5, 0, -20+2]) cube([10, 20, 54], center=true);
            }
            sphere(1);
        }
        translate([5, 0, -18]) cube([10, 50, 60], center=true);
        translate([-25, 0, -18]) cylinder(h=64, d1=20, d2=10, center=true);
    }
    translate([1, 0, -20]) cube([10, 5, 50], center=true);
    translate([7.5, 0, -20]) cube([5, 10, 50], center=true);
}
