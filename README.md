# arichmetic-circuits-verilog
implemetation of some arithmetic circuits
# Carry Lookaheaed Adder

![Carry Lookaheaed](https://camo.githubusercontent.com/f6c4d801d552a6257bd9aaf4591c0ed4c2be516f/68747470733a2f2f75706c6f61642e77696b696d656469612e6f72672f77696b6970656469612f636f6d6d6f6e732f7468756d622f302f30342f342d6269745f63617272795f6c6f6f6b61686561645f61646465722e7376672f35303070782d342d6269745f63617272795f6c6f6f6b61686561645f61646465722e7376672e706e67)

4-bit Carry Lookahead Adder

A carry-look ahead adder improves speed by reducing the amount of time required to determine carry bits. It can be contrasted with the simpler, but usually slower, ripple-carry adder (RCA), for which the carry bit is calculated alongside the sum bit, and each stage must wait until the previous carry bit has been calculated to begin calculating its own sum bit and carry bit. The carry-lookahead adder calculates one or more carry bits before the sum, which reduces the wait time to calculate the result of the larger-value bits of the adder. The Kogge–Stone adder (KSA) and Brent–Kung adder (BKA) are examples of this type of adder. Carry-lookahead depends on two things:

- Calculating for each digit position whether that position is going to propagate a carry if one comes in from the right.
- Combining these calculated values to be able to deduce quickly whether, for each group of digits, that group is going to propagate a carry that comes in from the right.

# Ripple Carry Adder

![Ripple Carry](https://camo.githubusercontent.com/b76e9cbad52bcff0dce770d997d4b2ede1b0c0e5/68747470733a2f2f7777772e7265736561726368676174652e6e65742f7075626c69636174696f6e2f3238333033373330392f6669677572652f666967322f41533a34353434363136353139383433393040313438353336333530393933312f45696768742d6269742d526970706c652d43617272792d61646465722e706e67)

8-bit Carry Ripple Adder

It is possible to create a logical circuit using multiple full adders to add N-bit numbers. Each full adder inputs a Cin, which is the Cout of the previous adder. This kind of adder is called a ripple-carry adder (RCA), since each carry bit "ripples" to the next full adder. Note that the first (and only the first) full adder may be replaced by a half adder (under the assumption that Cin = 0). The layout of a ripple-carry adder is simple, which allows fast design time; however, the ripple-carry adder is relatively slow, since each full adder must wait for the carry bit to be calculated from the previous full adder.

# Carry Select Adder

![Carry Select](https://camo.githubusercontent.com/f5afa0434774bf4a6e7636ff85ca2b77ae0f8170/68747470733a2f2f75706c6f61642e77696b696d656469612e6f72672f77696b6970656469612f656e2f7468756d622f312f31302f43617272792d73656c6563742d61646465722d64657461696c65642d626c6f636b2e706e672f37313270782d43617272792d73656c6563742d61646465722d64657461696c65642d626c6f636b2e706e67)

4-bit Carry Select Adder

The carry-select adder generally consists of two ripple carry adders and a multiplexer. Adding two n-bit numbers with a carry-select adder is done with two adders (therefore two ripple carry adders), in order to perform the calculation twice, one time with the assumption of the carry-in being zero and the other assuming it will be one. After the two results are calculated, the correct sum, as well as the correct carry-out, is then selected with the multiplexer once the correct carry-in is known

# Carry Skip Adder

![Carry Skip](https://camo.githubusercontent.com/2c1e45c7cefabe0dc6532c703ad58afa2844854c/68747470733a2f2f7777772e7265736561726368676174652e6e65742f70726f66696c652f53756a616e5f5361726b6172332f7075626c69636174696f6e2f3332323035373634302f6669677572652f666967332f41533a36333136333239363037303034353040313532373630343434313333372f382d6269742d43617272792d536b69702d41646465722e706e67)

4-bit Carry Skip Adder

The worst case for a simple one level carry-ripple-adder occurs, when the propagate-condition is true for each digit pair. Then the carry-in ripples through the n n-bit adder and appears as the carry-out after definitive delay For each operand input bit pair the propagate-conditions using an XOR-Gate (see ). When all propagate-conditions are true, then the carry-in bit determines the carry-out bit. The n-bit-carry-skip adder consists of a n-bit-carry-ripple-chain, a n-input AND-gate and one multiplexer. Each propagate bit that is provided by the carry-ripple-chain is connected to the n-input AND-gate. The resulting bit is used as the select bit of a multiplexer that switches either the last carry-bit or the carry-in to the carry-out signal.

# Dadda Multiplier

![Dadda](https://www.researchgate.net/profile/Ranjbar_Fatemeh/publication/325740406/figure/fig2/AS:637054945882115@1528897143435/An-8-bit-Dadda-multiplier-constructed-by-only-some-half-and-full-adders-each-rectangle.png)

8-bit Dadda Multiplier

The above figure shows partial product matrix of an 8-bit multiplier using the dot notation. Each dot is an unspecified bit. Each partial product is computed using an AND gate. Each multiplier must compute the summation of the partial products. In other words, each multiplier must reduce these eight rows of partial products to two rows, then, the final results is produced by the summation of these two binary numbers using a good adder. 

