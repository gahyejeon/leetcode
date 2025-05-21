class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let sorted = nums.sorted()

        for i in 0..<sorted.count {
            if sorted[i] != i {
                return i
            }
        }
        return nums.count
    }
}


// 정렬하고
// 인덱스 넘버랑 자리에 있는 수랑 같은지 확인
// 다른 부분이 빠진 숫자임