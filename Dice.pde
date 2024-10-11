void setup() {
    size(400, 400);
    noLoop();  // ensures draw() runs only once unless redraw is called
}

void draw() {
    background(255);  // white background
    int total = 0;  // total of all dice values
    
    // Create a 3x3 grid of dice
    for (int i = 0; i < 3; i++) {  // 3 rows
        for (int j = 0; j < 3; j++) {  // 3 columns
            Die die = new Die(100 + j * 60, 100 + i * 60);  // create a die at (x, y) positions
            die.show();  // draw the die
            total += die.value;  // add the die value to the total
        }
    }
    
    // Display the total at the bottom of the screen
    fill(0);  // set text color to black
    textSize(20);
    text("Total: " + total, 100, 350);  // display the total
}

void mousePressed() {
    redraw();  // allows the sketch to refresh and roll the dice again
}

class Die {
    int x, y, size, value;  // member variables

    // Constructor to initialize the position and size of the die
    Die(int x, int y) {
        this.x = x;
        this.y = y;
        this.size = 50;  // fixed size of the die
        roll();  // randomly roll the die
    }

    // Roll the die and assign a random value between 1 and 6
    void roll() {
        value = (int)(Math.random() * 6) + 1;
    }

    // Display the die and its dots based on the rolled value
    void show() {
        rect(x, y, size, size);  // draw the die as a square

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
}
