from Util import Util
from Instruction import Instruction
from InstructionMap import InstructionMap
from Log import Log

import numpy as np

class RiscVProcessor:

    def __init__(self, number_of_registers, memory_size):      
        # class attributes
        self.int_program_counter = 0
        self.number_of_registers = number_of_registers
        self.memory_size = memory_size
        self.memory_max_address = 0
        self.registers = []
        self.memory = []
        self.log = Log()
        self.instruction_map = InstructionMap()

        # register map for assembler mnemonics.
        self.register_assembler_mnemonic_map = {
            '0' : ['zero'], 
            '1' : ['ra'], 
            '2' : ['sp'], 
            '3' : ['gp'], 
            '4' : ['tp'], 
            '5' : ['t0'], 
            '6' : ['t1'], 
            '7' : ['t2'], 
            '8' : ['s0'], 
            '9' : ['s1'], 
            '10' : ['a0'], 
            '11' : ['a1'], 
            '12' : ['a2'], 
            '13' : ['a3'], 
            '14' : ['a4'], 
            '15' : ['a5'], 
            '16' : ['a6'], 
            '17' : ['a7'], 
            '18' : ['s2'], 
            '19' : ['s3'], 
            '20' : ['s4'], 
            '21' : ['s5'], 
            '22' : ['s6'], 
            '23' : ['s7'], 
            '24' : ['s8'], 
            '25' : ['s9'], 
            '26' : ['s10'], 
            '27' : ['s11'], 
            '28' : ['t3'], 
            '29' : ['t4'], 
            '30' : ['t5'], 
            '31' : ['t6']
        }
 
    def initialize(self):
        self.int_program_counter = 0
        self.memory = self.memory_size * [0]
        self.registers = self.number_of_registers*[0]

    # getting the assembler mnemonic for register
    def get_assembler_mnemonic_register(self, key):
        assembler_mnemonic = self.register_assembler_mnemonic_map.get(str(key))
        return assembler_mnemonic[0]

    # set instuction into specific memor address
    def set_instruction_into_memory(self, int_memory_address, hex_memory_address, bin_instruction, str_hex_instruction, assembler_instruction):
        instruction = [hex_memory_address, bin_instruction, str_hex_instruction, assembler_instruction]
        self.memory[int_memory_address] = instruction  

    def load_program_assembler_into_memory(self, c_program_assembly, show_print):
        # reading program 
        for line in c_program_assembly:

            # removing line feed caracter
            if line == '\n'  or  line[0] != ' ':
                continue 

            # getting hex memory address 
            hex_memory_address = line[1:4]
            int_memory_address = Util.convertStrHextoInt(hex_memory_address)
            if int_memory_address > self.memory_max_address:
                self.memory_max_address = int_memory_address

            # getting hex instruction 
            str_hex_instruction = line[6:14]
            bin_instruction = Util.convertStrHextoBin32bits(str_hex_instruction)

            # getting assembler instruction 
            assembler_instruction = line[25:]
            assembler_instruction = assembler_instruction.replace('\n',' ').replace('\t',' ')

            # setting instruction into specfic memory address
            self.set_instruction_into_memory(int_memory_address, hex_memory_address, 
                                          bin_instruction, str_hex_instruction, 
                                          assembler_instruction)

            if show_print:
                print(f'memory[{int_memory_address}] : {self.memory[int_memory_address]}')

            # setting first instruction into PC
            if self.int_program_counter == 0:
                self.int_program_counter = int_memory_address
            
        # print(f'self.program_counter_register - endereço inicio: {self.int_program_counter}' + \
        #       f'  self.memory_max_address: {self.memory_max_address}'
        #       )

    # execute program from memory 
    def execute_program_from_memory(self, program_name, test_path_log, show_print):
        # getting just the program name without extensions
        log_filename = program_name[:len(program_name)-4]

        # creating log file 
        self.log.create_log_file(log_filename, test_path_log)

        # processing programa instruction from memory starting in the 
        # address stored in the program counter register 
        end_execution = False
        ni = 1

        int_rs1_before_execute_instruction = 0
        int_rs2_before_execute_instruction = 0

        # looping instructions in memory 
        while not end_execution:

            # getting instruction addressed by the PC to be decoded, executed and write log 
            int_address = self.int_program_counter
            hex_address = (self.memory[self.int_program_counter])[0]
            bin_instruction = (self.memory[self.int_program_counter])[1]
            hex_instruction = (self.memory[self.int_program_counter])[2]
            instruction_complement = (self.memory[self.int_program_counter])[3]

            # creating new instruction object 
            current_instruction = Instruction()

            # decode instruction 
            current_instruction.decodeInstruction(self.instruction_map, 
                                                  int_address, hex_address, 
                                                  bin_instruction, hex_instruction,
                                                  instruction_complement)
            
            # setting rs1 and rs1 of the previous instruction
            int_rs1_before_execute_instruction = current_instruction.get_int_register_pointed_by_rs1()
            int_rs2_before_execute_instruction = current_instruction.get_int_register_pointed_by_rs2()
            current_instruction.set_registers_previous_instruction(int_rs1_before_execute_instruction, \
                                                                   int_rs2_before_execute_instruction, \
                                                                   self.registers)
            
            # executing the instruction
            self.execute_instruction(current_instruction, show_print)

            # write log 
            self.log.write_instruction_log_line(current_instruction)

            # evaluating end of programa execution 
            if current_instruction.mnemonic == 'ebreak': 
                end_execution = True

            ni += 1
            if ni>2000:
                end_execution = True


        # closing log file
        self.log.close_log_file()


    # execute the instruction 
    def execute_instruction(self, instruction, show_print):

        if instruction.type == 'R':
            self.executeBaseInstruction_R_type(instruction, show_print)

        if instruction.type == 'I':
            self.executeBaseInstruction_I_type(instruction, show_print)

        if instruction.type == 'S':
            self.executeBaseInstruction_S_type(instruction, show_print)

        if instruction.type == 'B':
            self.executeBaseInstruction_B_type(instruction, show_print)

        if instruction.type == 'U':
            self.executeBaseInstruction_U_type(instruction, show_print)

        if instruction.type == 'J':
            self.executeBaseInstruction_J_type(instruction, show_print)

    # ####################
    # Instruction R type 
    # ####################
    def executeBaseInstruction_R_type(self, instruction, show_print):

        # getting the instruction type from opcode + funct3
        instruction_dictionary = self.instruction_map.getValue(instruction.opcode \
                                                               + instruction.r_type_bin_funct7 \
                                                               + instruction.r_type_bin_funct3 \
                                                            )
        
        # updating instruction mnemonic
        instruction.mnemonic = instruction_dictionary[1]

        if show_print:
            print(f'Instruction at memory[{instruction.int_address}, {instruction.hex_address}]' \
            + f' type: {instruction.type}' \
            + f' mnemonic: {instruction.mnemonic}' \
            + f' opcode: {instruction.opcode}')
                
        # instruction to load value from memory to register 
        if instruction.r_type_bin_funct7 == '0000000' and \
            instruction.r_type_bin_funct3 == '000': # 0000000 rs2 rs1 000 rd 0110011 ADD
            self.executeBaseInstruction_R_type_add(instruction)
            return             
        elif instruction.r_type_bin_funct7 == '0100000' and \
             instruction.r_type_bin_funct3 == '000': # 0100000 rs2 rs1 000 rd 0110011 SUB
            self.executeBaseInstruction_R_type_sub(instruction)
            return             
        elif instruction.r_type_bin_funct7 == '0000000' and \
             instruction.r_type_bin_funct3 == '001': # 0000000 rs2 rs1 001 rd 0110011 SLL
            self.executeBaseInstruction_R_type_sll(instruction)
            return             
        elif instruction.r_type_bin_funct7 == '0000000' and \
             instruction.r_type_bin_funct3 == '010': # 0000000 rs2 rs1 010 rd 0110011 SLT
            self.executeBaseInstruction_R_type_slt(instruction)
            return             
        elif instruction.r_type_bin_funct7 == '0000000' and \
             instruction.r_type_bin_funct3 == '011': # 0000000 rs2 rs1 011 rd 0110011 SLTU
            self.executeBaseInstruction_R_type_sltu(instruction)
            return             
        elif instruction.r_type_bin_funct7 == '0000000' and \
             instruction.r_type_bin_funct3 == '100': # 0000000 rs2 rs1 100 rd 0110011 XOR
            self.executeBaseInstruction_R_type_xor(instruction)
            return             
        elif instruction.r_type_bin_funct7 == '0000000' and \
             instruction.r_type_bin_funct3 == '101': # 0000000 rs2 rs1 101 rd 0110011 SRL
            self.executeBaseInstruction_R_type_srl(instruction)
            return             
        elif instruction.r_type_bin_funct7 == '0100000' and \
             instruction.r_type_bin_funct3 == '101': # 0100000 rs2 rs1 101 rd 0110011 SRA
            self.executeBaseInstruction_R_type_sra(instruction)
            return             
        elif instruction.r_type_bin_funct7 == '0000000' and \
             instruction.r_type_bin_funct3 == '110': # 0000000 rs2 rs1 110 rd 0110011 OR
            self.executeBaseInstruction_R_type_or(instruction)
            return             
        elif instruction.r_type_bin_funct7 == '0000000' and \
             instruction.r_type_bin_funct3 == '111': # 0000000 rs2 rs1 111 rd 0110011 AND
            self.executeBaseInstruction_R_type_and(instruction)
            return             

        # multilications and divisions instructions 
        if instruction.r_type_bin_funct7 == '0000001' and \
            instruction.r_type_bin_funct3 == '000': # 0000001 rs2 rs1 000 rd 0110011 MUL
            self.executeBaseInstruction_R_type_mul(instruction)
            return             
        elif instruction.r_type_bin_funct7 == '0000001' and \
             instruction.r_type_bin_funct3 == '001': # 0000001 rs2 rs1 001 rd 0110011 MULH
            self.executeBaseInstruction_R_type_mulh(instruction)
            return             
        elif instruction.r_type_bin_funct7 == '0000001' and \
             instruction.r_type_bin_funct3 == '010': # 0000001 rs2 rs1 010 rd 0110011 MULHSU
            self.executeBaseInstruction_R_type_mulhsu(instruction)
            return             
        elif instruction.r_type_bin_funct7 == '0000001' and \
             instruction.r_type_bin_funct3 == '011': # 0000001 rs2 rs1 011 rd 0110011 MULHU
            self.executeBaseInstruction_R_type_mulhu(instruction)
            return             
        elif instruction.r_type_bin_funct7 == '0000001' and \
             instruction.r_type_bin_funct3 == '100': # 0000001 rs2 rs1 100 rd 0110011 DIV
            self.executeBaseInstruction_R_type_div(instruction)
            return             
        elif instruction.r_type_bin_funct7 == '0000001' and \
             instruction.r_type_bin_funct3 == '101': # 0000001 rs2 rs1 101 rd 0110011 DIVU
            self.executeBaseInstruction_R_type_divu(instruction)
            return             
        elif instruction.r_type_bin_funct7 == '0000001' and \
             instruction.r_type_bin_funct3 == '110': # 0000001 rs2 rs1 110 rd 0110011 REM
            self.executeBaseInstruction_R_type_rem(instruction)
            return             
        elif instruction.r_type_bin_funct7 == '0000001' and \
             instruction.r_type_bin_funct3 == '111': # 0000001 rs2 rs1 111 rd 0110011 REM
            self.executeBaseInstruction_R_type_remu(instruction)
            return             

        print(f'Instrução não implementada: tipo: {instruction.type} opcode: {instruction.opcode} - mnemonic: {instruction.mnemonic}')

        # setting log line 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])           

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4

    # 0000000 rs2 rs1 000 rd 0110011 ADD
    def executeBaseInstruction_R_type_add(self, instruction):

        # executing instruction
        # Implementation:	x[rd] = x[rs1] + x[rs2]
        self.registers[instruction.get_int_register_pointed_by_rd()] = \
            self.registers[instruction.get_int_register_pointed_by_rs1()] + \
            self.registers[instruction.get_int_register_pointed_by_rs2()]
        
        # preparing log line of the instruction
        # Format:	add rd,rs1,rs2
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
                + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2())
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4    

    # 0100000 rs2 rs1 000 rd 0110011 SUB
    def executeBaseInstruction_R_type_sub(self, instruction):

        # executing instruction 
        # Implementation:	x[rd] = x[rs1] - x[rs2]
        self.registers[instruction.get_int_register_pointed_by_rd()] = \
            self.registers[instruction.get_int_register_pointed_by_rs1()] - \
            self.registers[instruction.get_int_register_pointed_by_rs2()]

        # preparing log line of the instruction 
        # Format:	sub rd,rs1,rs2
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
                + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2())
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])   

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4    

    # 0000000 rs2 rs1 001 rd 0110011 SLL
    def executeBaseInstruction_R_type_sll(self, instruction):

        # executing instruction 
        # Implementation:	x[rd] = x[rs1] << x[rs2]
        self.registers[instruction.get_int_register_pointed_by_rd()] = \
            self.registers[instruction.get_int_register_pointed_by_rs1()] << \
            self.registers[instruction.get_int_register_pointed_by_rs2()]
        
        # preparing log line of the instruction 
        # Format:	sll rd,rs1,rs2
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
                + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2())
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])   

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4    

    # 0000000 rs2 rs1 010 rd 0110011 SLT
    def executeBaseInstruction_R_type_slt(self, instruction):

        # executing instruction 
        # Implementation:	x[rd] = x[rs1] <s x[rs2]
        int_rs1_value = Util.adjust_int_immediate_n_bits(self.registers[instruction.get_int_register_pointed_by_rs1()], 32)
        int_rs2_value = Util.adjust_int_immediate_n_bits(self.registers[instruction.get_int_register_pointed_by_rs2()], 32)
        if int_rs1_value < int_rs2_value:
            self.registers[instruction.get_int_register_pointed_by_rd()] = 1
        else: 
            self.registers[instruction.get_int_register_pointed_by_rd()] = 0

        # preparing log line of the instruction 
        # Format:	slt rd,rs1,rs2
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
                + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2())
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])   

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4    

    # 0000000 rs2 rs1 011 rd 0110011 SLTU
    def executeBaseInstruction_R_type_sltu(self, instruction):

        # executing instruction
        # Implementation:	x[rd] = x[rs1] <u x[rs2]       

        rs1_value = self.registers[instruction.get_int_register_pointed_by_rs1()]
        if rs1_value < 0: rs1_value += (1<<32)
        rs2_value = self.registers[instruction.get_int_register_pointed_by_rs2()]
        if rs2_value < 0: rs2_value += (1<<32)
        if rs1_value < rs2_value:
            self.registers[instruction.get_int_register_pointed_by_rd()] = 1
        else: 
            self.registers[instruction.get_int_register_pointed_by_rd()] = 0     

        # preparing log line of the instruction 
        # Format: sltu rd,rs1,rs2
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
                + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2())
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])   

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4    

    # 0000000 rs2 rs1 100 rd 0110011 XOR
    def executeBaseInstruction_R_type_xor(self, instruction):

        # executing instruction 
        # Implementation:	x[rd] = x[rs1] ^ x[rs2]
        self.registers[instruction.get_int_register_pointed_by_rd()] = \
            self.registers[instruction.get_int_register_pointed_by_rs1()] ^ \
            self.registers[instruction.get_int_register_pointed_by_rs2()]
        
        # preparing log line of the instruction 
        # Format:	xor rd,rs1,rs2
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
                + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2())
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])   

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4    

    # 0000000 rs2 rs1 101 rd 0110011 SRL
    def executeBaseInstruction_R_type_srl(self, instruction):

        # TO CHECK 

        # executing instruction 
        # Implementation:	x[rd] = x[rs1] >>u x[rs2]
        self.registers[instruction.get_int_register_pointed_by_rd()] = \
            self.registers[instruction.get_int_register_pointed_by_rs1()] >> \
            self.registers[instruction.get_int_register_pointed_by_rs2()]
        
        # preparing log line of the instruction 
        # Format:	srl rd,rs1,rs2
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
                + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2())
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])   

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4    

    # 0100000 rs2 rs1 101 rd 0110011 SRA
    def executeBaseInstruction_R_type_sra(self, instruction):

        # TO CHECK 
        # executing instruction 
        # Implementation:	x[rd] = x[rs1] >>s x[rs2]
        self.registers[instruction.get_int_register_pointed_by_rd()] = \
            self.registers[instruction.get_int_register_pointed_by_rs1()] >> \
            self.registers[instruction.get_int_register_pointed_by_rs2()]
       
        # preparing log line of the instruction 
        # Format:	sra rd,rs1,rs2
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
                + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2())
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])   

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4    

    # 0000000 rs2 rs1 110 rd 0110011 OR
    def executeBaseInstruction_R_type_or(self, instruction):

        # executing instruction 
        # Implementation:	x[rd] = x[rs1] | x[rs2]
        self.registers[instruction.get_int_register_pointed_by_rd()] = \
            self.registers[instruction.get_int_register_pointed_by_rs1()] | \
            self.registers[instruction.get_int_register_pointed_by_rs2()]
        
        # preparing log line of the instruction 
        # Format:	sra rd,rs1,rs2
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
                + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2())
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])   

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4    

    # 0000000 rs2 rs1 111 rd 0110011 AND
    def executeBaseInstruction_R_type_and(self, instruction):

        # executing instruction 
        # Implementation:	x[rd] = x[rs1] & x[rs2]
        self.registers[instruction.get_int_register_pointed_by_rd()] = \
            self.registers[instruction.get_int_register_pointed_by_rs1()] & \
            self.registers[instruction.get_int_register_pointed_by_rs2()]
        
        # preparing log line of the instruction 
        # Format:	and rd,rs1,rs2
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
                + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2())
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])   

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4    

    # 0000001 rs2 rs1 000 rd 0110011 MUL
    def executeBaseInstruction_R_type_mul(self, instruction):

        # executing instruction
        # Implementation:	x[rd] = x[rs1] × x[rs2]
        self.registers[instruction.get_int_register_pointed_by_rd()] = \
            self.registers[instruction.get_int_register_pointed_by_rs1()] * \
            self.registers[instruction.get_int_register_pointed_by_rs2()]
        
        # preparing log line of the instruction
        # Format:	mul rd,rs1,rs2
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
                + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2())
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])   

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4    

    # 0000001 rs2 rs1 001 rd 0110011 MULH
    def executeBaseInstruction_R_type_mulh(self, instruction):

        # executing instruction
        # Implementation:	x[rd] = (x[rs1] s×s x[rs2]) >>s XLEN
        self.registers[instruction.get_int_register_pointed_by_rd()] = \
            self.registers[instruction.get_int_register_pointed_by_rs1()] * \
            self.registers[instruction.get_int_register_pointed_by_rs2()]
        
        # preparing log line of the instruction
        # Format:	mulh rd,rs1,rs2
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
                + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2())
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])   

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4    

    # 0000001 rs2 rs1 010 rd 0110011 MULHSU
    def executeBaseInstruction_R_type_mulhsu(self, instruction):

        # executing instruction 
        # Implementation:	x[rd] = (x[rs1] s × x[rs2]) >>s XLEN        
        self.registers[instruction.get_int_register_pointed_by_rd()] = \
            self.registers[instruction.get_int_register_pointed_by_rs1()] * \
            self.registers[instruction.get_int_register_pointed_by_rs2()]

        int_reg_number_pointed_by_rs1 = Util.convert_bin_str_to_int(instruction.r_type_bin_rs1)
        int_reg_number_pointed_by_rs2 = Util.convert_bin_str_to_int(instruction.r_type_bin_rs2)        
        int_reg_number_pointed_by_rd = Util.convert_bin_str_to_int(instruction.r_type_bin_rd)
        int_value_pointed_by_rs1 = self.registers[int_reg_number_pointed_by_rs1]
        int_value_pointed_by_rs2 = self.registers[int_reg_number_pointed_by_rs2]
        self.registers[int_reg_number_pointed_by_rd] = int_value_pointed_by_rs1 * int_value_pointed_by_rs2
        
        # preparing log line of the instruction 
        # Format:	mulhsu rd,rs1,rs2
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
                + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2())
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])   

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4    


    # 0000001 rs2 rs1 011 rd 0110011 MULHU
    def executeBaseInstruction_R_type_mulhu(self, instruction):

        # executing instruction 
        # Implementation:	x[rd] = (x[rs1] u × x[rs2]) >>u XLEN
        self.registers[instruction.get_int_register_pointed_by_rd()] = \
            self.registers[instruction.get_int_register_pointed_by_rs1()] * \
            self.registers[instruction.get_int_register_pointed_by_rs2()]
        
        # preparing log line of the instruction 
        # Format:	mulhu rd,rs1,rs2        
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
                + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2())
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])   

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4    

    # 0000001 rs2 rs1 100 rd 0110011 DIV
    def executeBaseInstruction_R_type_div(self, instruction):

        # executing instruction 
        # Implementation:	x[rd] = x[rs1] /s x[rs2]
        aux_rs1_number_reg = instruction.get_int_register_pointed_by_rs1()
        aux_rs1_value = self.registers[instruction.get_int_register_pointed_by_rs1()]    
        aux_rs2_number_reg = instruction.get_int_register_pointed_by_rs2()
        aux_rs2_value = self.registers[instruction.get_int_register_pointed_by_rs2()]    

        if self.registers[instruction.get_int_register_pointed_by_rs2()] == 0:
            self.registers[instruction.get_int_register_pointed_by_rd()] = 0 
        else:         
            self.registers[instruction.get_int_register_pointed_by_rd()] = int(np.fix( \
                self.registers[instruction.get_int_register_pointed_by_rs1()] / \
                self.registers[instruction.get_int_register_pointed_by_rs2()]    
            ))
       
        # preparing log line of the instruction 
        # Format:	div rd,rs1,rs2
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
                + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2())
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])   

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4    

    # 0000001 rs2 rs1 101 rd 0110011 DIVU
    def executeBaseInstruction_R_type_divu(self, instruction):

        # executing instruction 
        # Implementation:	x[rd] = x[rs1] /u x[rs2]
        if self.registers[instruction.get_int_register_pointed_by_rs2()] == 0:
            self.registers[instruction.get_int_register_pointed_by_rd()] = 0 
        else:         
            self.registers[instruction.get_int_register_pointed_by_rd()] = int(np.fix( \
                self.registers[instruction.get_int_register_pointed_by_rs1()] / \
                self.registers[instruction.get_int_register_pointed_by_rs2()]    
            ))        
        
        # preparing log line of the instruction
        # Format: divu rd,rs1,rs2
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)         
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
                + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2())
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])   

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4    

    # 0000001 rs2 rs1 110 rd 0110011 REM
    def executeBaseInstruction_R_type_rem(self, instruction):

        # executing instruction 
        # Implementation:	x[rd] = x[rs1] %s x[rs2]
        self.registers[instruction.get_int_register_pointed_by_rd()] = \
            self.registers[instruction.get_int_register_pointed_by_rs1()] % \
            self.registers[instruction.get_int_register_pointed_by_rs2()]
        
        # preparing log line of the instruction 
        # Format:	rem rd,rs1,rs2
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
                + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2())
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])   

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4    

    # 0000001 rs2 rs1 111 rd 0110011 REMU
    def executeBaseInstruction_R_type_remu(self, instruction):

        # executing instruction
        # Implementation:	x[rd] = x[rs1] %u x[rs2] 
        self.registers[instruction.get_int_register_pointed_by_rd()] = \
            self.registers[instruction.get_int_register_pointed_by_rs1()] % \
            self.registers[instruction.get_int_register_pointed_by_rs2()]

        # preparing log line of the instruction
        # Format: remu rd,rs1,rs2
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
                + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
                + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2())
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])   

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4    

    # ####################
    # Instruction I type 
    # ####################
    def executeBaseInstruction_I_type(self, instruction, show_print):

        # evaluating instruction JALR
        if instruction.opcode == '1100111':
            self.executeBaseInstruction_I_type_jalr(instruction)
            return 

        # getting the instruction type from opcode + funct3
        instruction_dictionary = self.instruction_map.getValue(instruction.opcode + instruction.i_type_bin_funct3)
        
        # updating instruction mnemonic
        if instruction_dictionary != None:
            instruction.mnemonic = instruction_dictionary[1]
        
        if show_print:
            print(f'Instruction at memory[{instruction.int_address}, {instruction.hex_address}]' \
            + f' type: {instruction.type}' \
            + f' mnemonic: {instruction.mnemonic}' \
            + f' opcode: {instruction.opcode}')

        
        # instruction to load value from memory to register 
        if instruction.opcode == '0010011':
            if instruction.i_type_bin_funct3 == '000': # imm[11:0] rs1 000 rd 0010011 ADDI
                self.executeBaseInstruction_I_type_addi(instruction)
                return             
            elif instruction.i_type_bin_funct3 == '010': # imm[11:0] rs1 010 rd 0010011 SLTI
                self.executeBaseInstruction_I_type_slti(instruction)
                return             
            elif instruction.i_type_bin_funct3 == '011': # imm[11:0] rs1 011 rd 0010011 SLTIU
                self.executeBaseInstruction_I_type_sltiu(instruction)
                return             
            elif instruction.i_type_bin_funct3 == '100': # imm[11:0] rs1 100 rd 0010011 XORI
                self.executeBaseInstruction_I_type_xori(instruction)
                return             
            elif instruction.i_type_bin_funct3 == '110': # imm[11:0] rs1 110 rd 0010011 ORI
                self.executeBaseInstruction_I_type_ori(instruction)
                return             
            elif instruction.i_type_bin_funct3 == '111': # imm[11:0] rs1 111 rd 0010011 ANDI
                self.executeBaseInstruction_I_type_andi(instruction)
                return             
            elif instruction.i_type_bin_funct3 == '001': # 0000000 shamt rs1 001 rd 0010011 SLLI
                # getting the instruction type from opcode + funct3
                self.executeBaseInstruction_I_type_slli(instruction)
                return             
            elif instruction.i_type_bin_funct3 == '101'  and  \
                instruction.i_type_bin_immediate_11_5 == '0000000': # 0000000 shamt rs1 101 rd 0010011 SRLI
                self.executeBaseInstruction_I_type_srli(instruction)
                return             
            elif instruction.i_type_bin_funct3 == '101'  and  \
                instruction.i_type_bin_immediate_11_5 == '0100000': # 0100000 shamt rs1 101 rd 0010011 SRAI
                self.executeBaseInstruction_I_type_srai(instruction)
                return             

        # instruction to load value from memory to register 
        if instruction.opcode == '0000011':
            if instruction.i_type_bin_funct3 == '000': # imm[11:0] rs1 000 rd 0000011 LB
                self.executeBaseInstruction_I_type_lb(instruction)
                return             
            elif instruction.i_type_bin_funct3 == '001': # imm[11:0] rs1 001 rd 0000011 LH
                self.executeBaseInstruction_I_type_lh(instruction)
                return             
            elif instruction.i_type_bin_funct3 == '010': # imm[11:0] rs1 010 rd 0000011 LW
                self.executeBaseInstruction_I_type_lw(instruction)
                return             
            elif instruction.i_type_bin_funct3 == '100': # imm[11:0] rs1 100 rd 0000011 LBU
                self.executeBaseInstruction_I_type_lbu(instruction)
                return             
            elif instruction.i_type_bin_funct3 == '101': # imm[11:0] rs1 101 rd 0000011 LHU
                self.executeBaseInstruction_I_type_lhu(instruction)
                return             

        # instruction to load value from memory to register 
        if instruction.opcode == '0001111':
            if instruction.i_type_bin_funct3 == '000': # 0000 pred succ 00000 000 00000 0001111 FENCE
                self.executeBaseInstruction_I_type_fence(instruction)
                return             
            if instruction.i_type_bin_funct3 == '001': # 0000 0000 0000 00000 001 00000 0001111 FENCE.I
                self.executeBaseInstruction_I_type_fencei(instruction)
                return             

        # instruction to load value from memory to register 
        if instruction.opcode == '1110011':
            if instruction.i_type_bin_funct3 == '000' and \
                instruction.i_type_bin_immediate_11_0 == '000000000000': # 000000000000 00000 000 00000 1110011 ECALL
                self.executeBaseInstruction_I_type_ecall(instruction)
                return             
            if instruction.i_type_bin_funct3 == '000' and \
                instruction.i_type_bin_immediate_11_0 == '000000000001': # 000000000001 00000 000 00000 1110011 EBREAK
                self.executeBaseInstruction_I_type_ebreak(instruction)
                return             
            if instruction.i_type_bin_funct3 == '001': # csr rs1 001 rd 1110011 CSRRW
                self.executeBaseInstruction_I_type_csrrw(instruction)
                return             
            if instruction.i_type_bin_funct3 == '010': # csr rs1 010 rd 1110011 CSRRS
                self.executeBaseInstruction_I_type_csrrs(instruction)
                return             
            if instruction.i_type_bin_funct3 == '011': # csr rs1 011 rd 1110011 CSRRC
                self.executeBaseInstruction_I_type_csrrc(instruction)
                return             
            if instruction.i_type_bin_funct3 == '101': # csr zimm 101 rd 1110011 CSRRWI
                self.executeBaseInstruction_I_type_csrrwi(instruction)
                return             
            if instruction.i_type_bin_funct3 == '110': # csr zimm 110 rd 1110011 CSRRSI
                self.executeBaseInstruction_I_type_csrrsi(instruction)
                return             
            if instruction.i_type_bin_funct3 == '111': # csr zimm 111 rd 1110011 CSRRCI
                self.executeBaseInstruction_I_type_csrrci(instruction)
                return
            
        print(f'Instrução não implementada: tipo: {instruction.type} opcode: {instruction.opcode} - mnemonic: {instruction.mnemonic}')

        # setting log line 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])           

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4         


    # imm[11:0] rs1 000 rd 1100111 JALR
    def executeBaseInstruction_I_type_jalr(self, instruction):

        # TOCHECK
        # executing instruction
        # Implementation:	t =pc+4; pc=(x[rs1]+sext(offset))&∼1; x[rd]=t

        # t =pc+4;
        temp = self.int_program_counter + 4

        # pc=(x[rs1]+sext(offset))&∼1;
        int_target_address = self.registers[instruction.get_int_register_pointed_by_rs1()] + \
                             instruction.i_type_int_offset_sexted
        int_target_address = int_target_address & (~1)        
        self.int_program_counter = int_target_address
        
        #  x[rd]=t
        self.registers[instruction.get_int_register_pointed_by_rd()] = temp
        
        # preparing log line of the instruction
        # Format:	jalr rd,rs1,offset
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
            + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
            + ',' +  str(Util.convert_bin_str_to_int(instruction.i_type_bin_immediate_11_0))
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      


    # imm[11:0] rs1 000 rd 0010011 ADDI
    def executeBaseInstruction_I_type_addi(self, instruction):

        # executing instruction    
        # Implementation:	x[rd] = x[rs1] + sext(immediate)
        # int_immediate_adjusted  = Util.adjust_immediate_12bits(instruction.i_type_bin_immediate_11_0)
        self.registers[instruction.get_int_register_pointed_by_rd()] = \
            self.registers[instruction.get_int_register_pointed_by_rs1()] + instruction.i_type_int_offset_sexted

        # preparing log line of the instruction
        # addi rd,rs1,imm
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
            + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
            + ',' +  str(instruction.i_type_int_offset_sexted)
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4 


    # imm[11:0] rs1 010 rd 0010011 SLTI
    def executeBaseInstruction_I_type_slti(self, instruction):

        # executing instruction       
        # Implementation:	x[rd] = x[rs1] <s sext(immediate)  
        # int_immediate_adjusted = Util.binary_in_string_to_int(instruction.i_type_bin_immediate_11_0)
        if self.registers[instruction.get_int_register_pointed_by_rs1()] < instruction.i_type_int_offset_sexted:
            self.registers[instruction.get_int_register_pointed_by_rd()] = 1
        else: 
            self.registers[instruction.get_int_register_pointed_by_rd()] = 0
      
        # preparing log line of the instruction 
        # Format: slti rd,rs1,imm
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
            + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
            + ',' +  str(instruction.i_type_int_offset_sexted)
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4 

    # imm[11:0] rs1 011 rd 0010011 SLTIU
    def executeBaseInstruction_I_type_sltiu(self, instruction):

        # executing instruction
        # Implementation:	x[rd] = x[rs1] <u sext(immediate)
        if abs(self.registers[instruction.get_int_register_pointed_by_rs1()]) < instruction.i_type_int_offset_sexted:
            self.registers[instruction.get_int_register_pointed_by_rd()] = 1
        else: 
            self.registers[instruction.get_int_register_pointed_by_rd()] = 0
      
        # preparing log line of the instruction 
        # Format:	sltiu rd,rs1,imm
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
            + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
            + ',' +  str(instruction.i_type_int_offset_sexted)
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4 

    # imm[11:0] rs1 100 rd 0010011 XORI
    def executeBaseInstruction_I_type_xori(self, instruction):

        # executing instruction
        # Implementation:	x[rd] = x[rs1] ^ sext(immediate)
        self.registers[instruction.get_int_register_pointed_by_rd()] = \
            self.registers[instruction.get_int_register_pointed_by_rs1()] ^ instruction.i_type_int_offset_sexted      
      
        # preparing log line of the instruction 
        # Format: xori rd,rs1,imm
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
            + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
            + ',' +  str(instruction.i_type_int_offset_sexted  )
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4 

    # imm[11:0] rs1 110 rd 0010011 ORI
    def executeBaseInstruction_I_type_ori(self, instruction):

        # executing instruction
        # Implementation:	x[rd] = x[rs1] | sext(immediate)
        self.registers[instruction.get_int_register_pointed_by_rd()] = \
            self.registers[instruction.get_int_register_pointed_by_rs1()] | instruction.i_type_int_offset_sexted                
        
        # preparing log line of the instruction 
        # Format:	ori rd,rs1,imm
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
            + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
            + ',' +  str(instruction.i_type_int_offset_sexted)
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4 

    # imm[11:0] rs1 111 rd 0010011 ANDI
    def executeBaseInstruction_I_type_andi(self, instruction):

        # executing instruction  
        # Implementation:	x[rd] = x[rs1] & sext(immediate)
        self.registers[instruction.get_int_register_pointed_by_rd()] = \
            self.registers[instruction.get_int_register_pointed_by_rs1()] & instruction.i_type_int_offset_sexted                
        
        # preparing log line of the instruction 
        # Format: andi rd,rs1,imm
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
            + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
            + ',' +  str(instruction.i_type_int_offset_sexted)
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4 

    # 0000000 shamt rs1 001 rd 0010011 SLLI
    def executeBaseInstruction_I_type_slli(self, instruction):

        # getting the instruction type from opcode + funct3
        instruction_dictionary = self.instruction_map.getValue(instruction.opcode + \
                                                               instruction.i_type_bin_immediate_11_5 + \
                                                                instruction.i_type_bin_funct3)
        if instruction_dictionary != None: instruction.mnemonic = instruction_dictionary[1]

        # executing instruction
        # Implementation: x[rd] = x[rs1] << shamt
        self.registers[instruction.get_int_register_pointed_by_rd()] = \
            self.registers[instruction.get_int_register_pointed_by_rs1()] << \
            Util.convert_bin_str_to_int(instruction.i_type_bin_shamt)

        # preparing log line of the instruction 
        # Format:	slli rd,rs1,shamt
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
            + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
            + ',' +  str(Util.convert_bin_str_to_int(instruction.i_type_bin_shamt))
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4 

    # 0000000 shamt rs1 101 rd 0010011 SRLI
    def executeBaseInstruction_I_type_srli(self, instruction):

        # getting the instruction type from opcode + funct3
        instruction_dictionary = self.instruction_map.getValue(instruction.opcode + \
                                                               instruction.i_type_bin_immediate_11_5 + \
                                                                instruction.i_type_bin_funct3)
        if instruction_dictionary != None: instruction.mnemonic = instruction_dictionary[1]

        # executing instruction
        # Implementation:	x[rd] = x[rs1] >>u shamt
        self.registers[instruction.get_int_register_pointed_by_rd()] = \
            self.registers[instruction.get_int_register_pointed_by_rs1()] >> \
            Util.convert_bin_str_to_int(instruction.i_type_bin_shamt)

        # preparing log line of the instruction
        # Format: srli rd,rs1,shamt
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
            + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
            + ',' +  str(Util.convert_bin_str_to_int(instruction.i_type_bin_shamt))
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4 

    # 0100000 shamt rs1 101 rd 0010011 SRAI
    def executeBaseInstruction_I_type_srai(self, instruction):

        # getting the instruction type from opcode + funct3
        instruction_dictionary = self.instruction_map.getValue(instruction.opcode + \
                                                               instruction.i_type_bin_immediate_11_5 + \
                                                                instruction.i_type_bin_funct3)
        if instruction_dictionary != None: instruction.mnemonic = instruction_dictionary[1]

        # executing instruction
        # Implementation:	x[rd] = x[rs1] >>s shamt
        self.registers[instruction.get_int_register_pointed_by_rd()] = \
            self.registers[instruction.get_int_register_pointed_by_rs1()] >> \
            Util.convert_bin_str_to_int(instruction.i_type_bin_shamt)
        
        # preparing log line of the instruction 
        # Format:	srai rd,rs1,shamt
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
            + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
            + ',' +  str(Util.convert_bin_str_to_int(instruction.i_type_bin_shamt))
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4 


    def executeBaseInstruction_I_type_lb(self, instruction):

        # executing instruction  
        # Implementation:	x[rd] = sext(M[x[rs1] + sext(offset)][7:0])  

        # getting memory address: x[rs1] + sext(offset)
        int_address_memory = self.registers[instruction.get_int_register_pointed_by_rs1()] + \
                             instruction.s_type_int_offset_sexted
        # getting value at the memory: sext(M[x[rs1] + sext(offset)]
        int_values = []
        int_values.append(self.memory[int_address_memory])
        # getting the real value from slices
        int_memory_value_loaded = Util.merge_slices_8_bits_into_one_value(int_values)
        # setting value into register rd
        self.registers[instruction.get_int_register_pointed_by_rd()] = \
            int_memory_value_loaded
        # self.s_type_int_offset_sexted = Util.adjust_bin_immediate_n_bits(self.s_type_bin_immediate_adjusted, \
        #                                                             len(self.s_type_bin_immediate_adjusted))        


        # preparing log line of the instruction 
        # Format:	lb rd,offset(rs1)
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
            + ',' + str(instruction.i_type_int_offset_sexted) \
            + '(' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) + ')' 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4 


    def executeBaseInstruction_I_type_lh(self, instruction):

        # executing instruction   
        # Implementation:	x[rd] = sext(M[x[rs1] + sext(offset)][15:0])

        # getting memory address: x[rs1] + sext(offset)
        int_address_memory = self.registers[instruction.get_int_register_pointed_by_rs1()] + \
                             instruction.s_type_int_offset_sexted
        # getting value at the memory: sext(M[x[rs1] + sext(offset)]
        int_values = []
        int_values.append(self.memory[int_address_memory])
        int_values.append(self.memory[int_address_memory+1])
        # getting the real value from slices
        int_memory_value_loaded = Util.merge_slices_8_bits_into_one_value(int_values)
        if int_memory_value_loaded < 0: int_memory_value_loaded -= (1<<32)
        # setting value into register rd
        self.registers[instruction.get_int_register_pointed_by_rd()] = int_memory_value_loaded
        
        # preparing log line of the instruction         
        # Format:	lh rd,offset(rs1)
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
            + ',' + str(instruction.i_type_int_offset_sexted) \
            + '(' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) + ')' 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4 


    def executeBaseInstruction_I_type_lw(self, instruction):

        # executing instruction
        # Implementation: x[rd] = sext(M[x[rs1] + sext(offset)][31:0])

        # getting memory address: x[rs1] + sext(offset)
        int_address_memory = self.registers[instruction.get_int_register_pointed_by_rs1()] + \
                             instruction.s_type_int_offset_sexted
        # getting value at the memory: sext(M[x[rs1] + sext(offset)]
        int_values = []
        int_values.append(self.memory[int_address_memory])
        int_values.append(self.memory[int_address_memory+1])
        int_values.append(self.memory[int_address_memory+2])
        int_values.append(self.memory[int_address_memory+3])
        # getting the real value from slices
        int_memory_value_loaded = Util.merge_slices_8_bits_into_one_value(int_values)
        if int_memory_value_loaded < 0: int_memory_value_loaded -= (1<<32)
        # setting value into register rd
        self.registers[instruction.get_int_register_pointed_by_rd()] = int_memory_value_loaded

        # preparing log line of the instruction 
        # Format:	lw rd,offset(rs1)            
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
            + ',' + str(instruction.i_type_int_offset_sexted) \
            + '(' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) + ')' 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      
    
        # increment address at PC (+4 bytes)
        self.int_program_counter += 4 


    def executeBaseInstruction_I_type_lbu(self, instruction):

        # executing instruction  
        # Implementation:	x[rd] = M[x[rs1] + sext(offset)][7:0]   

        if self.registers[instruction.get_int_register_pointed_by_rd()] != 0:
            int_address_memory = self.registers[instruction.get_int_register_pointed_by_rs1()] + \
                                 instruction.i_type_int_offset_sexted
            int_memory_value_loaded = self.memory[int_address_memory]        
            self.registers[instruction.get_int_register_pointed_by_rd()] = int_memory_value_loaded

        # preparing log line of the instruction 
        # Format:	lbu rd,offset(rs1)
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
            + ',' + str(instruction.i_type_int_offset_sexted) \
            + '(' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) + ')' 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4 

    def executeBaseInstruction_I_type_lhu(self, instruction):

        # executing instruction  
        # Implementation:	x[rd] = M[x[rs1] + sext(offset)][15:0] 
        if self.registers[instruction.get_int_register_pointed_by_rd()] != 0:          
            int_address_memory = self.registers[instruction.get_int_register_pointed_by_rs1()] + \
                                instruction.i_type_int_offset_sexted
            int_memory_value_loaded = self.memory[int_address_memory]
            self.registers[instruction.get_int_register_pointed_by_rd()] = int_memory_value_loaded

        # preparing log line of the instruction 
        # Format:	lhu rd,offset(rs1)
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
            + ',' + str(instruction.i_type_int_offset_sexted) \
            + '(' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) + ')' 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4 

    def executeBaseInstruction_I_type_fence(self, instruction):

        # executing instruction  
        # Implementation:	Fence(pred, succ)

        # preparing log line of the instruction 
        # Format:	fence pred, succ
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
            + ',' + str(Util.convert_bin_str_to_int(instruction.i_type_bin_pred)) \
            + ',' + str(Util.convert_bin_str_to_int(instruction.i_type_bin_succ))             
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4 

    def executeBaseInstruction_I_type_fencei(self, instruction):

        # executing instruction  
        # Implementation:	Fence(Store, Fetch)

        # preparing log line of the instruction 
        # Format:	fencei
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
            + ',' + str(Util.convert_bin_str_to_int(instruction.i_type_bin_pred)) \
            + ',' + str(Util.convert_bin_str_to_int(instruction.i_type_bin_succ))             
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4 


    def executeBaseInstruction_I_type_ecall(self, instruction):

        # executing instruction  
        # Implementation:	RaiseException(EnvironmentCall)

        # preparing log line of the instruction 
        # Format:	ecall
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic()
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4 


    def executeBaseInstruction_I_type_ebreak(self, instruction):

        # executing instruction  
        # Implementation:	RaiseException(Breakpoint)

        # preparing log line of the instruction 
        # Format:	ebreak
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic()
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4 

    def executeBaseInstruction_I_type_csrrw(self, instruction):

        # executing instruction  
        # Implementation:	t = CSRs[csr]; CSRs[csr] = x[rs1]; x[rd] = t

        # t = CSRs[csr]; 
        # int_t = instruction.i_type_bin_immediate_11_0

        # CSRs[csr] = x[rs1]; 
        # instruction.i_type_bin_immediate_11_0 = self.registers[instruction.get_int_register_pointed_by_rs1()]

        # x[rd] = t
        # self.registers[instruction.get_int_register_pointed_by_rd()] = int_t

        # preparing log line of the instruction 
        # Format:	csrrw rd,offset,rs1
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
            + ',' + str(Util.convert_bin_str_to_int(instruction.i_type_bin_immediate_11_0)) \
            + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) + ')' 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4 


    def executeBaseInstruction_I_type_csrrs(self, instruction):

        # executing instruction  
        # Implementation:	t = CSRs[csr]; CSRs[csr] = t | x[rs1]; x[rd] = t


        # preparing log line of the instruction 
        # Format:	csrrs rd,offset,rs1
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
            + ',' + str(Util.convert_bin_str_to_int(instruction.i_type_bin_immediate_11_0)) \
            + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) + ')' 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4 

    def executeBaseInstruction_I_type_csrrc(self, instruction):

        # executing instruction  
        # Implementation:	t = CSRs[csr]; CSRs[csr] = t &∼x[rs1]; x[rd] = t


        # preparing log line of the instruction 
        # Format:	csrrc rd,offset,rs1
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
            + ',' + str(Util.convert_bin_str_to_int(instruction.i_type_bin_immediate_11_0)) \
            + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) + ')' 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4 

    def executeBaseInstruction_I_type_csrrwi(self, instruction):

        # executing instruction  
        # Implementation:	x[rd] = CSRs[csr]; CSRs[csr] = zimm


        # preparing log line of the instruction 
        # Format:	csrrwi rd,offset,uimm
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
            + ',' + str(Util.convert_bin_str_to_int(instruction.i_type_bin_immediate_11_0)) \
            + ',' + str(Util.convert_bin_str_to_int(instruction.i_type_bin_uimm)) 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4 

    def executeBaseInstruction_I_type_csrrsi(self, instruction):

        # executing instruction  
        # Implementation:	t = CSRs[csr]; CSRs[csr] = t | zimm; x[rd] = t


        # preparing log line of the instruction 
        # Format:	csrrsi rd,offset,uimm
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
            + ',' + str(Util.convert_bin_str_to_int(instruction.i_type_bin_immediate_11_0)) \
            + ',' + str(Util.convert_bin_str_to_int(instruction.i_type_bin_uimm)) 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4 

    def executeBaseInstruction_I_type_csrrci(self, instruction):

        # executing instruction  
        # Implementation:	t = CSRs[csr]; CSRs[csr] = t &∼zimm; x[rd] = t



        # preparing log line of the instruction 
        # Format:	csrrci rd,offset,uimm
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
            + ',' + str(Util.convert_bin_str_to_int(instruction.i_type_bin_immediate_11_0)) \
            + ',' + str(Util.convert_bin_str_to_int(instruction.i_type_bin_uimm)) 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4 


    # ####################
    # Instruction S type 
    # ####################
    def executeBaseInstruction_S_type(self, instruction, show_print):

        # getting the instruction type from opcode + funct3
        instruction_dictionary = self.instruction_map.getValue(instruction.opcode + instruction.s_type_bin_funct3)
        
        # updating instruction mnemonic
        instruction.mnemonic = instruction_dictionary[1]
        
        if show_print:
            print(f'Instruction at memory[{instruction.int_address}, {instruction.hex_address}]' \
            + f' type: {instruction.type}' \
            + f' mnemonic: {instruction.mnemonic}' \
            + f' opcode: {instruction.opcode}')

        if instruction.s_type_bin_funct3 == '000':  # imm[11:5] rs2 rs1 000 imm[4:0] 0100011 SB
            self.executeBaseInstruction_S_type_sb(instruction)
            return
        elif instruction.s_type_bin_funct3 == '001':  # imm[11:5] rs2 rs1 001 imm[4:0] 0100011 SH
            self.executeBaseInstruction_S_type_sh(instruction)
            return
        elif instruction.s_type_bin_funct3 == '010':  # imm[11:5] rs2 rs1 010 imm[4:0] 0100011 SW
            self.executeBaseInstruction_S_type_sw(instruction)
            return

        print(f'Instrução não implementada: tipo: {instruction.type} opcode: {instruction.opcode} - mnemonic: {instruction.mnemonic}')
        
        # setting log line 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])           

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4         


    def executeBaseInstruction_S_type_sb(self, instruction):

        # executing instruction
        # Implementation:	M[x[rs1] + sext(offset)] = x[rs2][7:0]

        # getting memory address: x[rs1] + sext(offset)
        int_address_memory = self.registers[instruction.get_int_register_pointed_by_rs1()] + \
                             instruction.s_type_int_offset_sexted
        # getting  x[rs2][7:0]
        int_values = Util.expand_int_into_slices_8_bits(self.registers[instruction.get_int_register_pointed_by_rs2()], 8)
        # setting memory with values considering 8 bits slices 
        self.memory[int_address_memory] = int_values[0]

        # preparing log line of the instruction 
        # Format:	sb rs2,offset(rs1)
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2()) \
            + ',' + str(instruction.s_type_int_offset_sexted) \
            + '(' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) + ')' 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4     

    def executeBaseInstruction_S_type_sh(self, instruction):

        # executing instruction
        # Implementation:	M[x[rs1] + sext(offset)] = x[rs2][15:0]

        # getting memory address: x[rs1] + sext(offset)
        int_address_memory = self.registers[instruction.get_int_register_pointed_by_rs1()] + \
                             instruction.s_type_int_offset_sexted
        # getting  x[rs2][15:0]
        int_values = Util.expand_int_into_slices_8_bits(self.registers[instruction.get_int_register_pointed_by_rs2()], 16)
        # setting memory with values considering 8 bits slices 
        self.memory[int_address_memory]   = int_values[0]
        self.memory[int_address_memory+1] = int_values[1]

        # preparing log line of the instruction 
        # Format:	sh rs2,offset(rs1)
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2()) \
            + ',' + str(instruction.s_type_int_offset_sexted) \
            + '(' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) + ')' 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4     

    def executeBaseInstruction_S_type_sw(self, instruction):

        # executing instruction
        # Implementation:	M[x[rs1] + sext(offset)] = x[rs2][31:0]

        # getting memory address: x[rs1] + sext(offset)
        int_address_memory = self.registers[instruction.get_int_register_pointed_by_rs1()] + \
                             instruction.s_type_int_offset_sexted
        # getting  x[rs2][31:0]
        int_values = Util.expand_int_into_slices_8_bits(self.registers[instruction.get_int_register_pointed_by_rs2()], 32)
        # setting memory with values considering 8 bits slices 
        self.memory[int_address_memory]   = int_values[0]
        self.memory[int_address_memory+1] = int_values[1]
        self.memory[int_address_memory+2] = int_values[2]
        self.memory[int_address_memory+3] = int_values[3]

        # preparing log line of the instruction 
        # Format:	sw rs2,offset(rs1)
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + str(self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2())) \
            + ',' + str(instruction.s_type_int_offset_sexted) \
            + '(' + str(self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1())) + ')'
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4     

    # ####################
    # Instruction B type 
    # ####################
    def executeBaseInstruction_B_type(self, instruction, show_print):
     
        # getting the instruction type from opcode + funct3
        instruction_dictionary = self.instruction_map.getValue(instruction.opcode + instruction.b_type_bin_funct3)
        
        # updating instruction mnemonic
        instruction.mnemonic = instruction_dictionary[1]

        if show_print:
            print(f'Instruction at memory[{instruction.int_address}, {instruction.hex_address}]' \
            + f' type: {instruction.type}' \
            + f' mnemonic: {instruction.mnemonic}' \
            + f' opcode: {instruction.opcode}')
        
        # instruction to load value from memory to register 
        if instruction.b_type_bin_funct3 == '000': # imm[12j10:5] rs2 rs1 000 imm[4:1j11] 1100011 BEQ
            self.executeBaseInstruction_B_type_beq(instruction)
            return             
        elif instruction.b_type_bin_funct3 == '001': # imm[12j10:5] rs2 rs1 001 imm[4:1j11] 1100011 BNE
            self.executeBaseInstruction_B_type_bne(instruction)
            return             
        elif instruction.b_type_bin_funct3 == '100': # imm[12j10:5] rs2 rs1 100 imm[4:1j11] 1100011 BLT
            self.executeBaseInstruction_B_type_blt(instruction)
            return             
        elif instruction.b_type_bin_funct3 == '101': # imm[12j10:5] rs2 rs1 101 imm[4:1j11] 1100011 BGE
            self.executeBaseInstruction_B_type_bge(instruction)
            return             
        elif instruction.b_type_bin_funct3 == '110': # imm[12j10:5] rs2 rs1 110 imm[4:1j11] 1100011 BLTU
            self.executeBaseInstruction_B_type_bltu(instruction)
            return             
        elif instruction.b_type_bin_funct3 == '111': # imm[12j10:5] rs2 rs1 111 imm[4:1j11] 1100011 BGEU
            self.executeBaseInstruction_B_type_bgeu(instruction)
            return             

        print(f'Instrução não implementada: tipo: {instruction.type} opcode: {instruction.opcode} - mnemonic: {instruction.mnemonic}')

        # setting log line 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])           

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4


    # imm[12j10:5] rs2 rs1 000 imm[4:1j11] 1100011 BEQ
    def executeBaseInstruction_B_type_beq(self, instruction):

        # executing instruction 
        # Implementation:	if (x[rs1] == x[rs2]) pc += sext(offset)
        if self.registers[instruction.get_int_register_pointed_by_rs1()] == \
            self.registers[instruction.get_int_register_pointed_by_rs2()]:
            # setting the new memory address to branch
            self.int_program_counter +=  instruction.b_type_int_offset_sexted
        else: 
            # increment address at PC (+4 bytes)
            self.int_program_counter += 4
        
        # preparing log line of the instruction
        # Format:	beq rs1,rs2,offset
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
            + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2()) \
            + ',' + str(instruction.b_type_int_offset_sexted) 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

    # imm[12j10:5] rs2 rs1 001 imm[4:1j11] 1100011 BNE
    def executeBaseInstruction_B_type_bne(self, instruction):

        # executing instruction 
        # Implementation:	if (x[rs1] != x[rs2]) pc += sext(offset)
        if instruction.int_address == 222:
            x = 0
        print(f' endereço: {instruction.int_address}  '  + \
              f' rs1: {instruction.get_int_register_pointed_by_rs1()} >> {self.registers[instruction.get_int_register_pointed_by_rs1()]}  '  + \
              f' rs2: {instruction.get_int_register_pointed_by_rs2()} >> {self.registers[instruction.get_int_register_pointed_by_rs2()]}  '  + \
              f' PC: {self.int_program_counter}  '  + \
              f' offset_sexted: {instruction.b_type_int_offset_sexted}  '
              )            

        if self.registers[instruction.get_int_register_pointed_by_rs1()] != \
            self.registers[instruction.get_int_register_pointed_by_rs2()]:
            # setting the new memory address to branch
            self.int_program_counter += instruction.b_type_int_offset_sexted
        else: 
            # increment address at PC (+4 bytes)
            self.int_program_counter += 4
        
        # preparing log line of the instruction 
        # Format:	bne rs1,rs2,offset
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
            + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2()) \
            + ',' + str(instruction.b_type_int_offset_sexted) 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

    # imm[12j10:5] rs2 rs1 100 imm[4:1j11] 1100011 BLT
    def executeBaseInstruction_B_type_blt(self, instruction):

        # executing instruction 
        # Implementation:	if (x[rs1] <s x[rs2]) pc += sext(offset)
        # calculating the new address to branch which offset is multiple of two address of 4 bytes 
        if self.registers[instruction.get_int_register_pointed_by_rs1()] < \
            self.registers[instruction.get_int_register_pointed_by_rs2()]:
            # setting the new memory address to branch
            self.int_program_counter += instruction.b_type_int_offset_sexted
        else: 
            # increment address at PC (+4 bytes)
            self.int_program_counter += 4
        
        # preparing log line of the instruction
        # Format:	blt rs1,rs2,offset
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
            + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2()) \
            + ',' + str(instruction.b_type_int_offset_sexted) 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

    # imm[12j10:5] rs2 rs1 101 imm[4:1j11] 1100011 BGE
    def executeBaseInstruction_B_type_bge(self, instruction):

        # executing instruction
        # Implementation:	if (x[rs1] >=s x[rs2]) pc += sext(offset) 
        # calculating the new address to branch which offset is multiple of two address of 4 bytes 
        if self.registers[instruction.get_int_register_pointed_by_rs1()] >= \
            self.registers[instruction.get_int_register_pointed_by_rs2()]:
            # setting the new memory address to branch
            self.int_program_counter += instruction.b_type_int_offset_sexted
        else: 
            # increment address at PC (+4 bytes)
            self.int_program_counter += 4
        
        # preparing log line of the instruction 
        # Format:	bge rs1,rs2,offset
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
            + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2()) \
            + ',' + str(instruction.b_type_int_offset_sexted) 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

    # imm[12j10:5] rs2 rs1 110 imm[4:1j11] 1100011 BLTU
    def executeBaseInstruction_B_type_bltu(self, instruction):

        # executing instruction 
        # Implementation:	if (x[rs1] <u x[rs2]) pc += sext(offset)

        rs1_value = self.registers[instruction.get_int_register_pointed_by_rs1()]
        if rs1_value < 0: rs1_value += (1<<32)
        rs2_value = self.registers[instruction.get_int_register_pointed_by_rs2()]
        if rs2_value < 0: rs2_value += (1<<32)
        if rs1_value < rs2_value:
            # setting the new memory address to branch
            self.int_program_counter += instruction.b_type_int_offset_sexted
        else: 
            # increment address at PC (+4 bytes)
            self.int_program_counter += 4
        
        # preparing log line of the instruction 
        # Format:	bltu rs1,rs2,offset
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
            + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2()) \
            + ',' + str(instruction.b_type_int_offset_sexted) 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

    # imm[12j10:5] rs2 rs1 111 imm[4:1j11] 1100011 BGEU
    def executeBaseInstruction_B_type_bgeu(self, instruction):

        # executing instruction 
        # Implementation:	if (x[rs1] >=u x[rs2]) pc += sext(offset)

        rs1_value = self.registers[instruction.get_int_register_pointed_by_rs1()]
        if rs1_value < 0: rs1_value += (1<<32)
        rs2_value = self.registers[instruction.get_int_register_pointed_by_rs2()]
        if rs2_value < 0: rs2_value += (1<<32)
        if rs1_value >= rs2_value:
            # setting the new memory address to branch
            self.int_program_counter += instruction.b_type_int_offset_sexted
        else: 
            # increment address at PC (+4 bytes)
            self.int_program_counter += 4
        
        # preparing log line of the instruction 
        # Format:	bgeu rs1,rs2,offset
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs1()) \
            + ',' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rs2()) \
            + ',' + str(instruction.b_type_int_offset_sexted) 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      


    # ####################
    # Instruction U type 
    # ####################
    def executeBaseInstruction_U_type(self, instruction, show_print):

        # getting the instruction type from opcode + funct3
        instruction_dictionary = self.instruction_map.getValue(instruction.opcode)
        
        # updating instruction mnemonic
        instruction.mnemonic = instruction_dictionary[1]

        if show_print:
            print(f'Instruction at memory[{instruction.int_address}, {instruction.hex_address}]' \
            + f' type: {instruction.type}' \
            + f' mnemonic: {instruction.mnemonic}' \
            + f' opcode: {instruction.opcode}')
        
        if instruction.opcode == '0110111':  # imm[31:12] rd 0110111 LUI
            self.executeBaseInstruction_U_type_lui(instruction)
            return
        if instruction.opcode == '0010111':  # imm[31:12] rd 0010111 AUIPC
            self.executeBaseInstruction_U_type_auipc(instruction)
            return

        print(f'Instrução não implementada: tipo: {instruction.type} opcode: {instruction.opcode} - mnemonic: {instruction.mnemonic}')
        
        # setting log line 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])           

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4         


    def executeBaseInstruction_U_type_lui(self, instruction):

        # executing instruction   
        # x[rd] = sext(immediate[31:12] << 12)         
        immediate_plus_12_zeros_shifted = instruction.u_type_bin_immediate_31_12 + '0'*12
        int_immediate_adjusted = Util.adjust_bin_immediate_n_bits(immediate_plus_12_zeros_shifted, \
                                                                    len(immediate_plus_12_zeros_shifted))     
      
        # updating register 
        self.registers[instruction.get_int_register_pointed_by_rd()] = int_immediate_adjusted

        # preparing log line of the instruction
        # Format:	lui rd,imm 
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
            + ',' + str(int_immediate_adjusted) 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4


    def executeBaseInstruction_U_type_auipc(self, instruction):

        # executing instruction  
        # x[rd] = pc + sext(immediate[31:12] << 12)
        immediate_plus_12_zeros_shifted = instruction.u_type_bin_immediate_31_12 + '0'*12
        int_immediate_adjusted = Util.convert_bin_str_to_int(immediate_plus_12_zeros_shifted)
        
        # updating register 
        self.registers[instruction.get_int_register_pointed_by_rd()] = self.int_program_counter + int_immediate_adjusted

        # preparing log line of the instruction
        # Format:	auipc rd,imm
        instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
            '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
        instruction.instruction_dissassembly = instruction.get_mnemonic() \
            + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
            + ',' + str(int_immediate_adjusted) 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])      

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4


    # ####################
    # Instruction J type 
    # ####################
    def executeBaseInstruction_J_type(self, instruction, show_print):

        # imm[20j10:1j11j19:12] rd 1101111 JAL
        if instruction.opcode == '1101111':

            # executing instruction 
            # Implementation:   x[rd] = pc+4; pc += sext(offset)

            # x[rd] = pc+4;
            self.registers[instruction.get_int_register_pointed_by_rd()] = self.int_program_counter + 4

            # pc += sext(offset)
            self.int_program_counter = self.int_program_counter + instruction.j_type_int_offset_sexted

            # preparing log line of the instruction 
            # jal rd,offset
            instruction.log_hex_rd = 'x' + f'{instruction.get_int_register_pointed_by_rd():02d}' + \
                '=' + Util.convertIntToHex(self.registers[instruction.get_int_register_pointed_by_rd()], 8)
            instruction.instruction_dissassembly = instruction.get_mnemonic() \
                + ' ' + self.get_assembler_mnemonic_register(instruction.get_int_register_pointed_by_rd()) \
                + ',' + str(instruction.j_type_int_offset_sexted)
            instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])
            # print(instruction.log_line)

            # #############################################################################################
            # ATTENTION: DO NOT increment address at PC (+4 bytes) because it's a Jump And Link instruction         
            # #############################################################################################

            return 
        
        print(f'Instrução não implementada: tipo: {instruction.type} opcode: {instruction.opcode} - mnemonic: {instruction.mnemonic}')
        
        # setting log line 
        instruction.set_log_line(self.registers[instruction.get_int_register_pointed_by_rd()])           

        # increment address at PC (+4 bytes)
        self.int_program_counter += 4         