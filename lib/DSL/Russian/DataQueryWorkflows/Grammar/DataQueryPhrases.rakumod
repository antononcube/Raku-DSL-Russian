use DSL::Shared::Utilities::DeterminedWordsMatching;

# Data query specific phrases
role DSL::Russian::DataQueryWorkflows::Grammar::DataQueryPhrases {
    # Tokens
    token arrange-verb:sym<Russian> { :i 'расставить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'расставить', 2) }> }
    token ascending-adjective:sym<Russian> { :i 'восходящий' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'восходящий', 2) }> }
    token association-noun:sym<Russian> { :i 'ассоциация' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'ассоциация', 2) }> }
    token broad-adjective:sym<Russian> { :i 'широкая' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'широкая', 2) }> }
    token cast-verb:sym<Russian> { :i 'формировать' | ([\w]+) <?{ $0.Str ne 'сортировать' and is-ru-fuzzy-match($0.Str, 'формировать', 2) }> }
    token character-noun:sym<Russian> { :i 'символ' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'символ', 2) }> }
    token combine-verb:sym<Russian> { :i 'комбайн' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'комбайн', 2) }> }
    token cross-adjective:sym<Russian> { :i  'перекрестные' \h+ 'ссылки' | 'перекрестные' \h+ 'ссылки' | 'перекрестные' \h+ 'ссылки' | 'перекрещенные' | 'крест'  }
    token cross-verb:sym<Russian> { :i  'крестообразная' \h+ 'поверхность'   }
    token descending-adjective:sym<Russian> { :i 'убывающий' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'убывающий', 2) }> }
    token distinct-adjective:sym<Russian> { :i 'уникальный' | ([\w]+) <?{ $0.Str ne 'уникальные' and is-ru-fuzzy-match($0.Str, 'уникальный', 2) }> | 'уникальные' | ([\w]+) <?{ $0.Str ne 'уникальный' and is-ru-fuzzy-match($0.Str, 'уникальные', 2) }> }
    token divider-noun:sym<Russian> { :i 'разделитель' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'разделитель', 2) }> }
    token duplicate-adjective:sym<Russian> { :i 'продублировано' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'продублировано', 2) }> | 'повторный' | ([\w]+) <?{ $0.Str ne 'повторные' and is-ru-fuzzy-match($0.Str, 'повторный', 2) }> }
    token duplicates-noun:sym<Russian> { :i 'продублировано' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'продублировано', 2) }> | 'повторные' | ([\w]+) <?{ $0.Str ne 'повторный' and is-ru-fuzzy-match($0.Str, 'повторные', 2) }> }
    token form-noun:sym<Russian> { :i 'форма' | ([\w]+) <?{ $0.Str !(elem) <формат формула> and is-ru-fuzzy-match($0.Str, 'форма', 2) }> }
    token format-noun:sym<Russian> { :i 'формат' | ([\w]+) <?{ $0.Str ne 'форма' and is-ru-fuzzy-match($0.Str, 'формат', 2) }> }
    token formula-noun:sym<Russian> { :i 'формула' | ([\w]+) <?{ $0.Str ne 'форма' and is-ru-fuzzy-match($0.Str, 'формула', 2) }> }
    token full-adjective:sym<Russian> { :i 'полный' | ([\w]+) <?{ $0.Str ne 'полное' and is-ru-fuzzy-match($0.Str, 'полный', 2) }> | 'полный' | ([\w]+) <?{ $0.Str ne 'полное' and is-ru-fuzzy-match($0.Str, 'полный', 2) }> | 'полное' | ([\w]+) <?{ $0.Str ne 'полный' and is-ru-fuzzy-match($0.Str, 'полное', 2) }> }
    token glimpse-verb:sym<Russian> { :i 'взглянуть' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'взглянуть', 2) }> | 'соски' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'соски', 2) }> }
    token group-verb:sym<Russian> { :i 'сгруппировать' | ([\w]+) <?{ $0.Str ne 'группировать' and is-ru-fuzzy-match($0.Str, 'сгруппировать', 2) }> | 'группировать' | ([\w]+) <?{ $0.Str ne 'сгруппировать' and is-ru-fuzzy-match($0.Str, 'группировать', 2) }> }
    token inner-adjective:sym<Russian> { :i 'внутренний' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'внутренний', 2) }> | 'внутренний' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'внутренний', 2) }> | 'внутри' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'внутри', 2) }> }
    token keep-verb:sym<Russian> { :i 'сохранить' | ([\w]+) <?{ $0.Str ne 'сохраните' and is-ru-fuzzy-match($0.Str, 'сохранить', 2) }> | 'держать' | ([\w]+) <?{ $0.Str ne 'держите' and is-ru-fuzzy-match($0.Str, 'держать', 2) }> | 'держите' | ([\w]+) <?{ $0.Str ne 'держать' and is-ru-fuzzy-match($0.Str, 'держите', 2) }> | 'сохраните' | ([\w]+) <?{ $0.Str ne 'сохранить' and is-ru-fuzzy-match($0.Str, 'сохраните', 2) }> }
    token long-adjective:sym<Russian> { :i 'длинный' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'длинный', 2) }> | 'длинный' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'длинный', 2) }> | 'длинный' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'длинный', 2) }> }
    token longer-adjective:sym<Russian> { :i 'по-дълъг' | ([\w]+) <?{ $0.Str !(elem) <по-дълга по-дълго по-дълги> and is-ru-fuzzy-match($0.Str, 'по-дълъг', 2) }> | 'по-дълга' | ([\w]+) <?{ $0.Str !(elem) <по-дълъг по-дълго по-дълги> and is-ru-fuzzy-match($0.Str, 'по-дълга', 2) }> | 'по-дълго' | ([\w]+) <?{ $0.Str !(elem) <по-дълъг по-дълга по-дълги> and is-ru-fuzzy-match($0.Str, 'по-дълго', 2) }> | 'по-дълги' | ([\w]+) <?{ $0.Str !(elem) <по-дълъг по-дълга по-дълго> and is-ru-fuzzy-match($0.Str, 'по-дълги', 2) }> }
    token map-verb:sym<Russian> { :i 'ассоциировать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'ассоциировать', 2) }> }
    token mapping-noun:sym<Russian> { :i 'ассоциирование' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'ассоциирование', 2) }> }
    token melt-verb:sym<Russian> { :i 'расплав' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'расплав', 2) }> }
    token merge-noun:sym<Russian> { :i 'слияние' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'слияние', 2) }> }
    token merge-verb:sym<Russian> { :i 'слить' | ([\w]+) <?{ $0.Str ne 'сплит' and is-ru-fuzzy-match($0.Str, 'слить', 2) }> }
    token mutate-verb:sym<Russian> { :i 'мутировать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'мутировать', 2) }> }
    token narrow-adjective:sym<Russian> { :i 'узкий' | ([\w]+) <?{ $0.Str !(elem) <узкая узкое> and is-ru-fuzzy-match($0.Str, 'узкий', 2) }> | 'узкая' | ([\w]+) <?{ $0.Str !(elem) <узкий узкое> and is-ru-fuzzy-match($0.Str, 'узкая', 2) }> | 'узкое' | ([\w]+) <?{ $0.Str !(elem) <узкий узкая> and is-ru-fuzzy-match($0.Str, 'узкое', 2) }> }
    token omit-directive:sym<Russian> { :i 'пропустить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'пропустить', 2) }> | 'отключен' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'отключен', 2) }> }
    token only-adverb:sym<Russian> { :i 'только' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'только', 2) }> }
    token order-verb:sym<Russian> { :i 'заказать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'заказать', 2) }> }
    token pivot-verb:sym<Russian> { :i 'развивать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'развивать', 2) }> | 'расслабиться' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'расслабиться', 2) }> }
    token rename-verb:sym<Russian> { :i 'переименовать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'переименовать', 2) }> }
    token safe-adjective:sym<Russian> { :i 'безопасный' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'безопасный', 2) }> }
    token safely-adverb:sym<Russian> { :i 'уверенное' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'уверенное', 2) }> }
    token select-verb:sym<Russian> { :i 'выберите' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'выберите', 2) }> }
    token semi-adjective:sym<Russian> { :i 'полу' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'полу', 2) }> }
    token separator-noun:sym<Russian> { :i 'разделитель' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'разделитель', 2) }> }
    token skim-verb:sym<Russian> { :i 'обзор' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'обзор', 2) }> }
    token skimming-noun:sym<Russian> { :i 'просмотреть' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'просмотреть', 2) }> }
    token sort-verb:sym<Russian> { :i 'сортировать' | ([\w]+) <?{ $0.Str ne 'формировать' and is-ru-fuzzy-match($0.Str, 'сортировать', 2) }> | 'заказать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'заказать', 2) }> }
    token splitter-noun:sym<Russian> { :i 'разделитель' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'разделитель', 2) }> }
    token splitting-noun:sym<Russian> { :i 'сплит' | ([\w]+) <?{ $0.Str ne 'слить' and is-ru-fuzzy-match($0.Str, 'сплит', 2) }> }
    token summarise-verb:sym<Russian> { :i 'обобщить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'обобщить', 2) }> }
    token summarize-verb:sym<Russian> { :i 'обобщить' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'обобщить', 2) }> }
    token tabulate-verb:sym<Russian> { :i 'табулировать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'табулировать', 2) }> }
    token tabulation-noun:sym<Russian> { :i 'табуляция' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'табуляция', 2) }> | 'табуляция' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'табуляция', 2) }> }
    token ungroup-verb:sym<Russian> { :i 'разгруппировать' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'разгруппировать', 2) }> }
    token unique-adjective:sym<Russian> { :i 'уникальный' | ([\w]+) <?{ $0.Str ne 'уникальные' and is-ru-fuzzy-match($0.Str, 'уникальный', 2) }> | 'уникальные' | ([\w]+) <?{ $0.Str ne 'уникальный' and is-ru-fuzzy-match($0.Str, 'уникальные', 2) }> }
    token wide-adjective:sym<Russian> { :i 'широкая' | ([\w]+) <?{ is-ru-fuzzy-match($0.Str, 'широкая', 2) }> }
    token wider-adjective:sym<Russian> { :i 'по-широк' | ([\w]+) <?{ $0.Str !(elem) <по-широка по-широко по-широки> and is-ru-fuzzy-match($0.Str, 'по-широк', 2) }> | 'по-широка' | ([\w]+) <?{ $0.Str !(elem) <по-широк по-широко по-широки> and is-ru-fuzzy-match($0.Str, 'по-широка', 2) }> | 'по-широко' | ([\w]+) <?{ $0.Str !(elem) <по-широк по-широка по-широки> and is-ru-fuzzy-match($0.Str, 'по-широко', 2) }> | 'по-широки' | ([\w]+) <?{ $0.Str !(elem) <по-широк по-широка по-широко> and is-ru-fuzzy-match($0.Str, 'по-широки', 2) }> }
}

