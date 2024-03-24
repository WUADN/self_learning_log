la reg, data  #load address of the data
.data
n: .word 8  #word: the size, 12:the value in decimal
main:
  la t0, n

a0   #always first return values

sw ra, 0(sp)

#数组
output: .word   6, 61, 17, -38, 19, 42, 5

#字符串
neg3:   .asciiz "f(-3) should be 6, and it is: "
