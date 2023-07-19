include <includingScriptEarBolus.scad>
// IMPORTANT make sure the EarTemplate.scad and includingScriptEarBolus.scad are located in the same folder

// Insert the file path here. You can drag and drop it, or copy the file path. If you drag and drop remember to remove <import()>
filename= "";//Insert file path here

// Insert the CPR number of the patient and the identification number here separate each number with space
CPRnumber="0 0 0 0 0 0 0 0 0 0 0 0";

//Change the bolus thickness the physician ordered the bolus in milimeters.
bolus_thick = 0; //mm

//If needed rotate the ear. The longer side of the ear should be beside the CPR-number
rotate_ear_x = 0; //rotate on x axis
rotate_ear_y = 0;   //rotate on y axis
rotate_ear_z = 0;  //rotate on z axis

// Change the placement of the base square so it fits under the ear. There must be NO HOLES between the ear and square
x_move_box = 0;   //move on x axis
y_move_box = 0;   //move on y axis
z_move_box = 0;    //move on z axis

// If needed change the size of the square. The ear must NOT be over the edges.
x_box = 90;
y_box = 90;
z_box = 10;

//Change placement of small (GREY) cylinder and place it on the highest point of the ear the ensure the minimum thickness.
x_move_small_cylinder= 0;    //changing x-axis
y_move_small_cylinder= 0;      //changing y-axis
z_move_small_cylinder= 0;   //changing z-axis

//Do not change the parameters below
union(){
rotate([rotate_ear_x,rotate_ear_y,rotate_ear_z])
    import(filename);
translate([x_move_box,y_move_box,z_move_box])earbox(x_box,y_box,z_box,CPRnumber,z_move_small_cylinder,bolus_thick,z_move_box);
};
%translate([x_move_small_cylinder,y_move_small_cylinder,z_move_small_cylinder])cylinder(bolus_thick,2,2);