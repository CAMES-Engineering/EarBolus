//tekst eksempel
//




font = "DejaVu Sans:style=Bold";
letter_size = 10;
height = 5;
string = "101286";


linear_extrude(height) {
    text(string, size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
};