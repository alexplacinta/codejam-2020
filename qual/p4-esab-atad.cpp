#include<bits/stdc++.h>

using namespace std;

bool query(int i, int &queries) {
    queries++;
    cout << i + 1 << endl;
    char c;
    cin >> c;
    return c == '1';
}

int main() {
    ios::sync_with_stdio(false);
    cin.tie(0);

    int T, B;
    cin >> T >> B;

    for (int t = 1; t <= T; t++) {

        vector<bool> answer(B);
        int queries = 0;
        int L = 0, R = B - 1;
        bool existSame = false, existDif = false;
        int positionSame, positionDif;

        for (int i = 0; i < B / 2; ++i) {
            answer[L] = query(L, queries);
            answer[R] = query(R, queries);
            if (!existSame) {
                if (answer[L] == answer[R]) {
                    existSame = true;
                    positionSame = L;
                }
            }
            if (!existDif) {
                if (answer[L] != answer[R]) {
                    existDif = true;
                    positionDif = L;
                }
            }
            L++;
            R--;
            if (queries % 10 == 0 && queries != 0) {
                if (existSame) {
                    if (answer[positionSame] != query(positionSame, queries)) {
                        for (int j = 0; j < L; ++j) {
                            if (answer[j] == answer[B - 1 - j]) {
                                answer[j] = !answer[j];
                                answer[B - 1 - j] = !answer[B - 1 - j];
                            }
                        }
                    }
                }
                if (existDif) {
                    if (answer[positionDif] != query(positionDif, queries)) {
                        for (int j = 0; j < L; ++j) {
                            if (answer[j] != answer[B - 1 - j]) {
                                answer[j] = !answer[j];
                                answer[B - 1 - j] = !answer[B - 1 - j];
                            }
                        }
                    }
                }
                if (existSame != existDif) {
                    query(1, queries);
                }
            }
        }
        string sAnswer;
        for(bool bit : answer) {
            sAnswer += bit ? '1' : '0';
        }

        cout << sAnswer << endl;
        char ok;
        cin >> ok;
        if (ok == 'N') {
            break;
        }
    }

    return 0;
}
