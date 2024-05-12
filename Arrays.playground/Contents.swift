import UIKit
import Foundation

// 1. Introduction to Swift Array


let firstFruit = "orange"
let secondFruit = "banana"
let thirdFruit = "pears"

var fruits = ["banana", "banana", "pears"]
var lotteryNumbers = [23, 12, 34, 56, 11, 67]

var name:[String]
name = ["mas", "ana", "sak"]

var score: [Int] = [1, 2, 3, 4]

var empty: [Double] = []


// 2. Reading values from array

var fruits2 = ["pears", "apple", "banana", "orange"]

fruits2[0]
fruits2[1]

print("The best fruit ever is a \(fruits2[3])")

fruits2.count
fruits2.count - 1


// 3. Getting multiple values using closed range


var fruits3 = ["pears", "apple", "banana", "orange", "strawberry", "satsuma", "mango"]
fruits3.count

fruits3[2 ... 4]

var number = [1, 2, 3, 4, 5, 6, 7]
var count = number.count - 1
number[3 ... count]


// 4. Array type and Any type


var fruits4 = ["pears", "apple", "banana", "orange", "strawberry", "satsuma", "mango"]
type(of: fruits4)

var num = 2
type(of: num)

let string = fruits4[0]
let number4 = fruits4[3]

type(of: string)
type(of: number4)

var allKinds: [Any] = ["one", "two", "three", 1, 2,3]


// 5. Merging two arrays

// string interpolation
var str = "a"
var str2 = "b"
str + str2

//joining array
var breakfast = ["cereal", "egg"]
var lunch = ["sandwich", "chicken"]

var combined = breakfast + lunch

//the result should contain both arrays meaning 4 values

var dinner = ["salmon", "lasagna"]

combined += dinner


// 6. Adding values to existing array

// You use the append method to append value to the end of the array
var fruits6 = ["pears", "apple"]
fruits6.append("banana")
fruits6.append("mango")
fruits6.append("pawpaw")

//You can also use the previously discussed += to append
var number6 = [1, 2, 3, 4]
number6 += [5]
number6 += [6]
number6 += [7]

// If we want to add value to thr beginning or any other position in the array
var temp: [Double] = [23.43, 23.43, 8.34]
temp.insert(56.23, at: 0)
temp.insert(90.12, at: 3)
temp.insert(92.45, at: 2)


// 7. Removing values from arrays


var appleProducts: [String]
appleProducts = ["iPhone", "iPad", "iMac", "Macbook"]

let deleteP = appleProducts.remove(at: 0)

print("The deleted value is \(deleteP)")


// 8. Modifying values in arrays

var test = [1, 2, 3, 4]
test.remove(at: 1)
test.insert(6, at: 1)
// It is not the best suggestion because there is a way to modify data quite easyll

test[0] = 5
test[1] = 8
test

var fruits9 = ["orange", "apple", "pears"]
fruits9[0] = "mango"
fruits9

var odd = [1, 3, 5, 7, 9, 11]
odd[3 ... 5] = [1, 1, 1]
odd

var even = [2, 4, 6, 8, 10, 12, 14]
even[2 ... 5] = [0]
even

// 9. Mutable and immutable array


// if you dont change the array use let keyword. if you want to change the array use var keyword


let fruits10 = ["orange", "apple", "pears"]

//fruits10.append("mango")
//fruits10[0] = "banana"



// 10. Copying value from one array to another - reference and value types


var friends = ["bob", "alice", "james"]

var invited = friends

invited.remove(at: 2)

friends.append("john")

friends
invited


var labelA = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 70))
labelA.text = "Masrafi Anam"
labelA.backgroundColor = UIColor.red


var laberB = labelA
laberB.backgroundColor = UIColor.yellow

labelA

laberB
