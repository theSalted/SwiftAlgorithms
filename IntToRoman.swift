
class Solution {
    func intToRoman(_ num: Int) -> String {
        var divded = num / 1000
        if (divded) > 0 {
            var text = ""
            for _ in 0..<(divded) {
                text += "M"
            }
            
            return text + intToRoman(num%1000)
        }

        divded = num / 900
        if divded == 1 {
            return "CM" + intToRoman(num%900)
        }

        divded = num / 500
        if (divded) > 0 {
            var text = ""
            for _ in 0..<(divded) {
                text += "D"
            }
            
            return text + intToRoman(num%500)
        }

        divded = num / 400
        if divded == 1 {
            return "CD" + intToRoman(num%400)
        }


        divded = num / 100
        if (divded) > 0 {
            var text = ""
            for _ in 0..<(divded) {
                text += "C"
            }
            
            return text + intToRoman(num%100)
        }
        
        divded = num / 90
        if divded == 1 {
            return "XC" + intToRoman(num%90)
        }

        divded = num / 50
        if (divded) > 0 {
            var text = ""
            for _ in 0..<(divded) {
                text += "L"
            }
            
            return text + intToRoman(num%50)
        }

        divded = num / 40
        if divded == 1 {
            return "XL" + intToRoman(num%40)
        }

        divded = num / 10
        if divded > 0 {
            var text = ""
            for _ in 0..<divded {
                text += "X"
            }
            
            return text + intToRoman(num%10)
        }

        divded = num / 9
        if divded == 1 {
            return "IX" + intToRoman(num%9)
        }

        divded = num / 5
        if divded > 0 {
            var text = ""
            for _ in 0..<divded {
                text += "V"
            }
            
            return text + intToRoman(num%5)
        }

        divded = num / 4
        if divded == 1 {
            return "IV" + intToRoman(num%4)
        }

        divded = num / 1
        if divded > 0 {
            var text = ""
            for _ in 0..<divded {
                text += "I"
            }
            
            return text + intToRoman(num%1)
        }

        return ""
    }
}
