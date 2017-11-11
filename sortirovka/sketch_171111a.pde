int n = 200;
int[] sm = new int[n];

void setup() {
    size(800, 800);
    sm = rm(n, height / 2);
}
int[] rm(int n, int m) {
    int[] c = new int[n];
    for (int i = 0; i < n; i++) {
        c[i] = int(random(m));
    }
    return c;
}

void draw() {
    stroke(207, 33, 33);
    background(230, 203, 28);
    for (int i = 0; i < n - 1; i++) {
        int sp = i;
        for (int j = i + 1; j < n; j++) {
            if (sm[j] < sm[sp]) {
                sp = j;
            }
        }
        int ob = sm[i];
        sm[i] = sm[sp];
        sm[sp] = ob;
    }
    m(sm, n);
}

void m(int[] c, int p) {
    for (int i = 0; i < p; i++) {
        rect(height / p * i, 0, height / p, c[i]);
    }
}