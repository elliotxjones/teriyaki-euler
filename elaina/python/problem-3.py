# Problem 3
#
# The prime factors of 13195 are 5, 7, 13 and 29. 
# What is the largest prime factor of the number 600851475143?

def breakdown(n):
    for i in range(1,int(n)+1):
        if all([
            n % i == 0,     
            i != 1,
            n != i,
        ]):
            n = n/i
            return n

def main():
    num = 600851475143
    old_num = num
    while num:
        old_num = num
        num = breakdown(old_num)
    print(old_num)


main()
