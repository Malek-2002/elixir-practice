def is_armstrong_number(number):
    sum = 0
    digits = len(str(number))
    n = number
    while(n != 0):
        sum += (n % 10)**digits
        n //= 10
    
    return sum == number 