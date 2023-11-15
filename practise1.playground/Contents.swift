import UIKit


//reverse numbers


//func reverseNumber(_ number: Int) -> Int {
//    var result = 0
//    var tempNumber = number
//    while tempNumber != 0 {
//        let digit = tempNumber % 10
//        result = result * 10 + digit
//        tempNumber /= 10
//    }
//    return result
//}
//let inputNumber = 12345
//let reversedNumber = reverseNumber(inputNumber)
//print("Reverse of \(inputNumber): \(reversedNumber)")

//factorial


//func factorial(_ n: Int) -> Int {
//    guard n >= 0 else {
//        return -1
//    }
//    if n == 0 || n == 1 {
//        return 1
//    } else {
//        return n * factorial(n - 1)
//    }
//}
//let number = 5
//let result = factorial(number)
//if result != -1 {
//    print("Factorial of \(number): \(result)")
//} else {
//    print("Factorial is not defined for negative numbers.")
//}

//prime number


func isPrime(_ n: Int) -> Bool {
    guard n > 1 else {
        return false
    }
    for i in 2..<n {
        if n % i == 0 {
            return false
        }
    }
    return true
}
let number = 17
if isPrime(number) {
    print("\(number) is a prime number.")
} else {
    print("\(number) is not a prime number.")
}

//armstrong numbers



func isArmstrongNumber(_ number: Int) -> String {
    guard number >= 100 && number <= 999 else {
        return "No"
    }
    var sum = 0
    var tempNumber = number
    while tempNumber > 0 {
        let digit = tempNumber % 10
        sum += digit * digit * digit
        tempNumber /= 10
    }
    return sum == number ? "Yes" : "No"
}
let inputNumber = 153
let result = isArmstrongNumber(inputNumber)
print("Is \(inputNumber) an Armstrong number? \n\(result)")


