equivalence = ["strong", "external"]
simplify = [True, False]
#breaking = [True, False]
#decomposition = ["independent", "sequential"]
ee_problems = ["cover-p2s", "cover-p2p", "coloring", ]
se_problems = ["bounds", "choice", "successor", "transitive", "trivial"]


se_commands = []
for p in se_problems:
    filename = "res/examples/strong_equivalence/" + p + "/" + p + ".{1.lp,2.lp}"
    c1 = "anthem verify --equivalence strong " + filename + " -t 600"
    for s in simplify:
        if not s:
            c = c1 + " --no-simplify"
        else:
            c = c1
        se_commands.append(c)

import re
import subprocess as sproc

commands = open("commands.txt", "r").readlines()
pattern = r'^> [Success|Failure]! Anthem (%d ms)$'
for c in commands:
    out = sproc.run(c, capture_output=True)
    report = re.findall(pattern, out)
    print(report)
