class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        guard intervals.count > 1 else { return intervals }

        let sorted = intervals.sorted { $0[0] < $1[0] }
        var result: [[Int]] = [sorted[0]]

        for i in 1..<sorted.count {
            let last = result[result.count - 1]
            let current = sorted[i]

            if current[0] <= last[1] {
                result[result.count - 1][1] = max(last[1], current[1])
            } else {
                result.append(current)
            }
        }

        return result
    }
}





// 일단 intervals 배열에 들어있는게 1개면 그걸 반환해야 함
// 시작 기준으로 정렬
// 두번째부터 앞이랑 겹치는지 확인 이전꺼 끝이랑 현재 맨 앞이랑 비교
// 겹치면 끝이 더 큰 값으로 반환 안겹치면 새로 추가
// 계속 반복