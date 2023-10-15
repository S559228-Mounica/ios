import UIKit

var greeting = "Hello, playground"

var name1 = "ios"

func greeting(to name: String){
    //name+=" hhfg"
    print("Hello \(name)")
   // print("i4t \(to)")
}

greeting(to: "John")
//print(to)
//print("Hello \(name)")
  

var error = "The request failed."

 

func appendErrorCode(_ code: Int, toErrorString errorString: inout String){
    if code == 400 {
        errorString += " bad request."

}

 

}

 

appendErrorCode (400, toErrorString: &error)

 

print(error)
var cnt = 0
let counts = [1,3,4,2,5]
func ascending(_ i: Int, _ j:Int) -> Bool{
    cnt+=1
    return i < j
}
let vsorted = counts.sorted(by: ascending)
print(cnt)
let scount = counts.sorted(by: <)
print(scount)

//[11:33 PM] Seelam,Mounica

func makePopulationTracker (forInitialPopulation population: Int) -> (Int) -> Int{

 

var totalPopulation = population

 

func populationTracker (growth: Int) -> Int{ totalPopulation += growth

 

return totalPopulation

 

}

 

return populationTracker

 

}

 

var currentPopulation = 5_422

 

let growBy = makePopulationTracker (forInitialPopulation: currentPopulation)

 

growBy (500)

 

growBy (500)

print(currentPopulation)


currentPopulation=growBy (500) // 6922

 

let anotherGrowBy = growBy
anotherGrowBy (500) // 7422

 

print(currentPopulation)
let numbers = [12,23,4,45]
let mapped = numbers.map{
    return $0 * 2
}
print(mapped)

var message: String?
//message = ""
if let messageBody = message{

if let messageInteger = Int (messageBody) {
    print("\(messageBody): \(messageInteger)")
}

}else{
    print("No message.")
    
}
