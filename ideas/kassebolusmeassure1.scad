//change placement of cylinder marker
a1= -39.8;   //changing z-axis
a2=3;      //changing y-axis
a3= 35.7;    //changing x-axis

//change placement of ear values
h1=-50; //changing x
h2=200; //changing y
h3=-20; //changing z



difference(){ 
translate([-20,-63,-4])cube([70,100,95]);
translate([-12,-52,-1])cube([70,78,83]);
    };
translate([h1,h2,h3])import("/Users/sinan/Downloads/Bolus.stl");
    rotate([0,90,0])translate([a1,a2,a3])cylinder(10,2,2);
