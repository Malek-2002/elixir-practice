class ReverseString {

    String reverse(String inputString) {
        char[] charArr = inputString.toCharArray();
        int n = charArr.length;
        
        for(int i = 0; i < n / 2; i++) {
            char temp = charArr[i];
            charArr[i] = charArr[n - i - 1];
            charArr[n - i - 1] = temp;
        }

        return String.valueOf(charArr);
    }
  
}
