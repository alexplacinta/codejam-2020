#include<bits/stdc++.h>

using namespace std;


int main() {
    ios_base::sync_with_stdio(0);
    int T;
    cin >> T;

    for (int t = 1; t <= T; t++) {
        int N;
        cin >> N;

        vector<vector<int>> matrix(N, vector<int>(N));
        for (auto &row : matrix) {
            for (auto &value : row) {
                cin >> value;
            }
        }

        int k = 0, r = 0, c = 0;
        for (int i = 0; i < N; ++i) {
            k += matrix[i][i];

            unordered_set<int> rowValues;
            unordered_set<int> colValues;
            for (int j = 0; j < N; ++j) {
                rowValues.insert(matrix[i][j]);
                colValues.insert(matrix[j][i]);
            }
            if (rowValues.size() != N) {
                r++;
            }
            if (colValues.size() != N) {
                c++;
            }
        }
        cout << "Case #" << t << ": " << k << " " << r << " " << c << endl;
    }

    return 0;
}
