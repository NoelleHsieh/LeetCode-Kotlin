class Solution {
    fun rotate(array: IntArray, k: Int): Unit {
        if (k == 0 || array.size == 1 || array.size == k) return
        var divider = if(array.size > k) k else (k % array.size)
        val tailArray = Array(array.size - divider) { 0 }
        for (i in 0 until tailArray.size) {
            tailArray[i] = array[i]
            print(array[i])
        }
        println()
        for (i in 0 until divider) {
            array[i] = array[tailArray.size + i]
            println(" $i : ${array[array.size - i - 1]}")
        }
        for (i in 0 until tailArray.size) {
            array[i + divider] = tailArray[i]
            println(" ${i + divider} : ${array[i + divider]}")
        }
    }
}
