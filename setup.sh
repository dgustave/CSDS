base_dir=/c/Users/$(whoami)
ast_dir='/x/corp/PPS/CorpData-GA/Priority/Engineering/Team.ENG/Application\ Solutions'
software_dir=$ast_dir'/Software\ Installers'
git clone https://github.com/dgustave/cookiecutter-data-science.git
mkdir dependencies
pip download -r requirements.txt -d "./dependencies"
tar cvfz dependencies.tar.gz dependencies
mv dependencies.tar.gz $(pwd)/AST_INIT
mv cookiecutter-data-science $(pwd)/AST_INIT
cp -r $(pwd)/AST_INIT $software_dir/AST_INIT

