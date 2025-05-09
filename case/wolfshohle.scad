/*
 * Wolfshöhle Case
 * Copyright (c) 2024 Lone Dynamics Corporation. All rights reserved.
 *
 * required hardware:
 *  - 2 x M3 x 12mm bolt
 *  - 2 x M3 nuts
 *
 */
  
$fn = 30;

box_width = 35;
box_length = 25;
box_height = 12;
box_thickness = 2.0;

lid_thickness = 2.5;

cutout_width = 16.50;
cutout_length = 24.50;
cutout_height = 9.5;

cutout_usb_width = 12;

board_height = 1.4;

roundness = 1;

translate([0,0,0]) color([0.8,0.8,0.8]) msb_case();
//translate([0,0,-2.5]) msb_board();

//translate([0,-27,3.5]) zwolf();

module msb_board()
{
	
	difference() {
		union() {
			color([0.0,0.8,0.0]) cube([35, 50, 1.6], center=true);
			
			translate([0,-21.5,2.5]) color([1,1,1]) cube([12, 2, 6.5], center=true);
			translate([0,-22.5,1.5]) color([0,0,0]) cube([12, 5, 4.6], center=true);
			
		}
		translate([35/2-4,-50/2+4,-10]) cylinder(d=3, h=100);
		translate([-35/2+4,-50/2+4,-10]) cylinder(d=3, h=100);
	}
	
}


module msb_case()
{	

    translate([0,-50/2+2.5,4.75]) rotate([0,90,0]) cylinder(d=2.65, h=18, center=true, $fn=36);
    
	difference() {
		
		union() {
            translate([0,-50/2+3.5,2.2]) {
                cube([35,7,7.75], center=true);
            }
            

        }

        translate([0,-50/2+5-3,0]) {
            cube([16.5+0.2,8.5,7], center=true);
        }

        translate([0,-50/2+5-5.4,5]) {
            cube([16.5+0.2,6,5], center=true);
        }

		// bolt holes
		translate([35/2-4,-50/2+4,-10]) cylinder(d=3.5, h=100);
		translate([-35/2+4,-50/2+4,-10]) cylinder(d=3.5, h=100);
		

		
	}
	
}

 
module zwolf(height = 1.6)
{
	 
	translate([0,-2.25,0])
		linear_extrude(1)
			text("zwölf", size=2, halign="center", font="Lato:style=Black");

	 difference() {
		 
		union () {
			color([0,1,0]) cube([16,13.5,height], center=true);
			translate([-6.35,4,0]) color([1,1,0]) cube([1.7,5,height+0.01], center=true);
			translate([-6.35,-4,-0.01]) color([1,1,0]) cube([1.7,5,height+0.01], center=true);
			translate([-3.81,4,0]) color([1,1,0]) cube([1.7,5,height+0.01], center=true);
			translate([-3.81,-4,-0.01]) color([1,1,0]) cube([1.7,5,height+0.01], center=true);
			translate([-1.27,4,0]) color([1,1,0]) cube([1.7,5,height+0.01], center=true);
			translate([-1.27,-4,-0.01]) color([1,1,0]) cube([1.7,5,height+0.01], center=true);
			translate([1.27,4,0]) color([1,1,0]) cube([1.7,5,height+0.01], center=true);
			translate([1.27,-4,-0.01]) color([1,1,0]) cube([1.7,5,height+0.01], center=true);
			translate([3.81,4,0]) color([1,1,0]) cube([1.7,5,height+0.01], center=true);
			translate([3.81,-4,-0.01]) color([1,1,0]) cube([1.7,5,height+0.01], center=true);
			translate([6.35,4,0]) color([1,1,0]) cube([1.7,5,height+0.01], center=true);
			translate([6.35,-4,-0.01]) color([1,1,0]) cube([1.7,5,height+0.01], center=true);
	   }
	 
		translate([-6.35,2.75,-1]) cylinder(d=1, h=10);		 
		translate([-6.35,2.75-7.62,-1]) cylinder(d=1, h=10);
		translate([-3.81,2.75,-1]) cylinder(d=1, h=10);
		translate([-3.81,2.75-7.62,-1]) cylinder(d=1, h=10);
		translate([-1.27,2.75,-1]) cylinder(d=1, h=10);
		translate([-1.27,2.75-7.62,-1]) cylinder(d=1, h=10);
		translate([1.27,2.75,-1]) cylinder(d=1, h=10);
		translate([1.27,2.75-7.62,-1]) cylinder(d=1, h=10);
		translate([3.81,2.75,-1]) cylinder(d=1, h=10);
		translate([3.81,2.75-7.62,-1]) cylinder(d=1, h=10);
		translate([6.35,2.75,-1]) cylinder(d=1, h=10);
		translate([6.35,2.75-7.62,-1]) cylinder(d=1, h=10);
		
	 }
 }
