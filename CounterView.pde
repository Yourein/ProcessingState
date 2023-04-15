class CounterView extends Item {
    private int count = 0;
    private Point position;

    public CounterView(Point pos) {
        position = pos;
    }

    public void draw() {
        fill(255);
        String content = "Current: " + count;
        text(content, position.x - textWidth(content)/2.0, position.y);
        fill(0);
    }

    public void increment() {
        this.count++;
    }
}