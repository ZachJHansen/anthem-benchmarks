import re
import subprocess as sproc

def generate_se_commands():
    simplify = [True, False]
    #breaking = [True, False]
    #decomposition = ["independent", "sequential"]
    #se_problems = ["bounds", "choice", "successor", "transitive", "trivial"]
    #se_problems = ["squares", "double", "lin2"]
    se_problems = ["strong_primes", "trivial_primes"]
    se_commands = []
    for p in se_problems:
        f1 = "problems/" + p + "/" + p + ".1.lp "
        f2 = "problems/" + p + "/" + p + ".2.lp "
        c1 = "./anthem verify --equivalence strong " + f1 + f2 + "-t 600 -m 4"
        for s in simplify:
            if not s:
                c = c1 + " --no-simplify"
            else:
                c = c1
            se_commands.append(c)

    for c in se_commands:
        print(c)


def execute(fname):
    pattern = re.compile("> Success! .* equivalence. \([0-9]+ ms\)|> Failure! .* equivalence. \([0-9]+ ms\)")
    commands = open(fname, "r").readlines()

    print('\n################################\n')
    for c in commands:
        print(c.strip('\n'))
        out = sproc.run(c, encoding='utf-8', capture_output=True, shell=True)
        if out.returncode == 0:
            report = re.findall(pattern, out.stdout)
            print(report)
        else:
            print("Command failed")
            print(out.stderr)
        print('\n################################\n')

#generate_se_commands()
execute("commands.txt")
