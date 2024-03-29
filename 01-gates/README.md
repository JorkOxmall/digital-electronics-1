# Lab 1: Brokeš Jan

### De Morgan's laws

1. Equations of all three versions of logic function f(c,b,a):

   ![de1ukol](https://user-images.githubusercontent.com/124742733/218737626-3c9aaf3a-2dbc-455c-8d9d-6bbe09de42cb.jpg)


2. Listing of VHDL architecture from design file (`design.vhd`) for all three functions. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture dataflow of gates is
begin
    f_orig_o <= (not(b_i) and a_i) or (c_i and not(b_i or not(a_i)));
    f_nand_o <= not(not(not(b_i)and (a_i)) and not((c_i) and not(b_i) and(a_i)));
    f_nor_o  <= not(not(a_i) or (b_i)) or not(not(c_i) or (b_i) or not (a_i));
end architecture dataflow;
```

3. Complete table with logic functions' values:

   | **c** | **b** |**a** | **f_ORIG** | **f_(N)AND** | **f_(N)OR** |
   | :-: | :-: | :-: | :-: | :-: | :-: |
   | 0 | 0 | 0 | 0 | 0 | 0 |
   | 0 | 0 | 1 | 1 | 1 | 1 |
   | 0 | 1 | 0 | 0 | 0 | 0 |
   | 0 | 1 | 1 | 0 | 0 | 0 |
   | 1 | 0 | 0 | 0 | 0 | 0 |
   | 1 | 0 | 1 | 1 | 1 | 1 |
   | 1 | 1 | 0 | 0 | 0 | 0 |
   | 1 | 1 | 1 | 0 | 0 | 0 |

### Distributive laws

1. Screenshot with simulated time waveforms. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   ![image](https://user-images.githubusercontent.com/124742733/218735011-7f44d8c2-3551-4206-9606-1bf3b71b1288.png)


2. Link to your public EDA Playground example:

   https://www.edaplayground.com/x/CgRN
