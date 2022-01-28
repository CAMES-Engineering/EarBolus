// Insert the file path here
filename="C:/Users/Sanne/Desktop/bibolus.stl";

// Insert the CPRnumber of the patient here
CPRnumber="999999-9999";

//change placement of small cylinder marker and place it on the 
x_move_small_cylinder= -48;    //changing x-axis
y_move_small_cylinder=3;      //changing y-axis
z_move_small_cylinder= 40;   //changing z-axis

// placement of the ear 
e1 = -9; //changing x-axis
e2 = -43.4; //changing y-axis
e3 = 15; //changing z-axis



z_box = 27;
z_move_box = -9;
// Change the size 

difference(){
union(){
rotate([0,0,270])translate([e3,e2,e1])import(filename);
translate([-84,-52,z_move_box])cube([82,76,z_box]);
};
//color("red")
//translate([-27,19,17.8])
//linear_extrude(2)
//text(CPRnumber,font="Liberation Sans:style=Bold", size=3);

   
};
%translate([x_move_small_cylinder,y_move_small_cylinder,z_move_small_cylinder])cylinder(10,2,2);
    
translate([-4,-49.6,z_box+z_move_box])color("blue")cylinder((z_move_small_cylinder+10)-z_box-z_move_box,2,2);