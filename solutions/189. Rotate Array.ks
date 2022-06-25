class Solution {
    fun rotate(array: IntArray, k: Int): Unit {
        if (k >= array.size || k == 0 || array.size == 1) return
        val tailArray = Array(array.size - k) { 0 }
        var tailIndex = array.size - k
        for (i in 0 until tailIndex) {
            tailArray[i] = array[i]
            print(tailArray[i])
        }
        for (i in array.indices) {
            if (i < k) {
                array[i] = array[tailIndex]
                tailIndex++
            } else {
                array[i] = tailArray[i - k]
            }
        }
    }
}
