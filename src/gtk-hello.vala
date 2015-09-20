int main(string[] args){
    Gtk.init(ref args);//gtk initialised
    
    var window=new Gtk.Window();//window creation and parameters' definition
    window.title="Hello World!";
    window.set_border_width(12);
    window.set_position(Gtk.WindowPosition.CENTER);
    window.set_default_size(350,70);
    
    var button_hello=new Gtk.Button.with_label("Click me!");//button creation and parameters' definition
    button_hello.clicked.connect(()=>{
    button_hello.label="Hey! First Hello from Freya!";
    button_hello.set_sensitive(false);
    });
    
    window.add(button_hello);
    window.show_all();
    
    Gtk.main();
    return 0;
    
}

