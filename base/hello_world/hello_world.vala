/* Build: 
 *      valac hello_world.vala
 * Run:
 *      .hello_world
 * */
class Demo.HelloWorld : GLib.Object {

    public static int main(string[] args) {

        stdout.printf("Hello, World\n");

        return 0;
    }
}
