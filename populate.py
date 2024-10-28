import re
import subprocess as sproc

def create_out_dirs(reasoning, p):
    odir = reasoning + "/" + p
    sproc.run("mkdir " + odir, shell=True)

    odir1 = reasoning + "/" + p + "/simplified/"
    sproc.run("mkdir " + odir1, shell=True)

    odir2 = reasoning + "/" + p + "/unsimplified/"
    sproc.run("mkdir " + odir2, shell=True)

    return (odir1, odir2)

def populate_out_dirs(command, odir1, odir2, nontight):
    for simplify in [True, False]:
        if not simplify:
            c = command + odir1
            if nontight:
                c = c + " --bypass-tightness"
            open(odir1 + "README.md", "w").writelines(["Command: " + c])
        else:
            c = command + odir2 + " --no-simplify"
            if nontight:
                c = c + " --bypass-tightness"
            open(odir2 + "README.md", "w").writelines(["Command: " + c])
        sproc.run(c, shell=True)

def generate_classical_ee_tptp():
    nontight = ["frame"]
    nps = " --no-eq-break --no-proof-search --save-problems "

    p2p_problems = ["cover-p2p", "more_than_three", "placeholder_squares", "primes", "optimized_primes", "frame"]
    for p in p2p_problems:
        f1 = "problems/" + p + "/" + p + ".1.lp "
        f2 = "problems/" + p + "/" + p + ".2.lp "
        f3 = "problems/" + p + "/" + p + ".ug "
        command = "./anthem verify --equivalence external " + f1 + f2 + f3 + nps
        odir1, odir2 = create_out_dirs("classical", p)
        populate_out_dirs(command, odir1, odir2, (p in nontight))

    p2s_problems = ["cover-p2s", "coloring", "floor"]
    for p in p2s_problems:
        f1 = "problems/" + p + "/" + p + ".lp "
        f2 = "problems/" + p + "/" + p + ".spec "
        f3 = "problems/" + p + "/" + p + ".ug "
        command = "./anthem verify --equivalence external " + f1 + f2 + f3 + nps
        odir1, odir2 = create_out_dirs("classical", p)
        populate_out_dirs(command, odir1, odir2, (p in nontight))

    p = "div"
    f1 = "problems/" + p + "/" + p + ".lp "
    f2 = "problems/" + p + "/" + p + ".spec "
    f3 = "problems/" + p + "/" + p + ".ug "
    command = "./anthem verify --equivalence external --direction backward " + f1 + f2 + f3 + nps
    odir1, odir2 = create_out_dirs("classical", p)
    populate_out_dirs(command, odir1, odir2, False)

def generate_classical_se_tptp():
    nps = " --no-eq-break --no-proof-search --save-problems "

    se_problems = ["bounds", "choice", "successor", "transitive", "trivial", "squares", "double", "lin2", "strong_primes", "trivial_primes"]
    for p in se_problems:
        f1 = "problems/" + p + "/" + p + ".1.lp "
        f2 = "problems/" + p + "/" + p + ".2.lp "
        command = "./anthem verify --equivalence strong " + f1 + f2 + nps
        odir1, odir2 = create_out_dirs("classical", p)
        populate_out_dirs(command, odir1, odir2, False)

def generate_intuitionistic_tptp():
    nps = " --no-eq-break --no-proof-search --save-problems "

    shorthand_problems = ["choice", "transitive", "lin2"]
    for p in shorthand_problems:
        f1 = "problems/" + p + "/" + p + ".1.lp "
        f2 = "problems/" + p + "/" + p + ".2.lp "
        command = "./anthem verify --equivalence intuitionistic --formula-representation shorthand " + f1 + f2 + nps
        odir1, odir2 = create_out_dirs("intuitionistic", p)
        populate_out_dirs(command, odir1, odir2, False)

    tau_star_problems = ["bounds", "successor", "trivial", "squares", "double", "strong_primes", "trivial_primes"]
    for p in tau_star_problems:
        f1 = "problems/" + p + "/" + p + ".1.lp "
        f2 = "problems/" + p + "/" + p + ".2.lp "
        command = "./anthem verify --equivalence intuitionistic --formula-representation tau-star " + f1 + f2 + nps
        odir1, odir2 = create_out_dirs("intuitionistic", p)
        populate_out_dirs(command, odir1, odir2, False)

#generate_intuitionistic_tptp()
#generate_classical_se_tptp()
generate_classical_ee_tptp()
