module earbox(x_box,y_box,z_box,CPRnumber,z_move_small_cylinder, bolus_thick,z_move_box){

//Change the placement of the CPR-number. Make sure it is opposite the cylinder on the extra space made on the box. If some of the ear disappears then the CPR-number needs to be placed further away from the ear. You might have to enlarge the box more.
x_move_CPRnr = 4;
y_move_CPRnr = y_box-5;
z_move_CPRnr = z_box+3;


// Change the placement of the blue cylinder. It should be placed as far in the corner as possible.
x_move_blue_cylinder= x_box-3;
y_move_blue_cylinder= 3;
z_move_blue_cylinder= z_box;


module cubeEar(){
    cube([x_box,y_box,z_box]);
    color("red")
    
        translate([x_move_CPRnr,y_move_CPRnr,z_move_CPRnr])
        rotate([-180,0,0])
        linear_extrude(4)
        text(CPRnumber,font="DejaVu Sans:style=Bold", size=5);
    translate([x_move_blue_cylinder,y_move_blue_cylinder,z_move_blue_cylinder])color("blue")cylinder((z_move_small_cylinder+bolus_thick)-z_box-z_move_box,2,2);
}
cubeEar();

}


    
