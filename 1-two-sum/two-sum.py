#class Solution:
    #def twoSum(self, nums: List[int], target: int) -> List[int]:
class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        #for i in range(len(nums)):
           #sub = target - nums[i]
           #a  = i + 1
          #if (nums[a] == sub) & (a <= len(nums)):
               #return (i,a)
              # break
        #result = []
        #for i in range(0, len(nums)):
            #for j in range(i+1, len(nums)):
                #total = nums[i] + nums[j]
                #if total == target:
                    #result.append(i)
                    #result.append(j)
                    #return result
        result = []
        mapping = {}
        for i in range(0, len(nums)):
            mapping[nums[i]] = i
        for j in range(0, len(nums)):
            diff = target - nums[j]
            if (diff in mapping and mapping[diff] != j):
                result.append(j)
                result.append(mapping[diff])
                return result
