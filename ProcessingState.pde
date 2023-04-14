abstract class lambda<K, V> {
    abstract V f(K arg);
}

interface View {
    abstract public void draw();
}

abstract class AbstractView implements View {
    abstract public void draw();
}

abstract class AbstractActionableView extends AbstractView {
    abstract public void draw();
}

// abstract class View {
//     float xPadding, yPadding; // Padding from the top-left corner of the parent
//     abstract void draw();
// }

void setup() {

}

void draw() {

}
