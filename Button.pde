interface onClickHandler {
    public void onClicked();
}

class Button extends InteractiveActionableItem {
    private String label = "Button";
    private float bWidth, bHeight;
    private onClickHandler clickAction;
    private Point position;

    public Button(Point pos, float _width, float _height, String labelText, onClickHandler cAction) {
        this.position = pos;
        bWidth = _width;
        bHeight = _height;
        clickAction = cAction;
    }

    public void draw() {
        fill(255);
        rect(this.position.x, this.position.y, bWidth, bHeight, 30);
        fill(0);
        text(label, this.position.x + (bWidth - textWidth(label))/2.0, this.position.y + bHeight - 24);
    }

    public void onEvent(Event kind) {
        if (kind == Event.onClicked) {
            if (isMouseOverRect(this.position.x, this.position.y, this.bWidth, this.bHeight)) {
                action(kind);
            }
        }
    }

    protected void action(Event kind) {
        if (kind == Event.onClicked) {
            clickAction.onClicked();
        }
    }
}