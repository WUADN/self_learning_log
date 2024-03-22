print_int:
     mv a1, a0
    # set register a0 to 1 so that the ecall will print
    li a0, 1
    # print the integer
    ecall

