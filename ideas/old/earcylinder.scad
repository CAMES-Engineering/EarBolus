// Insert the file path here. You can drag and drop it, or copy the filepath.
filename="C:/Users/Sanne/Desktop/earnew.stl";

// Insert the ptnumber of the patient here
ptnumber="00000000001";

//Size of the box. Change the size of the box, so the ear is covered. The box needs to be a little bigger on the y-axis, so there is room for the CPR-number.
x_box = 75;
y_box = 65;
z_box = 28;

//Change the placement of the pt-number. Make sure it is opposite the cylinder on the extra space made on the box.
x_move_ptnr = -35;
y_move_ptnr = 22;
z_move_ptnr = -21;

//Change placement of small cylinder marker and place it on the tallest point on the ear.
x_move_small_cylinder= -8;    //changing x-axis
y_move_small_cylinder=-9;      //changing y-axis
z_move_small_cylinder= 29;   //changing z-axis

// placement of the ear 
x_move_ear = 14; //changing x-axis
y_move_ear = -20; //changing y-axis
z_move_ear = -18; //changing z-axis

// Change the size of the background box
x_move_box = -25;
y_move_box = -35;
z_move_box = -6;

// Change the placement of the blue cylinder. It should be placed in the corner.
x_move_blue_cylinder= -20;
y_move_blue_cylinder= -32;
z_move_blue_cylinder= z_box+z_move_box;

difference(){
union(){
rotate([90,40,90])translate([y_move_ear ,x_move_ear ,z_move_ear ])import(filename);
translate([x_move_box,y_move_box,z_move_box])cube([x_box,y_box,z_box]);
};
color("red")
rotate([0,180,0])translate([x_move_ptnr,y_move_ptnr,z_move_ptnr])
linear_extrude(4)
text(ptnumber,font="DejaVu Sans:style=Bold", size=5);
   
};
%translate([x_move_small_cylinder,y_move_small_cylinder,z_move_small_cylinder])cylinder(10,2,2);
    
translate([x_move_blue_cylinder,y_move_blue_cylinder,z_move_blue_cylinder])color("blue")cylinder((z_move_small_cylinder+10)-z_box-z_move_box,2,2);