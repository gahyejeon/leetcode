class Solution {
    func isHappy(_ n: Int) -> Bool {
        var slow = n
        var fast = getNext(n)

        while fast != 1 && slow != fast {
            slow = getNext(slow)
            fast = getNext(getNext(fast))
        }

        return fast == 1
    }

    private func getNext(_ n: Int) -> Int {
        var sum = 0
        var num = n
        while num > 0 {
            let digit = num % 10
            sum += digit * digit
            num /= 10
        }

        return sum
    }
}