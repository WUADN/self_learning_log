NOP -> ADDI x0, x0, 0    
MV rd, rs1 -> ADD rd, x0, rs1   
LI rd, imm -> ADDI rd, x0, imm   
LA rd, symbol-> AUIPC rd, 0, symbol   
SEQZ rd, rs -> SLTIU rd, rs, 1   
SNEZ rd, rs -> SLTU rd, x0, rs  
SLT rd, rs1, rs2 -> SLT rd, rs1, rs2   
SGT rd, rs1, rs2 -> SLT rd, rs2, rs1   
SLLI rd, rs, shamt -> SLLI rd, rs, shamt  
SRLI rd, rs, shamt -> SRLI rd, rs, shamt  
