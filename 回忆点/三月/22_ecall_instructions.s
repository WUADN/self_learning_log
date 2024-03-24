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

# Set register a0 to 10 (Exit Program)
exit:
li a0, 10
# Perform ecall
ecall

# Set register a0 to 17 (Exit and Close File)
exit_and_close_file:
li a0, 17
# Perform ecall
ecall

# Set register a0 to 8 (Allocate Memory)
allocate_memory:
li a0, 8
# The amount of memory to allocate is in a1
# The address of the allocated memory will be returned in a0
mv a1, memory_size
# Perform ecall
ecall

# Set register a0 to 9 (Free Memory)
Free_Memory：
li a0, 9
# The address of the memory to be freed is in a1
mv a1, memory_address
# Perform ecall
ecall

# Set register a0 to 10 (Open File)
open_file:
li a0, 10
# The file path is in a1
mv a1, file_path_address
# The file mode is in a2
li a2, file_mode
# Perform ecall
ecall

# Set register a0 to 11 (Close File)
close_file:
li a0, 11
# The file descriptor to close is in a1
mv a1, file_descriptor
# Perform ecall
ecall

# Set register a0 to 12 (Read File)
read_file:
li a0, 12
# The file descriptor is in a1
mv a1, file_descriptor
# The buffer address where the data will be stored is in a2
mv a2, buffer_address
# The maximum number of bytes to read is in a3
mv a3, max_bytes_to_read
# Perform ecall
ecall

# Set register a0 to 13 (Write File)
write_file:
li a0, 13
# The file descriptor is in a1
mv a1, file_descriptor
# The buffer address containing the data to write is in a2
mv a2, buffer_address
# The number of bytes to write is in a3
mv a3, bytes_to_write
# Perform ecall
ecall


# Set register a0 to 14 (Change File Pointer)
change_file_point:
li a0, 14
# The file descriptor is in a1
mv a1, file_descriptor
# The offset is in a2
mv a2, offset
# The reference point for seeking is in a3
mv a3, whence
# Perform ecall
ecall



