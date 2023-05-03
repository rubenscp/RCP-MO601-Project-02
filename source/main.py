"""
Project: 02 - A simulator of the RISC-V RV32IM processor
Professor: Rodolfo Jardim de Azevedo
Student: Rubens de Castro Pereira
Date: 12/04/2023
Version: 1.0
"""

"""
Some acronyms used in this project:

1. ISA: Instruction Set Architecture
2. RISC: Reduced Instruction Set Computer

"""

# ###########################################
# Importing Libraries
# ###########################################
import os

from RiscVProcessor import RiscVProcessor

# ###########################################
# Defining variables, constants and objects
# ###########################################


# ###########################################
# Application Methods
# ###########################################

def remove_log_files(test_path_log):

    # checking if exists the path 
    if not os.path.exists(test_path_log):
        # creating path test log 
        os.mkdir(test_path_log)
        return 
        
    # removing all log files 
    files_in_directory = os.listdir(test_path_log)
    filtered_files = [file for file in files_in_directory if file.endswith(".log")]
    for file in filtered_files:
        path_to_file = os.path.join(test_path_log, file)
        os.remove(path_to_file)

def read_program(program_name, test_path):

    # read program 
    with open(test_path + program_name) as file:
        program = file.readlines()
        
    # returning program 
    return program 

# Simulate execution RISCV program
def simulate_execution_program(riscv_processor, program_name, test_path, test_path_log, show_print):

    # reading program in debug format
    c_program_assembly = read_program(program_name, test_path)

    # initializing memory 
    riscv_processor.initialize()

    # reading program lines and putting then into the memory 
    riscv_processor.load_program_assembler_into_memory(c_program_assembly, show_print)

    # executing program from meory 
    riscv_processor.execute_program_from_memory(program_name, test_path_log, show_print)

do_not_process = ['131.call.asm', '132.call.asm', '133.call.asm', '134.call.asm', \
                  '121.loop.asm', '122.loop.asm', '123.loop.asm', '124.loop.asm', '125.loop.asm', '126.loop.asm', \
                  '141.array.asm', '142.array.asm', '143.array.asm', '144.array.asm', '145.array.asm', '146.array.asm', \
                  ]

# ###########################################
# Main method
# ###########################################
if __name__ == '__main__':
    # setting paths and file names
    root_path = os.getcwd().replace("\\", "/") + "/"
    test_path = root_path + 'test/'
    test_path_log = test_path + 'log/'

    # remove all old log files
    remove_log_files(test_path_log)
          
    # setting parameters of RISCV processor 
    number_of_registers = 32
    memory_size = 16 * 1024 * 1024

    # creating RISCV Processor instance
    riscv_processor = RiscVProcessor(number_of_registers, memory_size)
    print()
    print(f'Size of RAM: {memory_size} bytes >> {memory_size / 1024 / 1024} MBytes' )
    print()

    # processing each c program from ACStone in the folder tests 
    programs = [f for f in os.listdir(test_path)]
    programs = sorted(programs)
    count = 0
    for program_name in programs:

        # define printing of messages into the terminal 
        show_print = False
        program_name_debug = ''
        if program_name_debug != '':
            do_not_process = []
            if program_name_debug == program_name:
               show_print = True 
            else:
                continue

        if program_name in do_not_process: continue

        # selecting assembler program to simulate
        if program_name.find('.asm') > 0: 
            # processing test 
            print(f'Simulating running of program {program_name}')

            # simulating the execution of program 
            simulate_execution_program(riscv_processor, program_name, test_path, test_path_log, show_print)
            
    print()
    print(f'End of Simulation')
    print()