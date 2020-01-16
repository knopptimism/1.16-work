enum Currency {
  case cad
  case mxn
  }


let currency: Currency? = .cad

let usToCad: Double = 1.3
let usToMxn: Double = 18.8

func convert(_ dollars: Double) -> Double {

  if currency == .cad {
    return (dollars * usToCad)
  } else {
    return(dollars * usToMxn)
  }
  
  
}

print(convert(28))

func convert(amountString: String) -> String? { 
  let amount = Double(amountString)

  guard let unwrappedAmount = amount else {
    return("You need to enter an amount!")
  }
var convertedAmount = String(convert(unwrappedAmount))



return(convertedAmount)

}


convert(amountString: "50.99")