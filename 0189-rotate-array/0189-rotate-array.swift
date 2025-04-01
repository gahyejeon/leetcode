class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let n = nums.count
        let k = k % n

        nums.reverse()
        nums[0..<k].reverse()
        nums[k..<n].reverse()
    }
}


// k만큼 뒤에서 앞으로 옮기는거 아닌가 배열의 맨 끝을 앞으로.. k만큼 반복
// insert( , at: 0) 사용가능한가? .last 로 접근해서 가져오는게 가능한가?
// preffix, suffix로 뽑아낸 배열을 합쳐서 새로운 배열을 내는것도 가능할까?

// reverse사용? 새로운 배열 만들필요없음 원래 배열 바꾸면 됨