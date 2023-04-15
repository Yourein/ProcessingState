class RootView extends InteractiveItem {
    ArrayList<View> child = new ArrayList<View>();
    private Point position = new Point(0, 0);

    public RootView() {
        child.add(
            new Button(
                new Point(width/2 - 100, height/2 + 50),
                230,
                80,
                "Button",
                () -> { this.incrementCounter(); }
            )
        );

        child.add(
            new CounterView(
                new Point(width/2, height/2)
            )
        );
    }

    void draw() {
        child.stream()
            .forEach((i) -> { 
                i.draw(); 
            });
    }

    void onEvent(Event kind) {
        child.stream()
            .filter((i) -> { 
                return i instanceof Interactive; 
            })
            .forEach((i) -> {
                ((Interactive) i).onEvent(kind);
            });
    }

    void incrementCounter() {
        ((CounterView) this.child.get(1)).increment();
    }
}