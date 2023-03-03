// Input: nums = [2,7,11,15], target = 9
// Output: [0,1]
// Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

void main() {
  print(Solution().twoSum([1, 3, 5, 3, 4, 6], 1));
}

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    int v = 0;
    List<int> makeUpList = [];
    for (int i in nums) {
      v += i;
      int m = nums.indexOf(i);
      makeUpList.add(m);
      if (v == target) {
        break;
      }
    }
    return makeUpList;
  }
}
