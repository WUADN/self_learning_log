# to print an integer, we need to make an ecall with a0 set to 1
# the thing that will be printed is stored in register a1
print_int:
     mv a1, a0
    # set register a0 to 1 so that the ecall will print
    li a0, 1
    # print the integer
    ecall

print_str:
    mv a1, a0 #give the address of the string to a1 to point
    li a0, 4 # tells ecall to print the string that a1 points to
    ecall
    jr    ra

print_character:
    li a1, '\n'
    li a0, 11 # tells ecall to print the character in a1
    ecall
