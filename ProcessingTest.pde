abstract class lambda<K, V> {
    abstract V f(K arg);
}

void setup() {
    // println(
    //     new lambda<String, Integer>() {
    //         public Integer f(String s) {
    //             return Integer.parseInt(s);
    //         }
    //     }.f("127")
    // );

    // println(
    //     new lambda<Void, Integer>() {
    //         public Integer f(Void a) {
    //             return 1;
    //         }
    //     }.f(null)
    // );

    Hoge ho = new Hoge();
    println(ho.s);
    ho.mutate();
    println(ho.s);
}

abstract class View {
    private float xBegin, yBegin, viewHeight, viewWidth;
    abstract public void draw();
}

abstract class Interactive {
    private boolean isViewActive = false;
    private 
    
    private boolean isMouseOver() {
        if ()
    }

    public boolean isViewActive();
    
}

abstract class Observable {

}

abstract class State {

}

class Hoge {
    public String s = "Hello";
    private Huga hu = new Huga();

    public void mutate() {
        hu.mutate(this);
    }
}

class Huga {
    private String ss = "World";

    public void mutate(Hoge parent) {
        parent.s = ss;
    }
}

void draw() {

}