//change placement of cylinder marker
a1= 26;    //changing x-axis
a2=0;      //changing y-axis
a3= -72;   //changing z-axis

//change placement of ear values
h1=-60; //changing x
h2=200; //changing y
h3=-20; //changing z

//change the size of the ear
h11=1; //scaling x
h12=1; //scaling y
h13=1; //scaling z




difference(){ 
translate([-20,-63,-4])cube([70,100,95]);
translate([10,-52,-1])cube([70,78,83]);
    };
scale([h11,h12,h13])translate([h1,h2,h3])import("C:/Users/Sanne/Documents/GitHub/EarBolus/ideas/Bolus.stl");
    rotate([0,90,0])translate([a3,a2,a1])color("red")cylinder(10,2,2);
    
    
    
