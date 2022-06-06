class Solution {
    fun romanToInt(s: String): Int {
        var result = 0
        var length = s.length
        var index = 0
        while (index < length) {
          val firstNum = getNum(s[index])
          if (index + 1 == length ) {
              // end of the String
              return result + firstNum
          }
          
          val secNum = getNum(s[index + 1])
                                    
          if (firstNum < secNum) {
             result = result + secNum - firstNum
             index += 2
          } else {
             result = result + firstNum
             index ++
          }
        }
        return result
    }
 
    
    fun getNum(c: Char): Int {
        return when (c) {
            'M' -> 1000
            'C' -> 100
            'X' -> 10
            'I' -> 1
            'D' -> 500
            'L' -> 50
            'V' -> 5
            else -> 0
        }
    }
}
