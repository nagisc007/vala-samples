/* Build: 
 *      valac hello_world.vala
 * Run:
 *      .hello_world
 * */
class SimpleCallback : Object {
    public signal void some_event ();   // definition of the signal

    public void method () {
        some_event ();                  // emitting the signal (callbacks get invoked)
    }
}

void callback_a () {
    stdout.printf ("Callback A\n");
}

void callback_b () {
    stdout.printf ("Callback B\n");
}

void main () {
    var scb = new SimpleCallback ();
    scb.some_event.connect (callback_a);      // connecting the callback functions
    scb.some_event.connect (callback_b);
    scb.method ();
    
    return;
}
