use DSL::Shared::Utilities::DeterminedWordsMatching;

# Data query specific phrases
role DSL::Russian::DataQueryWorkflows::Grammar::DataQueryPhrases {
    # Tokens
    token arrange-verb:sym<Russian> { :i 'расставить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'расставить', 2) }> }
    token ascending-adjective:sym<Russian> { :i 'восходящий' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'восходящий', 2) }> }
    token association-noun:sym<Russian> { :i 'ассоциация' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'ассоциация', 2) }> }
    token broad-adjective:sym<Russian> { :i 'широкая' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'широкая', 2) }> }
    token cast-verb:sym<Russian> { :i 'формировать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'формировать', 2) }> }
    token character-noun:sym<Russian> { :i 'символ' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'символ', 2) }> }
    token combine-verb:sym<Russian> { :i 'комбайн' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'комбайн', 2) }> }
    token cross-adjective:sym<Russian> { :i  'перекрестные ссылки' | 'перекрестные ссылки' | 'перекрестные ссылки' | 'перекрещенные' | 'крест'  }
    token cross-verb:sym<Russian> { :i 'крестообразная поверхность' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'крестообразная поверхность', 2) }> }
    token descending-adjective:sym<Russian> { :i 'убывающий' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'убывающий', 2) }> }
    token distinct-adjective:sym<Russian> { :i  'уникальный' | 'уникальные'  }
    token divider-noun:sym<Russian> { :i 'разделитель' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'разделитель', 2) }> }
    token duplicate-adjective:sym<Russian> { :i  'продублировано' | 'повторный'  }
    token duplicates-noun:sym<Russian> { :i  'продублировано' | 'повторные'  }
    token form-noun:sym<Russian> { :i 'форма' | ([\w]+) <?{ $0.Str !(elem) <формат формула> and is-ru-fuzzy-match($0.Str, 'форма', 2) }> }
    token format-noun:sym<Russian> { :i 'формат' | ([\w]+) <?{ $0.Str ne 'форма' and is-ru-fuzzy-match($0.Str, 'формат', 2) }> }
    token formula-noun:sym<Russian> { :i 'формула' | ([\w]+) <?{ $0.Str ne 'форма' and is-ru-fuzzy-match($0.Str, 'формула', 2) }> }
    token full-adjective:sym<Russian> { :i  'полный' | 'полный' | 'полное'  }
    token glimpse-verb:sym<Russian> { :i  'взглянуть' | 'соски'  }
    token group-verb:sym<Russian> { :i  'сгруппировать' | 'группировать'  }
    token inner-adjective:sym<Russian> { :i  'внутренний' | 'внутренний' | 'внутри'  }
    token keep-verb:sym<Russian> { :i  'сохранить' | 'держать' | 'держите' | 'сохраните'  }
    token long-adjective:sym<Russian> { :i  'длинный' | 'длинный' | 'длинный'  }
    token longer-adjective:sym<Russian> { :i  'по-дълъг' | 'по-дълга' | 'по-дълго' | 'по-дълги'  }
    token map-verb:sym<Russian> { :i 'ассоциировать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'ассоциировать', 2) }> }
    token mapping-noun:sym<Russian> { :i 'ассоциирование' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'ассоциирование', 2) }> }
    token melt-verb:sym<Russian> { :i 'расплав' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'расплав', 2) }> }
    token merge-noun:sym<Russian> { :i 'слияние' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'слияние', 2) }> }
    token merge-verb:sym<Russian> { :i 'слить' | ([\w]+) <?{ $0.Str ne 'сплит' and is-ru-fuzzy-match($0.Str, 'слить', 2) }> }
    token mutate-verb:sym<Russian> { :i 'мутировать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'мутировать', 2) }> }
    token narrow-adjective:sym<Russian> { :i  'узкий' | 'узкая' | 'узкое'  }
    token omit-directive:sym<Russian> { :i  'пропустить' | 'отключен'  }
    token only-adverb:sym<Russian> { :i 'только' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'только', 2) }> }
    token order-verb:sym<Russian> { :i 'заказать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'заказать', 2) }> }
    token pivot-verb:sym<Russian> { :i  'развивать' | 'расслабиться'  }
    token rename-verb:sym<Russian> { :i 'переименовать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'переименовать', 2) }> }
    token safe-adjective:sym<Russian> { :i 'безопасный' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'безопасный', 2) }> }
    token safely-adverb:sym<Russian> { :i 'уверенное' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'уверенное', 2) }> }
    token select-verb:sym<Russian> { :i 'выберите' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'выберите', 2) }> }
    token semi-adjective:sym<Russian> { :i 'полу' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'полу', 2) }> }
    token separator-noun:sym<Russian> { :i 'разделитель' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'разделитель', 2) }> }
    token skim-verb:sym<Russian> { :i 'обзор' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'обзор', 2) }> }
    token skimming-noun:sym<Russian> { :i 'просмотреть' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'просмотреть', 2) }> }
    token sort-verb:sym<Russian> { :i  'сортировать' | 'заказать'  }
    token splitter-noun:sym<Russian> { :i 'разделитель' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'разделитель', 2) }> }
    token splitting-noun:sym<Russian> { :i 'сплит' | ([\w]+) <?{ $0.Str ne 'слить' and is-ru-fuzzy-match($0.Str, 'сплит', 2) }> }
    token summarise-verb:sym<Russian> { :i 'обобщить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'обобщить', 2) }> }
    token summarize-verb:sym<Russian> { :i 'обобщить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'обобщить', 2) }> }
    token tabulate-verb:sym<Russian> { :i 'табулировать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'табулировать', 2) }> }
    token tabulation-noun:sym<Russian> { :i  'табуляция' | 'табуляция'  }
    token ungroup-verb:sym<Russian> { :i 'разгруппировать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'разгруппировать', 2) }> }
    token unique-adjective:sym<Russian> { :i  'уникальный' | 'уникальные'  }
    token wide-adjective:sym<Russian> { :i 'широкая' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'широкая', 2) }> }
    token wider-adjective:sym<Russian> { :i  'по-широк' |  'по-широка' | 'по-широко' |  'по-широки'  }
}

