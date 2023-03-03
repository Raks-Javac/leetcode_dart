// Input: nums = [2,7,11,15], target = 9
// Output: [0,1]
// Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

void main() {
  print(Solution().twoSum([3, 2, 4], 6));
}

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> hashTable = {};
    for (int i = 0; i < nums.length; i++) {
      int complement = target - nums[i];
      if (hashTable.containsKey(complement)) {
        return [hashTable[complement]!, i];
      }
      hashTable[nums[i]] = i;
    }
    return [];
  }
}
