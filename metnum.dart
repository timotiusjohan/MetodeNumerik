import 'dart:math';

class Soal1 {
  static const double e = 2.718281828;
  double initialA, initialB, a, b, c, fa, fb, fc, epsilon, lebar;
  String SelangBaru;
  int r = 0;

  Soal1(double a, double b, double eps) {
    this.initialA = a;
    this.initialB = b;
    this.epsilon = eps;
  }

  void assignment() {
    a = initialA;
    b = initialB;
    lebar = b - a;
  }

  double hitungF(double abc) {
    return pow(2, abc) - abc - 1.7;
  }

  void hitung() {
    assignment();
    print(
        "| r      a         c         b         f(a)         f(c)         f(b)         Selang Baru         Lebar|");
    while (lebar > epsilon) {
      c = (a + b) / 2;
      fa = hitungF(a);
      fb = hitungF(b);
      fc = hitungF(c);
      if (fa * fc < 0) {
        SelangBaru = "[a,c]";
        lebar = c - a;
        print("| $r   " +
            a.toStringAsFixed(6) +
            "  " +
            c.toStringAsFixed(6) +
            "  " +
            b.toStringAsFixed(6) +
            "   " +
            fa.toStringAsFixed(6) +
            "     " +
            fc.toStringAsFixed(6) +
            "     " +
            fb.toStringAsFixed(6) +
            "         $SelangBaru         " +
            lebar.toStringAsFixed(6) +
            "|");
        r++;
        b = c;
      } else if (fc * fb < 0) {
        SelangBaru = "[c,b]";
        lebar = b - c;
        print("| $r   " +
            a.toStringAsFixed(6) +
            "  " +
            c.toStringAsFixed(6) +
            "  " +
            b.toStringAsFixed(6) +
            "   " +
            fa.toStringAsFixed(6) +
            "     " +
            fc.toStringAsFixed(6) +
            "     " +
            fb.toStringAsFixed(6) +
            "         $SelangBaru         " +
            lebar.toStringAsFixed(6) +
            "|");
        r++;
        a = c;
      }
    }
  }
}

class Soal2 {
  static const double e = 2.718281828;
  double initialA, initialB, a, b, c, fa, fb, fc, epsilon, lebar;
  String SelangBaru;
  int r = 0;

  Soal2(double a, double b, double eps) {
    this.initialA = a;
    this.initialB = b;
    this.epsilon = eps;
  }

  void assignment() {
    a = initialA;
    b = initialB;
    lebar = b - a;
  }

  double hitungF(double abc) {
    return pow(2, abc) - abc - 1.7;
  }

  void hitung() {
    assignment();
    print(
        "| r      a         c         b         f(a)         f(c)         f(b)         Selang Baru         Lebar|");
    while (lebar > epsilon) {
      fa = hitungF(a);
      fb = hitungF(b);
      c = b - ((fb * (b - a)) / (fb - fa));
      fc = hitungF(c);

      if (fa * fc < 0) {
        SelangBaru = "[a,c]";
        lebar = c - a;
        print("| $r   " +
            a.toStringAsFixed(6) +
            "  " +
            c.toStringAsFixed(6) +
            "  " +
            b.toStringAsFixed(6) +
            "   " +
            fa.toStringAsFixed(6) +
            "     " +
            fc.toStringAsFixed(6) +
            "     " +
            fb.toStringAsFixed(6) +
            "         $SelangBaru         " +
            lebar.toStringAsFixed(6) +
            "|");
        r++;
        b = c;
      } else if (fc * fb < 0) {
        SelangBaru = "[c,b]";
        lebar = b - c;
        print("| $r   " +
            a.toStringAsFixed(6) +
            "  " +
            c.toStringAsFixed(6) +
            "  " +
            b.toStringAsFixed(6) +
            "   " +
            fa.toStringAsFixed(6) +
            "     " +
            fc.toStringAsFixed(6) +
            "     " +
            fb.toStringAsFixed(6) +
            "         $SelangBaru         " +
            lebar.toStringAsFixed(6) +
            "|");
        r++;
        a = c;
      }
    }
  }
}

void main(List<String> args) {
  print("Soal 1");
  Soal1 soal1 = new Soal1(-1.5, -1, 0.000001);
  soal1.hitung();
  print("Soal 2");
  Soal2 soal2 = new Soal2(-1.5, -1, 0.000001);
  soal2.hitung();
}
