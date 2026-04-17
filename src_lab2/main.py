import time

def compute(x):
    return x**2 - x**2 + x*4 - x*5 + x + x

def main():
    while True:
        try:
            n = input("Enter the number of iterations:")
            n = int(n)
        except:
            print("Inncorect type of value")
            break

        start = time.time()
        for i in range(n):
            result = compute(2)

        end = time.time()
        elapsed_ms = (end - start) * 1000

        print(f"Time taken: {elapsed_ms} ms")

if __name__ == "__main__":
    main()



