void main() {
  print(Solution().twoSum([1, 3, 5], 4));
}

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    int v = 0;
    List<int> makeUpList = [];
    for (int i in nums) {
      v += i;
      makeUpList.add(i);
      if (v == target) {
        break;
      }
    }
    return makeUpList;
  }
}
