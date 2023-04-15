boolean isMouseOverRect(float x, float y, float viewWidth, float viewHeight) {
    return x <= mouseX && mouseX <= x+viewWidth && y <= mouseY && mouseY <= y+viewHeight;
}