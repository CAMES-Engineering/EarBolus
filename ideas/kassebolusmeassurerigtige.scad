//change placement of cylinder marker
a1= 34;    //changing x-axis
a2=3;      //changing y-axis
a3= -39.8;   //changing z-axis

//change placement of ear values
h1=-50; //changing x
h2=200; //changing y
h3=-17; //changing z



difference(){ 
translate([-84,-53,-15])cube([90,82,60]);
translate([-80,-50,-9])cube([82,76,70]);
    };
rotate([0,-90,0])translate([h1,h2,h3])import("C:/Users/Sanne/Downloads/Bolus.stl");
    translate([a3,a2,a1])cylinder(10,2,2);
    
    translate([-10,20,0])cylinder(a1+10,2,2);
    
