/* Build: 
 *      valac math_sample.vala
 * Run:
 *      .math_sample
 * */
class Sample.MathSample : GLib.Object {

    public static int main(string[] args) {

        stdout.printf("Please enter the radius of a circle: ");
        double radius = double.parse (stdin.read_line ());
        stdout.printf ("Circumference: %g\n", 2 * Math.PI * radius);
        
        stdout.printf ("sin(pi/2) = %g\n", Math.sin (Math.PI / 2));
        
        // Random numbers
        
        stdout.printf ("Today's lottery results:");
        for (int i = 0; i < 6; i++) {
            stdout.printf (" %d", Random.int_range (1, 49));
        }
        stdout.printf ("\n");
        
        stdout.printf ("Random number between 0 and 1: %g\n", Random.next_double ());

        return 0;
    }
}
