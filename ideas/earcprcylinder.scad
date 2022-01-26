f2="123456-7890";
filename="C:/Users/Sanne/Downloads/Bolus.stl";

//change placement of cylinder marker
a1= -39.8;    //changing x-axis
a2=3;      //changing y-axis
a3= 34;   //changing z-axis

difference(){
%union(){
rotate([0,-90,0])translate([-50,200,-17])import(filename);
translate([-84,-52,-9])cube([82,76,27]);
};
color("red")translate([-36,18,17.8])text(f2,4);
   
};
translate([a1,a2,a3])cylinder(10,2,2);
    
translate([-10,-45,13.6])cylinder(a3+10,2,2);