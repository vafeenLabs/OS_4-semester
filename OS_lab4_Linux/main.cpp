#include "num.hpp"
#include <algorithm>

int main()
{
    int m, n, k;

    cout << "Введите m,n\n->";

    cin >> m >> n;

    string m_bin = toBin(m);

    string n_bin = toBin(n);

    cout << "m_bin = " << m_bin << '\n';

    cout << "n_bin = " << n_bin << '\n';

    k = max(count(m_bin.begin(), m_bin.end(), '0'),
            count(n_bin.begin(), n_bin.end(), '0'));

    cout << "\nk= " << k;

    return 0;
}
