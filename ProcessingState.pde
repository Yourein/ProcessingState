abstract class lambda<K, V> {
    abstract V f(K arg);
}

enum Event {
    onClicked, onKeyTyped, onKeyPressed, onKeyReleaseed,
    onDragged, onMouseMoved, onMousePressed, onMouseReleased, onMouseWheel
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
