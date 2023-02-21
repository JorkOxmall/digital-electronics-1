Lab 2: INSERT_YOUR_FIRSTNAME INSERT_YOUR_LASTNAME

2-bit comparator

1. Karnaugh maps for other two functions of 2-bit comparator:

   Greater than:

   ![DE1 BvA](https://user-images.githubusercontent.com/124742733/220469883-b9b91f26-76aa-4e4a-8d29-00d8b90c25cf.jpg)


   Less than:
    
   ![DE1 BmA](https://user-images.githubusercontent.com/124742733/220469906-6980ea93-aadf-4f92-97b5-99ef15ec306d.jpg)

   

2. Mark the largest possible implicants in the K-map and according to them, write the equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   ![DE1 rovnice](https://user-images.githubusercontent.com/124742733/220473174-0a599b69-42ca-4486-871d-e9293f38079b.jpg)


### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx??**

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "0011"; -- Such as "0011" if ID = xxxx93
        s_a <= "1001";        -- Such as "1001" if ID = xxxx93
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        report "Input combination COMPLETE_THIS_TEXT FAILED" severity error;

        -- Report a note at the end of stimulus process
        report "Stimulus process finished";
        wait; -- Data generation process is suspended forever
    end process p_stimulus;
```

2. Link to your public EDA Playground example:

   https://www.edaplayground.com/x/birH
