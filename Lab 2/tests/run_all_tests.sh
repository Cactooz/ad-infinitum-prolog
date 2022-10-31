
if [ $# -ne 1 ]
then
    echo "Please provide a solution to test."
    echo "Usage: `basename $0` your_solution.pl"
    exit -1
fi

if [ ! -f "$1" ]; then
    echo "Could not find file \"$1\"".
    echo "Usage: `basename $0` your_solution.pl"
    exit -1
fi

prolog --query-goal "['run_all_tests.pl'], run_all_tests('$1')"
