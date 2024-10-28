import re
import subprocess as sproc

def generate_se_commands():
    problems = ["bounds", "choice", "successor", "transitive", "trivial", "squares", "double", "lin2", "strong_primes", "trivial_primes"]
    
    commands = []
    base = "./anthem verify --equivalence strong "
     
    for p in problems:
        f1 = "problems/" + p + "/" + p + ".1.lp "
        f2 = "problems/" + p + "/" + p + ".2.lp "
        c = base + f1 + f2 + "-t 600 -m 4"

        for simplify in [True, False]:
            if simplify:
                commands.append(c)
                commands.append(c + " --no-eq-break")
            else:
                c = c + " --no-simplify"
                commands.append(c)
                commands.append(c + " --no-eq-break")

    for c in commands:
        print(c)

def generate_ee_commands():
    nontight = ["frame"]
    backward_only = ["div"]
    needs_po = ["frame", "div", "optimized_primes" ]
    p2s_problems = ["coloring", "cover-p2s", "div", "floor",]
    p2p_problems = ["cover-p2p", "frame", "more_than_three", "placeholder_squares", "primes", "optimized_primes"]
    problems = p2s_problems + p2p_problems

    commands = []
    base = "./anthem verify --equivalence external "
     
    for p in problems:
        c = base
        if p in backward_only:
            c = c + "--direction backward "
        if p in nontight:
            c = c + "--bypass-tightness "

        files = ""
        if p in p2p_problems:
            f1 = "problems/" + p + "/" + p + ".1.lp "
            f2 = "problems/" + p + "/" + p + ".2.lp "
            files = f1 + f2
        else:
            f1 = "problems/" + p + "/" + p + ".lp "
            f2 = "problems/" + p + "/" + p + ".spec "
            files = f1 + f2
        files = files + "problems/" + p + "/" + p + ".ug "

        if p in needs_po:
            f4 = "problems/" + p + "/" + p + ".po "
            c = c + files + f4 + "-t 600 -m 4"
        else:
            c = c + files + "-t 600 -m 4"

        for simplify in [True, False]:
            if simplify:
                commands.append(c)
                commands.append(c + " --no-eq-break")
            else:
                c = c + " --no-simplify"
                commands.append(c)
                commands.append(c + " --no-eq-break")

    for c in commands:
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



generate_se_commands()
generate_ee_commands()
#execute("commands.txt")
