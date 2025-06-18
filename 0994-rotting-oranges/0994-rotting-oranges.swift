class Solution {
    func orangesRotting(_ grid: [[Int]]) -> Int {
        var grid = grid
        let rows = grid.count
        let cols = grid[0].count
        var queue: [(Int, Int)] = []
        var freshCount = 0
        let directions = [(0,1), (1,0), (0,-1), (-1,0)]

        // 초기상태 파악
        for r in 0..<rows {
            for c in 0..<cols {
                if grid[r][c] == 2 {
                    queue.append((r, c))
                } else if grid[r][c] == 1 {
                    freshCount += 1
                }
            }
        }

        var minutes = 0

        while !queue.isEmpty && freshCount > 0 {
            let currentLevelCount = queue.count

            for _ in 0..<currentLevelCount {
                let (r, c) = queue.removeFirst()

                for (dr, dc) in directions {
                    let nr = r + dr
                    let nc = c + dc

                    if nr >= 0 && nr < rows && nc >= 0 && nc < cols && grid[nr][nc] == 1 {
                        grid[nr][nc] = 2
                        freshCount -= 1
                        queue.append((nr, nc))
                    }
                }
            }
            minutes += 1
        }

        return freshCount == 0 ? minutes : -1
    }
}



// 큐에 썩은 오렌지 저장
// 큐 요소 꺼내서 오렌지 썩게하고 다음 큐에 넣음