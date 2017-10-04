
/* atomic types */
unichar c = 'u';
float percentile = 0.75f;
const double MU_BOHR = 927.400915E-26;
bool the_box_has_crashed = false;

/* defining a struct */
struct Vector {
    public double x;
    public double y;
    public double z;
    
    public Vector(double x, double y, double z) {
            this.x = x;
            this.y = y;
            this.z = z;
    }
}

/* defining an enum */
enum WindowType {
    TOPLEVEL,
    POPUP
}


public static int main(string[] args) {
    /* text */
    string text = "A string literal";
    
    int a = 6, b = 7;
    string s = @"$a * $b = $(a * b)";  // => "6 * 7 = 42"
    
    string greeting = "hello, world";
    string s1 = greeting[7:12];        // => "world"
    string s2 = greeting[-4:-2];       // => "or"
    
    stdout.printf("**** atomic types ****\n");
    stdout.printf("unichar: %s\n", c.to_string());
    stdout.printf("float: %f\n", percentile);
    stdout.printf("double: %g\n", MU_BOHR);
    stdout.printf("bool: %s\n", the_box_has_crashed.to_string());
    
    Vector vec = Vector(1,2,3);
    //vec.x = 1;
    stdout.printf("**** a struct ****\n");
    stdout.printf("Vector: %f,%f,%f\n", vec.x, vec.y, vec.z);
    
    stdout.printf("**** string ****\n");
    stdout.printf("string is %s\n", text);
    
    stdout.printf("**** template ****\n");
    stdout.printf("%s\n", s);
    
    stdout.printf("**** string index ****\n");
    stdout.printf("%s ->\n%s\n%s\n", greeting, s1, s2);
    
    bool parse_b = bool.parse("false");           // => false
    int parse_i = int.parse("-52");               // => -52
    double parse_d = double.parse("6.67428E-11"); // => 6.67428E-11
    string parse_s1 = true.to_string();           // => "true"
    string parse_s2 = 21.to_string();             // => "21"
    
    stdout.printf("**** parsing ****\n");
    stdout.printf("%s\n", parse_b.to_string());
    stdout.printf("%d\n", parse_i);
    stdout.printf("%g\n", parse_d);
    stdout.printf("%s\n", parse_s1);
    stdout.printf("%s\n", parse_s2);
    
    return 0;
}
