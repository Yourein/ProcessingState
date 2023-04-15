RootView rootView;

void setup() {
    size(1280, 720);
    textSize(48);
    rootView = new RootView();
}

void draw() {
    background(50);
    rootView.onEvent(Event.newFrame);
    
    rootView.draw();
}

void keyPressed() { rootView.onEvent(Event.onKeyPressed); }
void keyReleased() { rootView.onEvent(Event.onKeyReleaseed); }
void keyTyped() { rootView.onEvent(Event.onKeyTyped); }
void mouseClicked() { rootView.onEvent(Event.onClicked); }
void mouseDragged() { rootView.onEvent(Event.onDragged); }
void mouseMoved() { rootView.onEvent(Event.onMouseMoved); }
void mousePressed() { rootView.onEvent(Event.onMousePressed); }
void mouseReleased() { rootView.onEvent(Event.onMouseReleased); }
void mouseWheel() { rootView.onEvent(Event.onMouseWheel); }