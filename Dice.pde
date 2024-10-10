

void show() {
    rect(x, y, size, size);  // draw the die
    
    // Draw dots based on the value of the die
    if (value == 1) {
        ellipse(x + size / 2, y + size / 2, 10, 10);  // center
    } else if (value == 2) {
        ellipse(x + size / 4, y + size / 4, 10, 10);  // top-left
        ellipse(x + 3 * size / 4, y + 3 * size / 4, 10, 10);  // bottom-right
    } else if (value == 3) {
        ellipse(x + size / 2, y + size / 2, 10, 10);  // center
        ellipse(x + size / 4, y + size / 4, 10, 10);  // top-left
        ellipse(x + 3 * size / 4, y + 3 * size / 4, 10, 10);  // bottom-right
    } else if (value == 4) {
        ellipse(x + size / 4, y + size / 4, 10, 10);  // top-left
        ellipse(x + 3 * size / 4, y + size / 4, 10, 10);  // top-right
        ellipse(x + size / 4, y + 3 * size / 4, 10, 10);  // bottom-left
        ellipse(x + 3 * size / 4, y + 3 * size / 4, 10, 10);  // bottom-right
    } else if (value == 5) {
        ellipse(x + size / 2, y + size / 2, 10, 10);  // center
        ellipse(x + size / 4, y + size / 4, 10, 10);  // top-left
        ellipse(x + 3 * size / 4, y + size / 4, 10, 10);  // top-right
        ellipse(x + size / 4, y + 3 * size / 4, 10, 10);  // bottom-left
        ellipse(x + 3 * size / 4, y + 3 * size / 4, 10, 10);  // bottom-right
    } else if (value == 6) {
        ellipse(x + size / 4, y + size / 4, 10, 10);  // top-left
        ellipse(x + 3 * size / 4, y + size / 4, 10, 10);  // top-right
        ellipse(x + size / 4, y + size / 2, 10, 10);  // middle-left
        ellipse(x + 3 * size / 4, y + size / 2, 10, 10);  // middle-right
        ellipse(x + size / 4, y + 3 * size / 4, 10, 10);  // bottom-left
        ellipse(x + 3 * size / 4, y + 3 * size / 4, 10, 10);  // bottom-right
    }
}
