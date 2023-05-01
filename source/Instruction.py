from Util import Util

class Instruction:

    def __init__(self):       
        # general attributes of all instructions types
        self.type = ''
        self.int_address = 0
        self.hex_address = ''
        self.hex_instruction = ''
        self.bin_instruction = ''
        self.instruction_complement = ''
        self.opcode = ''
        self.mnemonic = ''
        self.instruction_dissassembly = ''

        # log line
        self.log_line = ''
        self.log_hex_rd = ''
        self.log_hex_rs1_previous_instr = ''
        self.log_hex_rs2_previous_instr = ''
        
        # R-type 
        self.r_type_bin_rd = ''
        self.r_type_bin_funct3 = ''
        self.r_type_bin_rs1 = ''
        self.r_type_bin_rs2 = ''
        self.r_type_bin_funct7 = ''

        # I-type 
        self.i_type_bin_rd = ''
        self.i_type_bin_funct3 = ''
        self.i_type_bin_rs1 = ''
        self.i_type_bin_immediate_11_0 = ''      
        self.i_type_bin_immediate_11_5 = ''   # used to select SRLI or SRAI instructions
        self.i_type_bin_shamt = ''  
        self.i_type_bin_pred = ''
        self.i_type_bin_succ = ''
        self.i_type_bin_uimm = ''
        self.i_type_bin_immediate_adjusted = ''

        self.i_type_int_offset = 0
        self.i_type_bin_rs2_log = ''

        # S-type 
        self.s_type_bin_immediate_4_0 = ''
        self.s_type_bin_funct3 = ''
        self.s_type_bin_rs1 = ''
        self.s_type_bin_rs2 = ''
        self.s_type_bin_immediate_11_5 = ''

        self.s_type_bin_immediate_adjusted = ''
        self.s_type_int_offset_sexted = 0
        self.s_type_bin_rd_log = ''

        # B-type 
        self.b_type_bin_immediate4_1_11 = ''
        self.b_type_bin_funct3 = ''
        self.b_type_bin_rs1 = ''
        self.b_type_bin_rs2 = ''
        self.b_type_bin_immediate12_10_5 = ''

        self.b_type_bin_immediate_adjusted = ''
        self.b_type_int_offset_sexted = 0

        # U-type 
        self.u_type_bin_rd = ''
        self.u_type_bin_immediate_31_12 = ''
        self.u_type_bin_immediate_adjusted = ''

        self.s_type_int_offset_sexted = 0
        self.u_type_bin_rs1_log = ''
        self.u_type_bin_rs2_log = ''


        # J-type 
        self.j_type_bin_rd = ''
        self.j_type_bin_immediate_20_10_11_192 = ''
        self.j_type_bin_immediate_adjusted = ''
        self.j_type_int_offset_sexted = 0

        self.j_type_bin_rs1_log = ''
        self.j_type_bin_rs2_log = ''


        # address of the next instruction to be executed 
        self.address_of_next_instruction = ''

    def get_int_address(self):
        return self.int_address

    def get_hex_address(self):
        return self.hex_address

    def get_hex_instruction(self):
        return self.hex_instruction

    def get_log_instruction_dissassembly(self):
        return self.instruction_dissassembly

    def get_instruction_complement(self):
        return self.instruction_complement
    
    def get_mnemonic(self):
        return (self.mnemonic + ' '*8)[0:7]

    def get_int_register_pointed_by_rd(self):
        if self.type == 'R':
            return Util.convert_bin_str_to_int(self.r_type_bin_rd)
        elif self.type == 'I':
            return Util.convert_bin_str_to_int(self.i_type_bin_rd)
        elif self.type == 'S': # use the same position of rd register 
            return Util.convert_bin_str_to_int(self.s_type_bin_immediate_4_0)
        elif self.type == 'B': # use the same position of rd register 
            return Util.convert_bin_str_to_int(self.b_type_bin_immediate4_1_11)
        elif self.type == 'U':
            return Util.convert_bin_str_to_int(self.u_type_bin_rd)
        elif self.type == 'J':
            return Util.convert_bin_str_to_int(self.j_type_bin_rd)

    def get_int_register_pointed_by_rs1(self):
        if self.type == 'R':
            return Util.convert_bin_str_to_int(self.r_type_bin_rs1)
        elif self.type == 'I':
            return Util.convert_bin_str_to_int(self.i_type_bin_rs1)
        elif self.type == 'S':
            return Util.convert_bin_str_to_int(self.s_type_bin_rs1)
        elif self.type == 'B':
            return Util.convert_bin_str_to_int(self.b_type_bin_rs1)
        elif self.type == 'U': # use the same position of rs1 register 
            return Util.convert_bin_str_to_int(self.u_type_bin_rs1_log)
        elif self.type == 'J': # use the same position of rs1 register
            return Util.convert_bin_str_to_int(self.j_type_bin_rs1_log)

    def get_int_register_pointed_by_rs2(self):
        if self.type == 'R':
            return Util.convert_bin_str_to_int(self.r_type_bin_rs2)
        elif self.type == 'I':
            return Util.convert_bin_str_to_int(self.i_type_bin_rs2_log)
        elif self.type == 'S':
            return Util.convert_bin_str_to_int(self.s_type_bin_rs2)
        elif self.type == 'B':
            return Util.convert_bin_str_to_int(self.b_type_bin_rs2)
        elif self.type == 'U': # use the same position of rs2 register
            return Util.convert_bin_str_to_int(self.u_type_bin_rs2_log)
        elif self.type == 'J': # use the same position of rs2 register
            return Util.convert_bin_str_to_int(self.j_type_bin_rs2_log)
        
    def get_log_line(self):
        return self.log_line

    def get_log_hex_rd(self):  
        return self.log_hex_rd

    def get_log_hex_rs1_before_instr(self):
        return self.log_hex_rs1_previous_instr

    def get_log_hex_rs2_before_instr(self):
        return self.log_hex_rs2_previous_instr
   
    # decode instruction
    def decodeInstruction(self, instruction_map, 
                          int_address, hex_address, 
                          bin_instruction, hex_instruction,
                          instruction_complement):

        # setting general attributes of an instruction 
        self.int_address = int_address
        self.hex_address = hex_address
        self.hex_instruction = hex_instruction
        self.bin_instruction = bin_instruction
        self.instruction_complement = instruction_complement

        # getting instruction opcode 
        opcode = self.getOpcode(bin_instruction)

        # getting the instruction type from opcode 
        instruction_dictionary = instruction_map.getValue(opcode)
        
        # setting the instruction type 
        self.type = instruction_dictionary[0]

        # setting instruction mnemonic
        self.mnemonic = instruction_dictionary[1]

        # decode instruction R-type 
        if self.type == 'R':
            self.decodeBaseInstruction_R_type(bin_instruction)

        # decode instruction I-type 
        if self.type == 'I':
            self.decodeBaseInstruction_I_type(bin_instruction)

        # decode instruction S-type 
        if self.type == 'S':
            self.decodeBaseInstruction_S_type(bin_instruction)

        # decode instruction B-type 
        if self.type == 'B':
            self.decodeBaseInstruction_B_type(bin_instruction)

        # decode instruction U-type 
        if self.type == 'U':
            self.decodeBaseInstruction_U_type(bin_instruction)

        # decode instruction J-type 
        if self.type == 'J':
            self.decodeBaseInstruction_J_type(bin_instruction)


    def getOpcode(self, bin_instruction):
        # removing binary indicator '0b'
        bin_instruction = self.removeBinaryPrefix(bin_instruction)

        # extracting opcode  
        opcode = bin_instruction[25:32]

        # returning opcode
        return opcode


    # decode base instruction of R type 
    def decodeBaseInstruction_R_type(self, bin_instruction):
        # removing binary indicator '0b'
        bin_instruction = self.removeBinaryPrefix(bin_instruction)

        # extracting fields 
        self.opcode = bin_instruction[25:32]
        self.r_type_bin_rd = bin_instruction[20:25]
        self.r_type_bin_funct3 = bin_instruction[17:20]
        self.r_type_bin_rs1 = bin_instruction[12:17]
        self.r_type_bin_rs2 = bin_instruction[7:12]
        self.r_type_bin_funct7 = bin_instruction[0:7]

        # print(f'R: {self.r_type_bin_funct7} {self.r_type_bin_rs2} {self.r_type_bin_rs1} {self.r_type_bin_funct3} {self.r_type_bin_rd} {self.opcode} ')


    # decode base instruction of I type 
    def decodeBaseInstruction_I_type(self, bin_instruction):
        # removing binary indicator '0b'
        bin_instruction = self.removeBinaryPrefix(bin_instruction)

        # extracting fields 
        self.opcode = bin_instruction[25:32]
        self.i_type_bin_rd = bin_instruction[20:25]
        self.i_type_bin_funct3 = bin_instruction[17:20]
        self.i_type_bin_rs1 = bin_instruction[12:17]
        self.i_type_bin_immediate_11_0 = bin_instruction[0:12]

        # setting offset in int format 
        self.i_type_bin_immediate_adjusted = self.i_type_bin_immediate_11_0
        self.i_type_int_offset_sexted = Util.adjust_bin_immediate_n_bits(self.i_type_bin_immediate_adjusted, \
                                                                         len(self.i_type_bin_immediate_adjusted))     

        self.i_type_bin_immediate_11_5 = bin_instruction[0:7]   # used to select SRLI or SRAI instructions 
        self.i_type_bin_shamt = bin_instruction[7:12]

        # fence instruction
        self.i_type_bin_pred = bin_instruction[4:8]
        self.i_type_bin_succ = bin_instruction[8:12]

        # csrr instructions 
        self.i_type_bin_uimm = bin_instruction[12:17]

        # used to log 
        self.i_type_bin_rs2_log = bin_instruction[7:12]      
        
        # print(f'I: {self.i_type_bin_immediate_11_0} {self.i_type_bin_rs1} {self.i_type_bin_funct3} {self.i_type_bin_rd} {self.opcode} ')


    # decode base instruction of S type 
    def decodeBaseInstruction_S_type(self, bin_instruction):
        # removing binary indicator '0b'
        bin_instruction = self.removeBinaryPrefix(bin_instruction)

        # extracting fields 
        self.opcode = bin_instruction[25:32]
        self.s_type_bin_immediate_4_0 = bin_instruction[20:25]
        self.s_type_bin_funct3 = bin_instruction[17:20]
        self.s_type_bin_rs1 = bin_instruction[12:17]
        self.s_type_bin_rs2 = bin_instruction[7:12]
        self.s_type_bin_immediate_11_5 = bin_instruction[0:7]

        # immediate adjusted - 12 bits
        self.s_type_bin_immediate_adjusted = self.s_type_bin_immediate_11_5 + self.s_type_bin_immediate_4_0

        # setting offset in int format 
        self.s_type_int_offset_sexted = Util.adjust_bin_immediate_n_bits(self.s_type_bin_immediate_adjusted, \
                                                                         len(self.s_type_bin_immediate_adjusted))        

        # used to log 
        self.s_type_bin_rd_log = bin_instruction[7:12]   

        # print(f'S: {self.s_type_bin_immediate_11_5} {self.s_type_bin_rs2} {self.s_type_bin_rs1} {self.s_type_bin_funct3} {self.s_type_bin_immediate_4_0} {self.opcode} ')


    # decode base instruction of B type 
    def decodeBaseInstruction_B_type(self, bin_instruction):
        # removing binary indicator '0b'
        bin_instruction = self.removeBinaryPrefix(bin_instruction)

        # extracting fields 
        self.opcode = bin_instruction[25:32]
        self.b_type_bin_immediate4_1_11 = bin_instruction[20:25]
        self.b_type_bin_funct3 = bin_instruction[17:20]
        self.b_type_bin_rs1 = bin_instruction[12:17]
        self.b_type_bin_rs2 = bin_instruction[7:12]
        self.b_type_bin_immediate12_10_5 = bin_instruction[0:7]
        # self.b_type_bin_immediate_adjusted = bin_instruction[0] \
        #                                    + bin_instruction[24] \
        #                                    + bin_instruction[1:7] \
        #                                    + bin_instruction[20:24]
        self.b_type_bin_immediate_adjusted = self.b_type_bin_immediate12_10_5[0] \
                                           + self.b_type_bin_immediate4_1_11[4] \
                                           + self.b_type_bin_immediate12_10_5[1:7] \
                                           + self.b_type_bin_immediate4_1_11[0:4] 
        self.b_type_bin_immediate_adjusted += '0'
        self.b_type_int_offset_sexted = Util.adjust_bin_immediate_n_bits(self.b_type_bin_immediate_adjusted, \
                                                                         len(self.b_type_bin_immediate_adjusted))
                
        # print(f'B: {self.b_type_bin_immediate12_10_5} {self.b_type_bin_rs2} {self.b_type_bin_rs1} {self.b_type_bin_funct3} {self.b_type_bin_immediate4_1_11} {self.opcode} ')


    # decode base instruction of U type 
    def decodeBaseInstruction_U_type(self, bin_instruction):
        # removing binary indicator '0b'
        bin_instruction = self.removeBinaryPrefix(bin_instruction)

        # extracting fields 
        self.opcode = bin_instruction[25:32]
        self.u_type_bin_rd = bin_instruction[20:25]
        self.u_type_bin_immediate_31_12 = bin_instruction[0:20]
        self.u_type_bin_rs1_log = bin_instruction[12:17]
        self.u_type_bin_rs2_log = bin_instruction[7:12]

        # setting offset in int format 
        self.u_type_bin_immediate_adjusted = self.u_type_bin_immediate_31_12 + '0'
        self.u_type_int_offset_sexted = Util.adjust_bin_immediate_n_bits(self.u_type_bin_immediate_adjusted, \
                                                                         len(self.u_type_bin_immediate_adjusted))

        # print(f'U: {self.u_type_bin_immediate_31_12} {self.u_type_bin_rd} {self.opcode} ')

    # decode base instruction of J type 
    def decodeBaseInstruction_J_type(self, bin_instruction):
        # removing binary indicator '0b'
        bin_instruction = self.removeBinaryPrefix(bin_instruction)

        # extracting fields 
        self.opcode = bin_instruction[25:32]
        self.j_type_bin_rd = bin_instruction[20:25]
        self.j_type_bin_immediate_20_10_11_192 = bin_instruction[0:20]
        
        self.j_type_bin_immediate_adjusted = bin_instruction[0] + \
                                        bin_instruction[12:20] + \
                                        bin_instruction[11] + \
                                        bin_instruction[1:11]        
        self.j_type_bin_immediate_adjusted += '0'
        self.j_type_int_offset_sexted = Util.adjust_bin_immediate_n_bits(self.j_type_bin_immediate_adjusted, \
                                                                         len(self.j_type_bin_immediate_adjusted))     
        
        self.j_type_bin_rs1_log = bin_instruction[12:17]
        self.j_type_bin_rs2_log = bin_instruction[7:12]

        # print(f'J: {self.j_type_bin_immediate_20_10_11_192} {self.j_type_bin_rd} {self.opcode} ')

    # remove binary prefix '0b' if exist 
    def removeBinaryPrefix(self, bin_instruction):
        # evaluating if string has binary prefix '0b'
        if bin_instruction[0:2] == '0b':
            # removing binary indicator '0b'
            bin_instruction = bin_instruction[2:]

        # returning withou 'ob'
        return  bin_instruction

    def set_registers_previous_instruction(self, int_rs1, int_rs2, registers):
        # setting rs1 and rs1 of the previous instruction
        self.log_hex_rs1_previous_instr = 'x' + f'{int_rs1:02d}' + '=' + f'{Util.convertIntToHex(registers[int_rs1], 8)}'
        self.log_hex_rs2_previous_instr = 'x' + f'{int_rs2:02d}' + '=' + f'{Util.convertIntToHex(registers[int_rs2], 8)}'
       
    def set_log_line(self, int_value_pointed_by_rd):
        # setting log line
        self.log_line = ''
        self.log_line += 'PC=' + Util.fill_hex_value_with_left_zeros(self.get_hex_address(), 8)
        self.log_line += ' ' + '[' + Util.fill_hex_value_with_left_zeros(self.get_hex_instruction(), 8) + ']'
        self.log_line += ' ' + self.get_log_hex_rd()
        self.log_line += ' ' + self.get_log_hex_rs1_before_instr()
        self.log_line += ' ' + self.get_log_hex_rs2_before_instr()
        self.log_line += ' ' + self.get_log_instruction_dissassembly()
        self.log_line += '\n'
