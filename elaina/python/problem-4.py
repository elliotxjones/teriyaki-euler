def main():
    pals = []

    for x in range(999, 0, -1):
        for y in range(x, 0, -1):
            m = x*y
            if str(m) == str(m)[::-1]:
                pals.append(m)

    pals.sort()
    print(pals[-1])
    
main()


    
