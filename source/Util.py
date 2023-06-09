# from Signed import Signed

class Util:
     
     # Converts string value hex into integer format value 
     @staticmethod
     def convertStrHextoInt(str_value_hex):
          # converting value hex in str format to int format 
          str_value_hex = '0x' + str_value_hex
          int_value = int(str_value_hex, 0)

          # returning value in binary format
          return int_value

     # Converts string value hex into binary format value  
     @staticmethod
     def convertStrHextoBin32bits(str_value_hex):
          # converting value hex in str format to int format 
          str_value_hex = '0x' + str_value_hex
          int_value = int(str_value_hex, 0)

          # converting int format value into binary format 
          bin_value = bin(int_value)

          # filling with zeros at left size 
          str_bin_value = '0'*32 + str(bin_value[2:])
          str_bin_value = str_bin_value[len(str_bin_value)-32:]

          # setting constant '0b'
          bin_value = '0b' + str_bin_value
          
          # returning value in binary format
          return bin_value

     # Converts string value hex into binary format value  
     @staticmethod
     def fill_hex_value_with_left_zeros(hex_value, size):
          # filling with zeros at left size 
          hex_value_adjusted = '0'*size + hex_value
          hex_value_adjusted = hex_value_adjusted[len(hex_value_adjusted)-size:]
         
          # returning value formatted according required size
          return hex_value_adjusted

     # Converts binary value into integer value  
     @staticmethod
     def convert_bin_str_to_int(bin_value):
          return int(bin_value, 2)

     # Converts integer value into hex value formatted with size 
     @staticmethod
     def convertIntToHex(int_value, size):
          # converting integet value to hex value format 
          hex_value = hex(int_value & (2**32-1)) # 32-bit
          # hex_number = hex(int_value & (2**64-1)) # 64-bit
          
          # formatting hex value according to size parameter
          str_hex_value = Util.fill_hex_value_with_left_zeros(hex_value[2:], size)

          # returning value
          return str_hex_value
     
     # Converts integer value into bin value in string format  
     @staticmethod
     def convertIntToBinStr(int_value):
          # converting integet value to hex value format 
          bin_str = '{0:b}'.format(int_value)

          # formatting value with 32 bits size 
          bin_str = '0'*32 + bin_str 
          bin_str = bin_str[len(bin_str) - 32:]
          
          # returning value
          return bin_str
     
     # Make the right treatment in the immediate when it has greater than 8 bits
     @staticmethod
     def adjust_bin_immediate_n_bits(bin_immediate, number_of_bits):
          # setting result with the same input value
          int_result = Util.convert_bin_str_to_int(bin_immediate)

          # adjusting immediate value 
          if bin_immediate[0] == '1':
               int_result -= (1<<number_of_bits)

          # returning the result
          return int_result

     @staticmethod
     def adjust_int_immediate_n_bits(int_value, number_of_bits):
          # getting binary in string format
          if number_of_bits == 8:
               bin_value_str = f'{int_value:08b}'
          elif number_of_bits == 16:
               bin_value_str = f'{int_value:016b}'
          elif number_of_bits == 32:
               bin_value_str = f'{int_value:032b}'

          # adjusting immediate value 
          if bin_value_str[0] == '1':
               int_value -= (1<<number_of_bits)

          # returning the result
          return int_value

     @staticmethod
     def expand_int_into_slices_8_bits(int_value, number_of_bits):
          # getting binary in the size of number_of_bits
          if int_value < 0: # calculate the two's complement 
               aux = int_value + (1<<number_of_bits)
               bin_value_str = f'{aux:0{number_of_bits}b}'
               bin_value_str = bin_value_str[1:]
          else:  # calculate the original value without complements
               aux = int_value 
               bin_value_str = f'{aux:0{number_of_bits}b}'               
       
          # slicing at 8 bits size 
          result = []
          if number_of_bits == 8:
               result.append(Util.convert_bin_str_to_int(bin_value_str[0:8]))

          elif number_of_bits == 16:
               result.append(Util.convert_bin_str_to_int(bin_value_str[0:8]))
               result.append(Util.convert_bin_str_to_int(bin_value_str[8:16]))

          elif number_of_bits == 32:
               result.append(Util.convert_bin_str_to_int(bin_value_str[0:8]))
               result.append(Util.convert_bin_str_to_int(bin_value_str[8:16]))
               result.append(Util.convert_bin_str_to_int(bin_value_str[16:24]))
               result.append(Util.convert_bin_str_to_int(bin_value_str[24:32]))

          # returning result of data slicing according to number of bits 
          return result

     @staticmethod
     def merge_slices_8_bits_into_one_value(int_values):
          # concatemnating values 
          bin_value_str = ''
          for i in range(len(int_values)):
               bin_value_str += f'{(int_values[i]):08b}'

          # converting the value from binary to integer 
          int_value = Util.convert_bin_str_to_int(bin_value_str)

          # returning result of data merging 
          return int_value