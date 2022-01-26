//change placement of cylinder marker
a1= 35.7;    //changing x-axis
a2=3;      //changing y-axis
a3= -39.8;   //changing z-axis

//change placement of ear values
h1=-50; //changing x
h2=200; //changing y
h3=-20; //changing z



difference(){ 
translate([-20,-63,-4])cube([70,100,95]); //PAsser denne størrelse altid ?
translate([-12,-52,-1])cube([70,78,83]);
    };
translate([h1,h2,h3])import("/Users/sinan/Downloads/Bolus.stl"); //Kan denne parameteriseres
    
    rotate([0,90,0])translate([a3,a2,a1])cylinder(10,2,2);
