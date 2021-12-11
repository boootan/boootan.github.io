import math
def recursive_fibonacci(n):
    if n <= 1:
        return(n)
    else:
        return(recursive_fibonacci(n-1) + recursive_fibonacci(n - 2))

def fibonacci(n):
    return(int((pow((1+pow(5,1/2)),n)-pow((1-pow(5,1/2)),n))/ (pow(2, n)*pow(5, 1/2))))

def equation2(n, p):
    fp = fibonacci(p)
    return round(fp*(pow((1+pow(5, 1/2))/2, n-p)))

def equation3(n):
    return round(fibonacci(n-1)*((1+pow(5, 1/2))/2))

def main():
    print("part_1a")
    fib = []
    for x in range(0,21):
        fib.append(recursive_fibonacci(x))
    print(fib)
    print("part_1b")
    n = int(input("Please enter positive whole number n: "))
    print("Equation 2 Output - First 20")
    fib = []
    for x in range(0,n+1):
        if x == 0:
            fib.append(0)
        elif x == 1:
            fib.append(1)
        else:
            fib.append(equation2(x, x-1))
    print(fib)

    print("Equation 3 Output - First 20")
    fib = []
    for x in range(0, n+1):
        if x == 0:
            fib.append(0)
        elif x == 1:
            fib.append(1)
        else:
            fib.append(equation3(x))
    print(fib)

    f31 = equation2(31, 30)
    f32 = equation3(32)
    print("31st term = {}".format(f31))
    print("32nd term = {}".format(f32))
    

if __name__ == "__main__":
    main()