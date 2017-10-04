/* Build: 
 *      valac hello_world.vala
 * Run:
 *      .hello_world
 * */

public class BasicSample : Object {

    public void run () {
        stdout.printf ("Hello World\n");
    }

    static int main (string[] args) {
        var sample = new BasicSample ();
        sample.run ();
        return 0;
    }
}
