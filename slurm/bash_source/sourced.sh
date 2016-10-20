echo "Sourced script (sourced.sh)"
echo "this file is: ${BASH_SOURCE}"
echo "my dir is: $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
