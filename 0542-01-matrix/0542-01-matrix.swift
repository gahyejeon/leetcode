class Solution {
    func updateMatrix(_ mat: [[Int]]) -> [[Int]] {
        var mat = mat
        let rows = mat.count
        let cols = mat[0].count
        var queue: [(Int, Int)] = []
        let directions = [(0,1), (1,0), (0,-1), (-1,0)]
        
        // 0은 큐에 넣고, 1은 -1로 바꿔서 아직 미방문 표시
        for r in 0..<rows {
            for c in 0..<cols {
                if mat[r][c] == 0 {
                    queue.append((r, c))
                } else {
                    mat[r][c] = -1
                }
            }
        }
        
        // BFS
        while !queue.isEmpty {
            let (r, c) = queue.removeFirst()
            
            for (dr, dc) in directions {
                let nr = r + dr
                let nc = c + dc
                
                if nr >= 0, nr < rows, nc >= 0, nc < cols, mat[nr][nc] == -1 {
                    mat[nr][nc] = mat[r][c] + 1
                    queue.append((nr, nc))
                }
            }
        }
        
        return mat
    }
}
