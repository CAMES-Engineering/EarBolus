//change placement of cylinder marker
a1= 0;    //changing x-axis
a2=0;      //changing y-axis
a3= 0;   //changing z-axis

//change placement of ear values
h1=-0; //changing x
h2=0; //changing y
h3=-0; //changing z

//change the size of the ear
h11=0; //scaling x
h12=0; //scaling y
h13=0; //scaling z



difference(){ 
translate([-20,-63,-4])cube([70,100,95]);
translate([-12,-52,-1])cube([70,78,83]);
    };
translate([h1,h2,h3])//Insert the STL file here
    scale([h11,h12,h13])rotate([0,90,0])translate([a3,a2,a1])cylinder(10,2,2);
