class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var left = 0
        var right = height.count - 1
        var maxArea = 0

        while left < right {
            let width = right - left
            let h = min(height[left], height[right])
            let area = width * h
            maxArea = max(maxArea, area)

            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }

        }

        return maxArea
    }
}


// 왼쪽, 오른쪽, 최대 넓이
// 길이 구하고, 높이 구하고
// 최대넓이