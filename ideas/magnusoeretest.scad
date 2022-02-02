// Insert the file path here. You can drag and drop it, or copy the filepath.
filename="C:/Users/Sanne/Desktop/forsoeg.stl";

// Insert the CPRnumber of the patient here
CPRnumber="123456-0789";

//Size of the box. Change the size of the box, so the ear is covered. The box needs to be a little bigger on the y-axis, so there is room for the CPR-number.
x_box = 78;
y_box = 55;
z_box = 27;

//Change the placement of the CPR-number. Make sure it is opposite the cylinder on the extra space made on the box.
x_move_CPRnr = -58;
y_move_CPRnr = -5;
z_move_CPRnr = 14.3;

//Change placement of small cylinder marker and place it on the tallest point on the ear.
x_move_small_cylinder= -71;    //changing x-axis
y_move_small_cylinder=-32;      //changing y-axis
z_move_small_cylinder= 32.8;   //changing z-axis

// placement of the ear 
x_move_ear = 40; //changing x-axis
y_move_ear = -36; //changing y-axis
z_move_ear = 5; //changing z-axis

// Change the size of the background box
x_move_box = -84;
y_move_box = -52;
z_move_box = -9;

// Change the placement of the blue cylinder. It should be placed in the corner.
x_move_blue_cylinder= -8.2;
y_move_blue_cylinder= -49.9;
z_move_blue_cylinder= z_box+z_move_box;

difference(){
union(){
rotate([-10,20,90])translate([y_move_ear ,x_move_ear ,z_move_ear ])import(filename);
translate([x_move_box,y_move_box,z_move_box])cube([x_box,y_box,z_box]);
};
color("red")
translate([x_move_CPRnr,y_move_CPRnr,z_move_CPRnr])
linear_extrude(4)
text(CPRnumber,font="DejaVu Sans:style=Bold", size=5);
   
};
%translate([x_move_small_cylinder,y_move_small_cylinder,z_move_small_cylinder])cylinder(10,2,2);
    
translate([x_move_blue_cylinder,y_move_blue_cylinder,z_move_blue_cylinder])color("blue")cylinder((z_move_small_cylinder+10)-z_box-z_move_box,2,2);