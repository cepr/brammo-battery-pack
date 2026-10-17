
module cell() {
    cylinder(h=70.6, d=21.4);
}
// cell();

module_length = 267;
module_width = 127;
module_height = 223;

// estimated from battery drawing
interior_length = 237;
interior_width = 103;
interior_height = 157;

%cube([interior_length, interior_width, interior_height]);

module cells() {
for (z=[0:1]) {
    for (y=[0:3]) {
        for (x=[0:5]) {
            translate([x*40+11,y*22+11,z*75]) cell();
        }
    }
}
for (z=[0:1]) {
    for (y=[0:3]) {
        for (x=[0:5]) {
            translate([x*40+31,y*22+22,z*75]) cell();
        }
    }
}
}

// 100 / 3.69 = 27S

// voltage min 100
// voltage max 120
