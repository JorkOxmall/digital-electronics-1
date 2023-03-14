# Lab 5: INSERT_YOUR_FIRSTNAME INSERT_YOUR_LASTNAME

### D & T Flip-flops

1. Screenshot with simulated time waveforms. Try to simulate both D- and T-type flip-flops in a single testbench with a maximum duration of 200 ns, including reset. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   ![image](https://user-images.githubusercontent.com/124742733/223703360-e4f6149f-abbb-426d-ade5-b8bc252e0e78.png)

### JK Flip-flop

1. Listing of VHDL architecture for JK-type flip-flop. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture Behavioral of jk_ff_rst is
    signal s_d : std_logic;
begin
    p_jk_ff_rst : process(clk)
    begin
        if rising_edge(clk) then
            if (j = '0' and k = '0') then
                s_d <= s_d;
                
            elsif (j = '0' and k = '1') then
                s_d <= '0';
                
            elsif (j = '1' and k = '0') then
                s_d <= '1';
            else
                s_d = not(s_d);
            end if;
            
        end if;
    end process p_jk_ff_rst;
    -- Output ports are permanently connected to local signal
   
    q     <= s_d; 
    q_bar <= not s_d;
end architecture Behavioral;
```

### Shift register

1. Image of `top` level schematic of the 4-bit shift register. Use four D-type flip-flops and connect them properly. The image can be drawn on a computer or by hand. Always name all inputs, outputs, components and internal signals!

   ![schema de1 5](https://user-images.githubusercontent.com/124742733/225146890-5873b635-6e7a-416c-922f-69c7c4429ea8.jpg)

