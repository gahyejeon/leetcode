class Solution {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        let s = Array(s)
        let p = Array(p)
        let sLen = s.count
        let pLen = p.count
        var result = [Int]()
        
        if sLen < pLen { return [] }
        
        // 알파벳 26개 크기 배열로 빈도 저장
        var pCount = Array(repeating: 0, count: 26)
        var sCount = Array(repeating: 0, count: 26)
        
        // p 문자열 문자 개수 저장
        for char in p {
            let idx = Int(char.asciiValue! - Character("a").asciiValue!)
            pCount[idx] += 1
        }
        
        // 초기 윈도우
        for i in 0..<pLen {
            let idx = Int(s[i].asciiValue! - Character("a").asciiValue!)
            sCount[idx] += 1
        }
        
        if sCount == pCount {
            result.append(0)
        }
        
        // 슬라이딩 윈도우
        for i in pLen..<sLen {
            let addIdx = Int(s[i].asciiValue! - Character("a").asciiValue!)
            let removeIdx = Int(s[i - pLen].asciiValue! - Character("a").asciiValue!)
            sCount[addIdx] += 1
            sCount[removeIdx] -= 1
            
            if sCount == pCount {
                result.append(i - pLen + 1)
            }
        }
        
        return result
    }
}



// p로 주어지는게 순서 상관없이 들어있는 위치 찾기
// s는 p보다 같거나 길어야하는뎅?
// p로 주어지는 문자 길이만큼 고정하고 한칸씩 움직이면서 확인하면 됨
// 슬라이딩윈도우는 움직이면서 빠진수를 빼주고 새로 들어온수를 더해주면 됨 - 어케함?