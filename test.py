import numpy as np

if __name__ == "__main__":
    a = [np.array([1,3,4]),np.array([5,6,2])]
    b = np.array([2,2,2])
    print((a - b))
    print((a-b)**2)