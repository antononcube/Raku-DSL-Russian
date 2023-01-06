use v6;

use DSL::Shared::Utilities::DeterminedWordsMatching;
use DSL::Shared::Roles::Russian::PipelineCommand;

# Latent Semantic Analysis (LSA) phrases
role DSL::Russian::LatentSemanticAnalysisWorkflows::Grammar::LatentSemanticAnalysisPhrases
        does DSL::Shared::Roles::English::PipelineCommand {

    # LSA specific
    token analysis-noun:sym<Russian> { :i 'анализ' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'анализ', 2) }> }
    token component-noun:sym<Russian> { :i 'компонент' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'компонент', 2) }> }
    token decomposition-noun:sym<Russian> { :i 'декомпозиция' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'декомпозиция', 2) }> }
    token entries-noun:sym<Russian> { :i  'элементы' | 'ячейки'  }
    token factorization-noun:sym<Russian> { :i 'факторизация' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'факторизация', 2) }> }
    token independent-adjective:sym<Russian> { :i  'независимый' | 'независимая' | 'независимое' | 'независимые' }
    token indexing-noun:sym<Russian> { :i 'индексирование' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'индексирование', 2) }> }
    token item-noun:sym<Russian> { :i 'щука' | ([\w]+) <?{ $0.Str ne 'щук' and is-ru-fuzzy-match($0.Str, 'щука', 2) }> }
    token items-noun:sym<Russian> { :i 'щук' | ([\w]+) <?{ $0.Str ne 'щука' and is-ru-fuzzy-match($0.Str, 'щук', 1) }> }
    token latent-adjective:sym<Russian> { :i  'латентентый' | 'латентная' | 'латентное'  }
    token negative-adjective:sym<Russian> { :i  'отрицателеный' | 'отрицателная' | 'отрицателное' | 'отрицателеные'  }
    token nonnegative-adjective:sym<Russian> { :i  [ 'не' | 'не-' ] \h* <negative-adjective>  }
    token partition-noun:sym<Russian> { :i 'разбивание' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'разбивание', 2) }> }
    token principal-adjective:sym<Russian> { :i  'главный' | 'главная' | 'главное'  }
    token query-noun:sym<Russian> { :i 'запрос' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'запрос', 2) }> }
    token rules-noun:sym<Russian> { :i 'правила' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'правила', 2) }> }
    token semantic-adjective:sym<Russian> { :i  'семантиченый' | 'семантичная' | 'семантичное' | 'семантичные'  }
    token singular-adjective:sym<Russian> { :i  'сингулярный' | 'сингулярная' | 'сингулярное' | 'сингулярные'  }
    token stemming-noun:sym<Russian> { :i 'столбцов' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'столбцов', 2) }> }
    token stop-adjective:sym<Russian> { :i 'стоп' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'стоп', 2) }> }
    token stop-noun:sym<Russian> { :i  'стоп' | 'остановка'  }
    token synonym-noun:sym<Russian> { :i 'синоним' | ([\w]+) <?{ $0.Str ne 'синонимы' and is-ru-fuzzy-match($0.Str, 'синоним', 2) }> }
    token synonyms-noun:sym<Russian> { :i 'синонимы' | ([\w]+) <?{ $0.Str ne 'синоним' and is-ru-fuzzy-match($0.Str, 'синонимы', 2) }> }
    token term-noun:sym<Russian> { :i 'термин' | ([\w]+) <?{ $0.Str ne 'термины' and is-ru-fuzzy-match($0.Str, 'термин', 2) }> }
    token terms-noun:sym<Russian> { :i 'термины' | ([\w]+) <?{ $0.Str ne 'термин' and is-ru-fuzzy-match($0.Str, 'термины', 2) }> }
    token thesaurus-noun:sym<Russian> { :i  <dictionary-noun> | <interpreter-noun> | <interpreting-adjective> \h+ <dictionary-noun>  }
    token topic-noun:sym<Russian> { :i 'тема' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'тема', 2) }> }
    token topics-noun:sym<Russian> { :i  'темы' | 'тем'  }

    # Document term matrix creation related
    rule data-element:sym<Russian> {  'предложение' | 'параграф' | 'секция' | 'глава' | <word-noun>  }
    rule data-elements:sym<Russian> {  'предложения' | 'параграфи' | 'секции' | 'глави' | <words-noun>  }

    # Topics and thesaurus
    rule statistical-thesaurus-phrase:sym<Russian> {  <statistical>? <thesaurus-noun>  }
    rule topics-table-phrase:sym<Russian> {  <table-noun> [ 'с' | 'от' | 'на' ] <topics-noun>  }

    # LSI specific
    token frequency-noun:sym<Russian> { :i 'честота' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'честота', 2) }> }
    token global-adjective:sym<Russian> { :i  'глобаленый' | 'глобалное'  }
    token inverse-adjective:sym<Russian> { :i  'обратеный' | 'обратное'  }
    token local-adjective:sym<Russian> { :i  'локалный' | 'локалное'  }
    token normalization-noun:sym<Russian> { :i  'нормализация' | 'нормализирование'  }
    token normalizer-noun:sym<Russian> { :i 'нормализатор' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'нормализатор', 2) }> }
    token normalizing-noun:sym<Russian> { :i 'нормализирование' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'нормализирование', 2) }> }

}
