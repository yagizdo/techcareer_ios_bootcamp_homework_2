import UIKit

class OopOdevi {
    
    //Celcius to fahrenheit func
    func celciusTofahrenhiet(celcius:Double) -> Double {
        var fahrenhiet = ((celcius * 1.8) + 32)
        
        return fahrenhiet
    }
    
    // Calculate Rectangle Perimeter func
    func rectanglePerimeterCalculator(shortEdge:Int, longEdge:Int) {
        var result = (2 * (shortEdge + longEdge))
        print("Rectangle Perimeter : \(result)")
    }
    
    // Calculate given number func
    func calculateFactorial(number:Int) -> Int{
        var result = 1
        for i in 1...number {
            result *= i
        }
        return result
    }
    
    // Counter "a" character in given string func
    func countLetterInString(word:String){
        var result = word.filter{$0 == "a"}.count
        print("a Count : \(result)")
    }
    
    
   // Calculate the sum of the inside sides
    func calculateSumOfInsideSides(numberOfEdges:Int) -> Int {
        var result = (numberOfEdges - 2) * 180
        
        return result
    }
    
    // Calculate overtime
    func calculateOvertime(workDays:Int) -> Int {
        var workingHours:Int = workDays * 8
        var workPay:Int = 10
        var overtimePay:Int = 20
        
        var salary = 0;
        
        if workingHours > 160 {
            var overtimeHours = workingHours - 160
            var overtimePayMoney = overtimeHours * overtimePay
            var workhoursPayMoney = 160 * workPay
            salary = workhoursPayMoney + overtimePayMoney
        } else {
            var workhoursPayMoney = workingHours * workPay
            salary = workhoursPayMoney
        }
        
        
        return salary
    }
    
    
    // Calculate quota excess
    func calculateQuotaExcess(quotaValue:Int) -> Int {
        var defaultQuota = 50
        var defaultQuotaPrice = 100
        var quotaExcessPricePerGB = 4
        
        var userQuotaPrice = 0
        
        if quotaValue > defaultQuota {
            var excessQuotaGB = quotaValue - defaultQuota
            var excessQuotaPrice = excessQuotaGB * quotaExcessPricePerGB
            userQuotaPrice = excessQuotaPrice + defaultQuotaPrice
        } else {
        // I did this because if a user is given a quota for example 40GB, he still pays the default quota price
        userQuotaPrice = defaultQuotaPrice
        }
        
        return userQuotaPrice
    }
    
}

var oopObject = OopOdevi()


// Celcius to fahrenheit result
var fahrenhietValue = oopObject.celciusTofahrenhiet(celcius: 32)
print("Fahrenheit : \(fahrenhietValue)")

// Calculate Rectangle Perimeter result
oopObject.rectanglePerimeterCalculator(shortEdge: 25, longEdge: 54)

// Calculate given number result
var factorialResult = oopObject.calculateFactorial(number: 5)
print("Factorial : \(factorialResult)")

// Counter "a" character in given string result
oopObject.countLetterInString(word: "adana")

// Calculate the sum of the inside sides
var calculateSumOfInsideSidesResult = oopObject.calculateSumOfInsideSides(numberOfEdges: 5)
print("Calculated sum of the Inside sides : \(calculateSumOfInsideSidesResult)")


// Calculate overtime
var overtimeSalaryResult = oopObject.calculateOvertime(workDays: 25)
print("Work Salary : \(overtimeSalaryResult)")

// Calculate quota excess result
var quotaExcessResult = oopObject.calculateQuotaExcess(quotaValue: 300)
print("Quota Excess Result : \(quotaExcessResult)")
