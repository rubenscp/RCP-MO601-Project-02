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



# do_not_process = ['061.div.dump', '062.div.dump', '063.div.dump', '064.div.dump', '065.div.dump', \
#                   '066.div.dump', '067.div.dump', '068.div.dump', '069.div.dump', \
#                   '121.loop.dump', '122.loop.dump', '123.loop.dump', '124.loop.dump', '125.loop.dump', '126.loop.dump', \
#                   '131.call.dump', '132.call.dump', '133.call.dump', '134.call.dump', \
#                   '141.array.dump', '142.array.dump', '143.array.dump', '144.array.dump', '145.array.dump', '146.array.dump', \
#                   '081.shift.dump', '082.shift.dump', '083.shift.dump', '084.shift.dump', '085.shift.dump', '086.shift.dump', \
#                   '201.atomic.dump', 
#                  ]

# do_not_process = ['061.div.dump', '062.div.dump', '063.div.dump', '064.div.dump', '065.div.dump', \
#                   '066.div.dump', '067.div.dump', '068.div.dump', '069.div.dump', \
#                   '121.loop.dump', '122.loop.dump', '123.loop.dump', '124.loop.dump', '125.loop.dump', '126.loop.dump', \
#                   '086.shift.dump', \
#                   '131.call.dump', '132.call.dump', '133.call.dump', '134.call.dump', \
#                   '141.array.dump', '142.array.dump', '143.array.dump', '144.array.dump', '145.array.dump', '146.array.dump', \
#                   '201.atomic.dump'
#                   ]

do_not_process = ['131.call.dump', '132.call.dump', '133.call.dump', '134.call.dump', \
                  '121.loop.dump', '122.loop.dump', '123.loop.dump', '124.loop.dump', '125.loop.dump', '126.loop.dump', \
                  '141.array.dump', '142.array.dump', '143.array.dump', '144.array.dump', '145.array.dump', '146.array.dump', \
                  ]

# do_not_process = []

# ###########################################
# Main method
# ###########################################
if __name__ == '__main__':
    # setting paths and file names
    root_path = os.getcwd().replace("\\", "/") + "/"
    # test_path = root_path + 'test/riscv-bin/'
    test_path = root_path + 'test/'
    test_path_log = test_path + 'log/'

    # remove all old log files
    remove_log_files(test_path_log)
          
    # setting parameters of RISCV processor 
    number_of_registers = 32
    memory_size = 16 * 1024 * 1024

    # creating RISCV Processor instance
    riscv_processor = RiscVProcessor(number_of_registers, memory_size)
    print(f'Size of RAM: {memory_size} bytes >> {memory_size / 1024 / 1024} MBytes' )

    # processing each c program from ACStone in the folder tests 
    programs = [f for f in os.listdir(test_path)]
    programs = sorted(programs)
    count = 0
    for program_name in programs:

        # define printing of messages into the terminal 
        show_print = False
        # program_name_debug = '000.main.dump'
        # program_name_debug = '142.array.dump'
        # program_name_debug = '121.loop.dump'
        # program_name_debug = '133.call.dump'
        # program_name_debug = '011.const.dump'
        # program_name_debug = '061.div.dump'
        program_name_debug = ''
        if program_name_debug != '':
            do_not_process = []
            if program_name_debug == program_name:
               show_print = True 
            else:
                continue

        if program_name in do_not_process: continue

        # Don't processing programs with the pattern at the filename
        # if program_name.find('.div.') > 0: continue
        # if program_name.find('.bool.') > 0: continue
        # if program_name.find('.shift.') > 0: continue
        # if program_name.find('.if.') > 0: continue
        # # if program_name.find('.loop.') > 0: continue
        # if program_name.find('.call.') > 0: continue
        # if program_name.find('.array.') > 0: continue

        # if program_name.find('.loop.') > 0: x = 0
        # else: continue

        # if program_name == " 086.shift.dump": continue

        if program_name.find('.dump') > 0: 
            # processing test 
            print(f'Simulating running of program {program_name}')

            # simulating the execution of program 
            simulate_execution_program(riscv_processor, program_name, test_path, test_path_log, show_print)
            
    print()
    print(f'End of Simulation')
    print()