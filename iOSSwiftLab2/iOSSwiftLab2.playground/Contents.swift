//: Playground - noun: a place where people can play

import UIKit

//建立數組
for row in 0...7 {
    for column in 0...7 {
        print(row*column, separator: "", terminator: "\t")
    }
    print("\n")
}

//奇數行的數字總和
var sum1 = 0
for row in 0...7 {
    for column in 0...7 where column % 2 == 1 {
        print(row*column, separator: "", terminator: "\t")
        sum1 = sum1 + (row*column)
    }
    print("\n")
}
print("sum1: \(sum1)")

//所有格子的總和，除了列數>=行數之外的格子
var sum2 = 0
for row in 0...7 {
    for column in 0...7 where row > column {
        print(row*column, separator: "", terminator: "\t")
        sum2 = sum2 + (row*column)
    }
    print("\n")
}
print("sum2: \(sum2)")

/*
 定義function，接受3個參數，起始值，最大值和決定數字倍數的number， 回傳運算結果  比方起始值3，最大值98，決定數字倍數的number為5時，(只包含5的倍數)  運算結果為 5 + 10 + 15 + ..... + 95
*/
func result1(initNum:Int, maxNum:Int, timesNum:Int) {
    var sum = 0
    var tmpNum = initNum
    while tmpNum <= maxNum {
        if (tmpNum % timesNum == 0) {
            print(tmpNum)
            sum = sum + tmpNum
        }
        tmpNum = tmpNum + 1
    }
    print("result1 - \(sum)")
}
result1(initNum: 3, maxNum: 16, timesNum: 5)

/*
    定義function，接受3個參數，起始值，最大值和決定數字倍數的number， 回傳運算結果。
    比方起始值3，最大值11，決定數字倍數的number為5時，(不包含5的倍數)  運算結果為 3 + 4 + 6 + 7 + 8 + 9 + 11
*/
func result2(initNum:Int, maxNum:Int, timesNum:Int) {
    var sum = 0
    for num in initNum...maxNum where num % timesNum != 0 {
        print(num)
        sum = sum + num
    }
    print("result1 - \(sum)")
}
result2(initNum: 3, maxNum: 11, timesNum: 5)

//奇數行的數字總合, 定義function，接受2個參數，分別代表行數和列數
func sumOfEven(rowMaxNum:Int, columnMaxNum:Int) {
    var sum = 0
    for row in 0...rowMaxNum {
        for column in 0...columnMaxNum where column % 2 == 1 {
            print(row*column, separator: "", terminator: "\t")
            sum = sum + (row*column)
        }
        print("\n")
    }
    print("sum: \(sum)")
}
sumOfEven(rowMaxNum: 7, columnMaxNum: 6)

//所有格子的總合，除了列數>=行數的格子, 定義function，接受2個參數，分別代表行數和列數
func sumOfRowGreaterThenColumn(rowMaxNum:Int, columnMaxNum:Int) {
    var sum = 0
    for row in 0...rowMaxNum {
        for column in 0...columnMaxNum where row > column {
            print(row*column, separator: "", terminator: "")
            sum = sum + (row*column)
        }
        print("\n")
    }
    print("sum: \(sum)")
}
sumOfRowGreaterThenColumn(rowMaxNum: 2, columnMaxNum: 6)

//定義一個function，接受一個參數代表華式溫度 ， 回傳攝式溫度
func convertToCelsius(fahrenheit: Float) -> String {
    let celsius = (fahrenheit - 32) / 1.8
    return "\(fahrenheit)℉ = \(celsius)℃"
}
convertToCelsius(fahrenheit: 194)

/*
 a function that takes an array of integers and sorts them into arrays for even and odd integers use tuple to return even array & odd array
*/

func splitArray(sourceArray:[Int]) -> (oddArray: [Int], evenArray: [Int]) {
    var oddArray = [Int]()
    var evenArray = [Int]()
    for num in sourceArray {
        if num % 2 == 0 {
            evenArray += [num]
        } else {
            oddArray += [num]
        }
    }
    return(oddArray.sorted(), evenArray.sorted())
}

let resultSplitArray = splitArray(sourceArray: [1,5,3,20,98,21,45,34,89,76,11,68])

print(resultSplitArray.oddArray, resultSplitArray.evenArray)


