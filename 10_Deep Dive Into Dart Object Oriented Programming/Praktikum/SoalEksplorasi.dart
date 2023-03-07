import 'dart:math';

class Shape {
  int getArea() {
    return 0;
  }

  int getPerimeter() {
    return 0;
  }
}

class Circle implements Shape {
  int radius;
  Circle(
    this.radius,
  );

  @override
  int getArea() {
    return (pi * radius * radius).toInt();
  }

  @override
  int getPerimeter() {
    return (2 * pi * radius).toInt();
  }
}

class Square implements Shape {
  int side;
  Square(
    this.side,
  );

  @override
  int getArea() {
    return side * side;
  }

  @override
  int getPerimeter() {
    return 4 * side;
  }
}

class Rectangle implements Shape {
  int width, height;
  Rectangle(
    this.width,
    this.height,
  );
  @override
  int getArea() {
    return width * height;
  }

  @override
  int getPerimeter() {
    return 2 * (width + height);
  }
}

void main() {
  Circle circle = Circle(7);
  print('Luas Lingkaran = ${circle.getArea()}');
  print('Keliling Lingkaran = ${circle.getPerimeter()}');

  Square square = Square(7);
  print('\nLuas Persegi = ${square.getArea()}');
  print('Keliling Persegi = ${square.getPerimeter()}');

  Rectangle rectangle = Rectangle(7, 5);
  print('\nLuas Persegi Panjang dengan = ${rectangle.getArea()}');
  print('Keliling Persegi Panjang = ${rectangle.getPerimeter()}');
}
