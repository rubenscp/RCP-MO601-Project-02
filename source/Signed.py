# Sign Extension Functions in Python
# adapted from Henry S. Warren, Jr., Hacker's Delight (2e), Ch. 2, Addison-Wesley, 2012.

# signed byte to signed int
def sb1(x):
    yyy1 = (x + 0x80)
    yyy2 =  0xff
    yyy3 =  0x80

    return ((x + 0x80) & 0xff) - 0x80

def sb2(x):
    return ((x & 0xff) ^ 0x80) - 0x80

# works if x & -0x100 == 0
def sb3(x):
    return (x ^ 0x80) - 0x80

def sb4(x):
    return (x & 0x7f) - (x & 0x80)


# signed short to signed int

def ss1(x):
    return ((x + 0x8000) & 0xffff) - 0x8000

def ss2(x):
    return ((x & 0xffff) ^ 0x8000) - 0x8000

# works if x & -0x10000 == 0
def ss3(x):
    return (x ^ 0x8000) - 0x8000

def ss4(x):
    return (x & 0x7fff) - (x & 0x8000)