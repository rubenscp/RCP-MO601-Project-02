import os
from Instruction import Instruction
from Util import Util

class Log:

     def __init__(self):
          # class attributes
          self.program_name = ''
          self.test_path = ''
          self.file = None
          self.program_counter_register = ''
          self.hex_instruction = ''
          self.hex_rd = ''
          self.hex_rs1 = ''
          self.hex_rs2 = ''
          self.dissassembly_instruction = ''

     def create_log_file(self, program_name, test_path):
          # setting path and file names 
          self.program_name = program_name
          self.test_path = test_path

          # setting the output filename in csv format 
          output_filename = test_path + program_name + '.log'

          # removing file to save if exists 
          if os.path.exists(output_filename):
               os.remove(output_filename)     

          # creating text file
          self.file = open(output_filename, 'w')

     def write_instruction_log_line(self, instruction):
          # writing log line 
          self.file.write(instruction.get_log_line())
          # print(instruction.get_log_line())

     def close_log_file(self):
          self.file.close()

     
