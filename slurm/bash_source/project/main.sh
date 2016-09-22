echo "Main program (main.sh)"
echo "I'm gonna source sourced.sh"
source $( dirname "${BASH_SOURCE[0]}")/../sourced.sh
#source $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/../sourced.sh
