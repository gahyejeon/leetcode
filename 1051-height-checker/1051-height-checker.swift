class Solution {
    func heightChecker(_ heights: [Int]) -> Int {
        var expected = heights.sorted()
        return zip(heights, expected).filter { $0 != $1 }.count
    }
}

// 재정렬하고 위치가 바뀐 인덱스 개수 확인