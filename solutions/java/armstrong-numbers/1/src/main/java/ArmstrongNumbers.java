class ArmstrongNumbers {

    boolean isArmstrongNumber(int numberToCheck) {
        int length = (numberToCheck == 0) ? 1 : (int) Math.log10(numberToCheck) + 1;

        int n = numberToCheck;
        int sum = 0;
        while(n != 0) {
            int currDigit = n % 10;
            n /= 10;
            sum += Math.pow(currDigit, length);
        }

        return sum == numberToCheck;
    }

}
