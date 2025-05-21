class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var nums = nums
        var i = 0

        while i < nums.count {
            let val = nums[i]
            if val < nums.count && nums[i] != nums[val] {  // val 인덱스 범위 안에서 제자리에 없으면 swap
                nums.swapAt(i, val)   // swapAt 인덱스 위치 바꿔주는 함수
            } else {
                i += 1
            }
        }


        // 값이 인덱스랑 다르면 그 인덱스가 빠진 숫자가 됨
        for i in 0..<nums.count {  
            if nums[i] != i {
                return i
            }
        }

        // 다 같으면 빠진 숫자는 n이 됨
        return nums.count
    }
}





