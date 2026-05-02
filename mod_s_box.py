import re

with open('S_BOX.v', 'r') as f:
    s = f.read()

s = re.sub(r'input Clk,?\s*', '', s)
s = re.sub(r'\(\* romstyle = "block" \*\)\s*', '', s)
s = s.replace('always @(posedge Clk)', 'always @(*)')
s = s.replace('<=', '=')

with open('S_BOX.v', 'w') as f:
    f.write(s)
