/* Build: 
 *      valac hello_world.vala
 * Run:
 *      .hello_world
 * */
class Sample.StdInput : GLib.Object {

    public static int main(string[] args) {

        stdout.printf("Input a word. >> ");
        string name = stdin.read_line();
        
        if (name != null) {
                stdout.printf("Word is %s\n", name);
        }

        return 0;
    }
}
