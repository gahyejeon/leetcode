class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let char = Array(s.lowercased().filter { $0.isLetter || $0.isNumber })
        var left = 0
        var right = char.count - 1

        while left < right {
            if char[left] != char[right] {
                return false
            }
            left += 1
            right -= 1
        }

        return true
    }
}


// 문자, 숫자만 뽑아내기
// 소문자로 바꾸기
// 앞뒤로 비교하기