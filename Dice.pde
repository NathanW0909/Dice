ArrayList<Die> dice;  // Store all dice in an array list
boolean clicked = false;  // Track if the mouse was clicked

void setup() {
    size(500, 500);
    noLoop();
    dice = new ArrayList<Die>();
    
    // Create 25 dice (5x5 grid)
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            Die die = new Die(50 + j * 80, 50 + i * 80);  // Create dice with spacing
            dice.add(die);  // Add each die to the list
        }
    }
}

void draw() {
    background(255);  // white background
    int total = 0;
    
    // Display all dice and calculate the total
    for (Die die : dice) {
        die.show();
        total += die.value;
    }
    
    // Display the total at the bottom of the screen
    fill(0);
    textSize(20);
    text("Total: " + total, 50, height - 30);  // Display total at the bottom
}

void mousePressed() {
    clicked = true;  // Flag to indicate that mouse was pressed
    redraw();
}

class Die {
    int x, y, size, value;
    color dieColor;  // Store the color of the die

    // Constructor to initialize position, size, and color
    Die(int x, int y) {
        this.x = x;
        this.y = y;
        this.size = 60;
        roll();  // Randomly roll the die
        // Assign a random color to the die
        dieColor = color(random(100, 255), random(100, 255), random(100, 255));
    }

    // Roll the die and assign a random value between 1 and 6
    void roll() {
        value = (int)(Math.random() * 6) + 1;
    }

    // Display the die and its dots based on the rolled value
    void show() {
        if (clicked) {
            fill(0);  // Change to black if the mouse is clicked
        } else {
            fill(dieColor);  // Use the assigned random color otherwise
        }
        rect(x, y, size, size);  // Draw the die

        fill(0);  // Dots are always black
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
