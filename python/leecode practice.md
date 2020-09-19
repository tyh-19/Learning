### [leecode](https://leetcode-cn.com/problems/subarray-sum-equals-k/) practice [微信登陆]

##### 1.两数之和

```python
给定 nums = [2, 7, 11, 15], target = 9

因为 nums[0] + nums[1] = 2 + 7 = 9
所以返回 [0, 1]

class Solution(object):
    def twoSum(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        i = 0
        l = len(nums)
        
        while len(nums) > 0:
            numa = nums.pop(0)
            a = target - numa
            j = l - len(nums) - 1 + 1
            for numb in nums:
                if a == numb:
                    print "[%d,%d]" %(i, j)                       
                    #print "%d + %d" %(numa, numb)
                    return i,j
                else:
                    pass
                j += 1
            i += 1
            
#hashmap解法：
def twoSum(nums, target):
    hashmap={}
    for i,num in enumerate(nums): ##nums是列表，i为指针
        if hashmap.get(target - num) is not None:
            return [i,hashmap.get(target - num)]
        hashmap[num] = i #这句不能放在if语句之前，解决list中有重复值或target-num=num的情况
## enumerate（）
>>>seq = ['one', 'two', 'three']
>>> for i, element in enumerate(seq):
...     print i, element
... 
0 one
1 two
2 three
```

##### 3.最长子串

```python
输入: "abcabcbb"
输出: 3 
解释: 因为无重复字符的最长子串是 "abc"，所以其长度为 3。
##滑动窗口
class Solution(object):
    def lengthOfLongestSubstring(self, s):
        """
        :type s: str
        :rtype: int
        """
        hashmap = {}
        Count = [0]
        count = 0
        i = 0
        while i < len(s):
            j = i
            while j < len(s) and hashmap.get(s[j]) is None: ##字典判断
                hashmap[s[j]] = 1
                count += 1
                j += 1
            Count.append(count)
            hashmap = {}
            i += 1
            count = 0
        print Count
        return max(Count)
##动态规划
class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        if s == '':
            return 0
        if len(s) == 1:
            return 1

        def find_left(s, i):
            tmp_str = s[i]
            j = i - 1
            while j >= 0 and s[j] not in tmp_str:
                tmp_str += s[j]
                j -= 1
            return len(tmp_str)
        length = 0
        for i in range(0, len(s)):
            length = max(length, find_left(s, i)) #这是关键，求出局部最优，然后遍历，得全局最优
        return length
    
## 滑动窗口加动态规划并且使用def优化
class Solution(object):
    def lengthOfLongestSubstring(self, s):
        """
        :type s: str
        :rtype: int
        """
        def Max(s, i):
            lst = []
            while i < len(s) and s[i] not in lst: #列表判断，好像比字典要慢
                lst += s[i]
                i += 1
            #print count
            return len(lst)
        
        lst = []
        i = 0
        m = 0
        while i < len(s):
            m = max(m, Max(s, i))
            i += 1
        return m
## 未使用def优化
class Solution(object):
    def lengthOfLongestSubstring(self, s):
        """
        :type s: str
        :rtype: int
        """
        lst = []
        count = 0
        i = 0
        m = 0
        while i < len(s):
            j = i
            while j < len(s) and s[j] not in lst: #列表判断，好像比字典要慢
                lst += s[j]
                count += 1
                j += 1
            m = max(m, count)
            lst = []
            i += 1
            count = 0
        return m
```



##### 7.整数反转

```python
输入: 123
输出: 321
class Solution(object):
    def reverse(self, x):
        """
        :type x: int
        :rtype: int
        """
        lst = []
        y = abs(x)
        while y != 0:
            lst.append(y%10)
            y = y/10
        
        a = 0
        i = len(lst) - 1
        for i in range(0,len(lst)):
            a = a + lst[i] * pow(10, len(lst) - i - 1)
            i -= 1

        if a >= pow(2,31) or a < -pow(2,31):
            return 0
        else:
            if x > 0:
                return a
            else:
                return -a 
```

##### 9. 判断回文数

