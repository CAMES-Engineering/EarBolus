// Insert the file path here
filename="C:/Users/Sanne/Downloads/Bolus.stl";

// Insert the CPRnumber of the patient here
f2="999999-9999";

//change placement of small cylinder marker and place it on the 
a1= -39.8;    //changing x-axis
a2=3;      //changing y-axis
a3= 35;   //changing z-axis

// placement of the ear 
e1 = -17; //changing x-axis
e2 = 200; //changing y-axis
e3 = -50; //changing z-axis


z_box = 27;
z_move_box = -9;
// Change the size 

difference(){
%union(){
rotate([0,-90,0])translate([e3,e2,e1])import(filename);
translate([-84,-52,z_move_box])cube([82,76,z_box]);
};
color("red")translate([-36,18,17.8])text(f2,4);
   
};
translate([a1,a2,a3])cylinder(10,2,2);
    
translate([-10,-45,z_box+z_move_box])color("blue")cylinder((a3+10)-z_box-z_move_box,2,2);