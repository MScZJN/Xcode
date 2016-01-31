//: Playground - noun: a place where people can play

import Cocoa

class MyView : NSView {
    override func drawRect(rect: NSRect) {
        var pathRect = NSInsetRect(self.bounds, 1, 1);
        
        var path = NSBezierPath(roundedRect: pathRect, xRadius: 10, yRadius: 10)
        
        path.lineWidth = 4
        
        NSColor.greenColor().setFill();
        NSColor.blackColor().setStroke();
        path.fill()
        path.stroke()

    }
}

let viewRect = NSRect(x: 0, y:0, width:100, height:100)
let myEmptyView = MyView(frame: viewRect)
var str = "hello playground"
var stri: String = "Hello Playground"

var trafficLight = "Red"
if trafficLight == "Red" {
    print("Stop!")
}
else {
    print("go")
}

var numb1: Int = 16
var numb2: Int = 21

if numb1 > numb2 {
    print("numb1 greater than numb2")
}
else {
    print("poor math")
}

let compare = numb1 > numb2

let tree1 = "Oak"
let tree2 = "Pecan"
let tree3 = "Maple"

var treeArray = [tree1, tree2, tree3]

treeArray += ["Cherry"]
treeArray.append("ssss")

for tree in treeArray {
    switch tree {
        case "Oak":
        print("Furniture")
        case "Pecan", "Cherry":
        print("Pie")
        case "Maple":
        print("Syrup")
    default:
        print("Wood")
    }
}

var position = 8

switch position {
case 1:
    print("\(position)st")
case 2:
    print("\(position)nd")
case 3...9:
    print("\(position)th")
default:
    print("WWF")
}

var base = 2
var target = 1000
var value = 0

while value < target {
    value += 2
}

repeat {
value += base
}
while value < target


var speedLimit = 75
var carSpeed = 0

while (carSpeed < 100) {
    carSpeed = carSpeed + 1
    switch carSpeed {
      case 0..<20:
        print("Harry up, man")
      case 20..<50:
        print("Not bad, man")
      case 50...75:
        print("Be careful")
      default:
        print("Crazy!")
    }
    if carSpeed > speedLimit {
    break
    }
}

import Cocoa

var string = "Chapter 4 Playground"

func fahrenheitToCelusius(fahrenheitValue : Double) -> Double {
    var result: Double
    
    result = (((fahrenheitValue - 32) * 5) / 9)
    
    return result
    
}

var outdoorTemperatureInFahrenheit = 88.2
var outdoorTemperatureInCelsius = fahrenheitToCelusius(outdoorTemperatureInFahrenheit)


print("2016.01.27 Done")

func huashiToSheshi (huashi: Double) -> Double {
    var result: Double
    result = (5 * (huashi - 32) / 9)
    return result
}

var huashi = 88.2
print(huashiToSheshi(huashi))





// y = (x * 9 / 5) + 32


func sheshiToHuashi(sheshi : Double) -> Double {
    
    var result: Double
    result = ((sheshi * 9 / 5) + 32)
    return result
}

var sheshi = 31.222222222222222222
sheshiToHuashi(sheshi)


func buildASentence(subject: String, verb: String, noun: String) -> String {
    return subject + " " + verb + " " + noun + "!"
}

buildASentence ("Swift", verb: "is", noun: "cool")

buildASentence("晚上", verb: "吃", noun: "点啥")


func addMyAccountBalance(balances :Double...)->Double {
    var result: Double = 0
    for balance in balances {
        result = result + balance
    }
    return result
}

addMyAccountBalance(3224.24234,23232323,23322323,233223,232323,232323)


func findLargestNum (balances: Double...) -> Double {
    var result = -Double.infinity
    for balance in balances {
        if balance > result {
            result = balance
        }
    }
    return result
}

findLargestNum(1231312323,12313231231,13123123)

func findSmallestNum (balances: Double...) -> Double {
    
    var result: Double = Double.infinity
    for balance in balances {
        if balance < result {
            result = balance
        }
    }
    return result
}

findSmallestNum (123.00, 3223.00, 444.000)

print("2016.01.28 Done")

var account1 = ("State Bank Personal", 12345.00)
var account2 = ("State Bank Business", 23456.00)

func deposit (amount : Double, account : ( name: String, balance : Double)) -> (String, Double) {
    
    var newBalance : Double = account.balance + amount
    return (account.name, newBalance)
}

func withdraw (amount : Double, account : (name: String, balance: Double)) -> (String, Double) {
    var newBalance : Double = account.balance - amount
    return (account.name, newBalance)
}

deposit(12345, account: account1)

withdraw(222222, account: account2)


func chooseTransaction(transaction: String) -> (Double, (String, Double)) -> (String, Double) {
    if transaction == "Deposit" {
        return deposit
    }
    return withdraw
}

let mytransaction = chooseTransaction("Deposit")

mytransaction (2222222.3333, account1)

chooseTransaction("Deposit")(22222.2222, account2)


func bankVault(passcode: String) -> String {
    
    func openBankVault(_: Void) -> String {
        return "Vault opened"
    }
    func closeBankVault(_: Void) -> String {
        return "Vault closed"
    }
    if passcode == "secret" {
        return openBankVault()
    }
    else {
        return closeBankVault()
    }
}

print(bankVault("wrongsecret"))
print(bankVault("secret"))



func writeCheck(payee : String = "Unknown", amount : String = "10.00") -> String {
    
    return "Check payee to " + payee + " for $" + amount
}

writeCheck()
writeCheck("Jason")
writeCheck("Jason", amount : "444.33")


func writeCheck(payer : String, payee : String, amount : Double) -> String {
    
    return "Check payable from \(payer) to \(payee) for $\(amount)"
}

writeCheck("Jason", payee: "Jason Bourne", amount : 3000)


func writeBetterCheck(from payer : String, to payee : String, total amount : Double) -> String {
    return "Check from \(payer) to \(payee) total amount \(amount)"
}

writeBetterCheck(from: "Jason", to: "Jason Bourne", total: 30000)


print ("2016.01.29 Done")






















