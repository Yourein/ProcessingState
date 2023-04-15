enum Event {
    onKeyTyped, onKeyPressed, onKeyReleaseed,
    onClicked, onDragged, onMouseMoved, onMousePressed, onMouseReleased, onMouseWheel,
    newFrame
}

class Point {
    public float x, y;
    public Point(float _x, float _y) { x = _x; y = _y; }
}

abstract class lambda<K, V> {
    abstract V f(K arg);
}

interface View {
    abstract public void draw();
}

interface Interactive {
    abstract public void onEvent(Event kind);
}

abstract class Actionable {
    abstract protected void action(Event kind);
}

abstract class Item implements View {
    private Point position;

    abstract public void draw();
}

abstract class InteractiveItem implements View, Interactive {
    private Point position;

    abstract public void draw();
    abstract public void onEvent(Event kind);
}

abstract class InteractiveActionableItem extends Actionable implements View, Interactive {
    private Point position;

    abstract public void draw();
    abstract public void onEvent(Event kind);
    abstract protected void action(Event kind);
}