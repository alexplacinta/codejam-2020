#include<bits/stdc++.h>

using namespace std;


int main() {
    ios_base::sync_with_stdio(0);
    int T;
    cin >> T;

    for (int t = 1; t <= T; t++) {
        string S;
        cin >> S;

        string y;
        int firstV = S[0] - '0';
        for (int j = 0; j < firstV; ++j) {
            y += '(';
        }
        for (int i = 0; i < S.size() - 1; i++) {
            int v = S[i] - '0';
            y += S[i];
            int vNext = S[i + 1] - '0';
            for (int j = 0; j < abs(vNext - v); ++j) {
                y += vNext > v ? '(' : ')';
            }
        }
        y += S[S.size() - 1];
        int lastV = S[S.size() - 1] - '0';
        for (int j = 0; j < lastV; ++j) {
            y += ')';
        }

        cout << "Case #" << t << ": " << y << endl;
    }

    return 0;
}
