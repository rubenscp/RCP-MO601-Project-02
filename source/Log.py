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

     # def write_log_line(self):
     #      # preparing line to write into the log file 
     #      line = ''
     #      line += 'PC=' + self.program_counter_register
     #      line += ' ' + '[' + self.hex_instruction + ']'
     #      line += ' ' + self.hex_rd
     #      line += ' ' + self.hex_rs1
     #      line += ' ' + self.hex_rs2
     #      line += ' ' + self.dissassembly_instruction

     #      # writing one line 
     #      self.file.write(line)

     # def write_instruction_log_line_detailed(self, instruction):
     #      # preparing line to write into the log file 
     #      line = ''
     #      line += 'PC=' + Util.fill_hex_value_with_left_zeros(instruction.get_hex_address(), 8)
     #      line += ' ' + '[' + Util.fill_hex_value_with_left_zeros(instruction.get_hex_instruction(), 8) + ']'
     #      line += ' ' + instruction.get_hex_rd()
     #      line += ' ' + instruction.get_hex_r1()
     #      line += ' ' + instruction.get_hex_r2()
     #      line += ' ' + instruction.get_instruction_dissassembly()

     #      # writing one line 
     #      self.file.write(line)

     def write_instruction_log_line(self, instruction):
          # writing log line 
          self.file.write(instruction.get_log_line())

     def close_log_file(self):
          self.file.close()

     
