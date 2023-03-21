# Lab 6: Brokeš Jan 240593

### Bidirectional counter

1. Listing of VHDL code of the completed process `p_cnt_up_down`. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
    p_cnt_up_down : process (clk) is
  begin

    if rising_edge(clk) then
      if (rst = '1') then           -- Synchronous reset
        sig_cnt <= (others => '0'); -- Clear all bits
      elsif (en = '1') then         -- Test if counter is enabled

         if (cnt_up = '1') then
            sig_cnt <= sig_cnt +1;
        else

          sig_cnt <= sig_cnt + 1;
      end if;
    end if;
    end if;

  end process p_cnt_up_down;
```

2. Screenshot with simulated time waveforms. Test: (a) reset, (b) counter direction, (c) enable. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   ![image](https://user-images.githubusercontent.com/124742733/226730306-68617eaa-f818-47db-97ed-b5a1004e5837.png)

### Two counters

1. Image of the top layer structure including both counters, ie a 4-bit bidirectional counter from *Part 4* and a 12-bit counter with a 10 ms time base from *Experiments on your own*. The image can be drawn on a computer or by hand. Always name all inputs, outputs, components and internal signals!

   
![336361099_643270194274471_4590519139498674194_n](https://user-images.githubusercontent.com/124742733/226735692-c7b4d803-a014-4474-91ce-b7624627f1d7.jpg)
