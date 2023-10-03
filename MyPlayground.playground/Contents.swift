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
