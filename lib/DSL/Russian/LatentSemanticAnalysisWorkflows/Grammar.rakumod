use v6;

use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::English::PipelineCommand;
use DSL::Russian::LatentSemanticAnalysisWorkflows::Grammar::LatentSemanticAnalysisPhrases;
use DSL::English::LatentSemanticAnalysisWorkflows::Grammar::LatentSemanticAnalysisPhrases;
use DSL::English::LatentSemanticAnalysisWorkflows::Grammar::LSIApplyCommand;
use DSL::English::LatentSemanticAnalysisWorkflows::Grammarish;


grammar DSL::Russian::LatentSemanticAnalysisWorkflows::Grammar
        does DSL::English::LatentSemanticAnalysisWorkflows::Grammarish
        does DSL::English::LatentSemanticAnalysisWorkflows::Grammar::LSIApplyCommand
        does DSL::Shared::Roles::Russian::PipelineCommand
        does DSL::Russian::LatentSemanticAnalysisWorkflows::Grammar::LatentSemanticAnalysisPhrases
        does DSL::English::LatentSemanticAnalysisWorkflows::Grammar::LatentSemanticAnalysisPhrases
        does DSL::Shared::Roles::ErrorHandling {

}
