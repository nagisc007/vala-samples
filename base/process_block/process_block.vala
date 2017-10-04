/* Build: 
 *      valac hello_world.vala
 * Run:
 *      .hello_world
 * */
class Sample.ProcessBlock : GLib.Object {

    public static int main(string[] args) {
        try {
            // non-blocking
            Process.spawn_command_line_async("ls");
            
            // blocking (waits for the process to finish)
            Process.spawn_command_line_sync("ls");
            
            // blocking with output
            string standard_output, standard_error;
            int exit_status;
            Process.spawn_command_line_sync("ls",
                out standard_output, out standard_error, out exit_status);
                
        } catch (SpawnError e) {
            stderr.printf("%s\n", e.message);
        }
    
        return 0;
    }
}
