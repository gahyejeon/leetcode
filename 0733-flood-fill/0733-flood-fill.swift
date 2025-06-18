class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
        var image = image
        let originalColor = image[sr][sc]

        // 색이 같아 바꿀 필요 없을 때
        if originalColor == color {
            return image
        }

        let rows = image.count
        let cols = image[0].count

        func dfs(_ r: Int, _ c: Int) {
            // 색 다르면 return
            if r < 0 || r >= rows || c < 0 || c >= cols || image[r][c] != originalColor {
                return
            }

            image[r][c] = color

            // 상하좌우 탐색
            dfs(r + 1, c)
            dfs(r - 1, c)
            dfs(r, c + 1)
            dfs(r, c - 1)
        }

        dfs(sr, sc)
        return image
    }
}