```python
输入: -121
输出: false
解释: 从左向右读, 为 -121 。 从右向左读, 为 121- 。因此它不是一个回文数
输入：121
输出：True
## 取余为列表
class Solution(object):
    def isPalindrome(self, x):
        """
        :type x: int
        :rtype: bool
        """
        i = 0
        j = 0
        lst = []
        if x == 0:
            return True
        elif x < 0:
            return False
        else:
            while x > 0:
                lst.append(x % 10) 
                x = x/10
        
            for i in range(0,len(lst)):
                if lst[i] != lst[len(lst)-1-i]:
                    return False
                    break
                else:
                    if j >= (len(lst)/2):
                        return True
                    else:
                        pass
                    j += 1
 ##字符串
class Solution:
    def isPalindrome(self, x: int) -> bool:
        return True if str(x)==str(x)[::-1] else False
```

##### 11.装水最多的容器

```python
给你 n 个非负整数 a1，a2，...，an，每个数代表坐标中的一个点 (i, ai) 。在坐标内画 n 条垂直线，垂直线 i 的两个端点分别为 (i, ai) 和 (i, 0)。找出其中的两条线，使得它们与 x 轴共同构成的容器可以容纳最多的水。

说明：你不能倾斜容器，且 n 的值至少为 2。

输入：[1,8,6,2,5,4,8,3,7]
输出：49
## 暴力，超时限
class Solution(object):
    def maxArea(self, height):
        """
        :type height: List[int]
        :rtype: int
        """
        v = 0
        i = 0
        j = 0
        l = len(height)
        for i in range(0, l):
            for j in range(i + 1, l):
                if height[i] >= height[j]:
                    v = max(v, height[j] * (j - i))
                else:
                    v = max(v, height[i] * (j - i))
                j += 1
            i += 1
        return v
##双指针的思路，但是暴力实现？好像正常就这么实现。。。
		v = 0
        l = len(height)
        i = 0
        j = l - 1
        
        while i < j:
            v = max(v, min(height[i], height[j]) * (j - i))
            print v, height[i], height[j]
            if height[i] <= height[j]:
                i += 1
            elif height[i] > height[j]:
                j -= 1
            else:
                break
        return v
```





##### 560.无重复

```python
输入:nums = [1,1,1], k = 2
输出: 2 , [1,1] 与 [1,1] 为两种不同的情况。

##暴力解法，耗时太长
class Solution(object):
    def subarraySum(self, nums, k):
        """
        :type nums: List[int]
        :type k: int
        :rtype: int
        """
        rtype = 0
        while len(nums) > 0:
            sum = 0
            for num in nums:
                sum = sum + num
                if sum == k:
                    rtype = rtype + 1
                else:
                    pass
            nums.pop(0)
        return rtype
    
##利用hashmap
class Solution(object):
    def subarraySum(self, nums, k):
        """
        :type nums: List[int]
        :type k: int
        :rtype: int
        """
        hashmap = {}
        s = 0
        for num in nums:
            s = s + num
            if hashmap.get(s - k) is not None:
            	hashmap[s - k] += 1
            else:
                hashmap[s - k] = 1
        
        if hashmap.get(0) is not None:
            rtype = hashmap.get(0)
        else:
        	rtype = 0

        for key in hashmap.keys():
            if hashmap.get(key + k) is not None:
                rtype += hashmap.get(key + k)
            else:
                pass
        return rtype
##由于这个判断了是否存在连续加和是否有直接等于
		hashmap = {0:1}
        s = 0
        for num in nums:
            s = s + num
            if hashmap.get(s) is not None:
            	hashmap[s] += 1
            else:
                hashmap[s] = 1
        rtype = 0
        for key in hashmap.keys():
            if hashmap.get(key - k) is not None:
                rtype += hashmap.get(key - k)
            else:
                pass
        return rtype
##
		hashmap = {0:1}
        s = 0
        rtype = 0
        for num in nums:
            s = s + num
            if hashmap.get(s - k) is not None: #对于k=0，由于目前还未定义hash，所以s-k不存在于hash中
                rtype += hashmap.get(s - k)
            if hashmap.get(s) is not None: #此处必须用if
                hashmap[s] += 1
            else:
                hashmap[s] = 1
        return rtype
```

