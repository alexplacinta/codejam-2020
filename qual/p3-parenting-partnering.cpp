#include<bits/stdc++.h>

using namespace std;

struct Activity {
    int i;
    int from;
    int to;
};

bool isOverlap(Activity a1, Activity a2) {
    return a1.from < a2.to && a1.to > a2.from;
}

int main() {
    ios_base::sync_with_stdio(0);
    int T;
    cin >> T;

    for (int t = 1; t <= T; t++) {
        int N;
        cin >> N;
        vector<Activity> allActivities(N);
        for (int i = 0; i < N; ++i) {
            allActivities[i].i = i;
            cin >> allActivities[i].from >> allActivities[i].to;
        }
        sort(allActivities.begin(), allActivities.end(), [](Activity &a, Activity &b) {
            return a.from < b.from;
        });

        string y;
        for (int j = 0; j < N; ++j) {
            y += ' ';
        }
        vector<Activity> activitiesC, activitiesJ;
        for (auto &a : allActivities) {
            bool toInsertActToC = true;
            for (auto &aC : activitiesC) {
                if (isOverlap(a, aC)) {
                    toInsertActToC = false;
                    break;
                }
            }
            if (toInsertActToC) {
                activitiesC.push_back(a);
                y[a.i] = 'C';
                continue;
            }

            bool toInsertActToJ = true;
            for (auto &aJ : activitiesJ) {
                if (isOverlap(a, aJ)) {
                    toInsertActToJ = false;
                    break;
                }
            }
            if (toInsertActToJ) {
                activitiesJ.push_back(a);
                y[a.i] = 'J';
                continue;
            }

            y = "IMPOSSIBLE";
            break;
        }
        cout << "Case #" << t << ": " << y << endl;
    }

    return 0;
}
