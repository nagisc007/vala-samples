/* Build: 
 *      valac hello_world.vala
 * Run:
 *      .hello_world
 * */
class Sample.TryCatch : GLib.Object {

    public static int main(string[] args) {
        try {
            string filename = "data.txt";
            
            // writing
            string content = "hello, world";
            FileUtils.set_contents(filename, content);
            
            // reading
            string read;
            FileUtils.get_contents(filename, out read);
            
            stdout.printf("The content of file '%s' is:\n%s\n", filename, read);
        } catch (FileError e) {
            stderr.printf("%s\n", e.message);
        }

        return 0;
    }
}
