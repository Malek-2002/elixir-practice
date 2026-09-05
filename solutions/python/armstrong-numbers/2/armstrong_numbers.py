def is_armstrong_number(number):
    digits = str(number)
    power = len(digits)
    digits_sum = sum(int(digit) ** power for digit in str(number))
    return digits_sum == number 