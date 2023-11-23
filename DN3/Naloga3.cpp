#include <iostream>
#include <cmath>

using namespace std;

// Funkcija e^(3x)
double func1(double x) {
    return exp(3 * x);
}

// Funkcija arctan(x/2) s pomočjo razvoja Taylorjeve vrste
double arctan(double x, int n) {
    double result = 0;
    for (int i = 0; i < n; i++) {
        result += pow(-1, i) * pow(x, 2 * i + 1) / (2 * i + 1);
    }
    return result;
}

// Trapezna metoda za izračun integrala
double trapezoidal(double (*func)(double), double a, double b, int n) {
    double h = (b - a) / n;
    double result = 0.5 * (func(a) + func(b));

    for (int i = 1; i < n; i++) {
        result += func(a + i * h);
    }

    return h * result;
}

int main() {
    // Interval [a, b] in število podintervalov n
    double a = 0.0;
    double b = 3.14159265358979323846 / 4.0;
    int n = 1000; // Prilagodite glede na potrebe

    // Izračun integrala
    double integralValue = trapezoidal([](double x) { return func1(x) * arctan(x / 2, 10); }, a, b, n);

    // Izpis rezultata
    cout << "Ocena integrala: " << integralValue << endl;

    return 0;
}
