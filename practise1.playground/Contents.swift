import UIKit


func reverseNumber(_ number: Int) -> Int {
    var result = 0
    var tempNumber = number
    while tempNumber != 0 {
        let digit = tempNumber % 10
        result = result * 10 + digit
        tempNumber /= 10
    }
    return result
}
let inputNumber = 12345
let reversedNumber = reverseNumber(inputNumber)
print("Reverse of \(inputNumber): \(reversedNumber)")

