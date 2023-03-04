// Input: accounts = [[1,5],[7,3],[3,5]]
// Output: 10
// Explanation:
// 1st customer has wealth = 6
// 2nd customer has wealth = 10
// 3rd customer has wealth = 8
// The 2nd customer is the richest with a wealth of 10.

void main() {
  print(Solution().maximumWealth([
    [1, 5],
    [7, 3],
    [3, 5]
  ]));
}

class Solution {
  int maximumWealth(List<List<int>> accounts) {
    int maxWealth = 0;
    for (int i = 0; i < accounts.length; i++) {
      int wealth = accounts[i].reduce((a, b) => a + b);
      if (wealth > maxWealth) {
        maxWealth = wealth;
      }
    }
    return maxWealth;
  }
}
