#! /bin/zsh

# The code below assumes that the Raku package Grammar::TokenProcessing is installed.
# It is assumed that this script is executed in the top directory of DSL::Shared .

# Process DataQueryWorkflows template
echo 'Process DataQueryWorkflows template'

cd ./lib/DSL/Russian/DataQueryWorkflows/Grammar
add-token-fuzzy-matching -o=./DataQueryPhrases.rakumod --/add-protos --sym-name=Russian --add-exclusions --func-name=is-ru-fuzzy-match ./DataQueryPhrases-template

# Go back to the top directory
cd ../../../../../