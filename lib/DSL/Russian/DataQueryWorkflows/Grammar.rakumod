use v6.d;

use DSL::Shared::Roles::Russian::ListManagementCommand;
use DSL::Shared::Roles::Russian::PipelineCommand;
use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::PredicateSpecification;
use DSL::Shared::Roles::English::PredicateSpecification;
use DSL::Shared::Roles::Russian::PredicateSpecification;

use DSL::English::DataQueryWorkflows::Grammar::DataQueryPhrases;
use DSL::English::DataQueryWorkflows::Grammarish;
use DSL::Russian::DataQueryWorkflows::Grammar::DataQueryPhrases;

grammar DSL::Russian::DataQueryWorkflows::Grammar
        does DSL::English::DataQueryWorkflows::Grammarish
        does DSL::English::DataQueryWorkflows::Grammar::DataQueryPhrases
        does DSL::Russian::DataQueryWorkflows::Grammar::DataQueryPhrases
        does DSL::Shared::Roles::ErrorHandling
        does DSL::Shared::Roles::Russian::ListManagementCommand
        does DSL::Shared::Roles::PredicateSpecification
        does DSL::Shared::Roles::English::PredicateSpecification
        does DSL::Shared::Roles::Russian::PredicateSpecification
        does DSL::Shared::Roles::Russian::PipelineCommand {

}
