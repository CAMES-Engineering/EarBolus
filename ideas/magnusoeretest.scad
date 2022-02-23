// Insert the file path here. You can drag and drop it, or copy the filepath.
filename="C:/Users/Sanne/Desktop/forsoeg.stl";

// Insert the CPRnumber of the patient here
CPRnumber="0 3 0 2 2 2 0 7 8 9";

// placement of the ear 
x_move_ear = 40; //changing x-axis
y_move_ear = -18; //changing y-axis
z_move_ear = 15; //changing z-axis

//Size of the box. Change the size of the box, so the ear is covered. The box needs to be a little bigger on the y-axis, so there is room for the CPR-number. 
x_box = 80;
y_box = 80;
z_box = 27;

// Change the size of the background box
x_move_box = -84;
y_move_box = -52;
z_move_box = -9;

//Change the placement of the CPR-number. Make sure it is opposite the cylinder on the extra space made on the box. If some of the ear disappears then the CPR-number needs to be placed further away from the ear. You might have to enlarge the box more.
x_move_CPRnr = -77;
y_move_CPRnr = -20;
z_move_CPRnr = -21;

//Change placement of small cylinder marker and place it on the tallest point on the ear.
x_move_small_cylinder= -71;    //changing x-axis
y_move_small_cylinder=-10;      //changing y-axis
z_move_small_cylinder= 34;   //changing z-axis


// Change the placement of the blue cylinder. It should be placed as far in the corner as possible.
x_move_blue_cylinder= -6.2;
y_move_blue_cylinder= -49.9;
z_move_blue_cylinder= z_box+z_move_box;

//You might need to rotate the ear. If needed use the parameters below.
rotate_ear_x = -10;
rotate_ear_y = 10;
rotate_ear_z = 90;

union(){
union(){
rotate([rotate_ear_x,rotate_ear_y,rotate_ear_z])translate([y_move_ear ,x_move_ear ,z_move_ear ])import(filename);
translate([x_move_box,y_move_box,z_move_box])cube([x_box,y_box,z_box]);
};
color("red")
rotate([-180,0,0])
translate([x_move_CPRnr,y_move_CPRnr,z_move_CPRnr])
linear_extrude(4)
text(CPRnumber,font="DejaVu Sans:style=Bold", size=5);
   
};
%translate([x_move_small_cylinder,y_move_small_cylinder,z_move_small_cylinder])cylinder(10,2,2);
    
translate([x_move_blue_cylinder,y_move_blue_cylinder,z_move_blue_cylinder])color("blue")cylinder((z_move_small_cylinder+10)-z_box-z_move_box,2,2);