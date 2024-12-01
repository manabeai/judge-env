#include <atcoder/all>
#include <bits/stdc++.h>
#ifdef DEBUG
#include "cpp-dump/cpp-dump.hpp"
#define dump(...) cpp_dump(__VA_ARGS__)
#else
#define dump(...)
#endif
using namespace std;
using namespace atcoder;
typedef long long ll;

void solve() {
    int a,b;
    cin >> a >> b;
    int ans = a - b;

    dump("It is an answer", ans);
    cout << ans << endl;
}

int main() {
    solve();
    return 0;
}
