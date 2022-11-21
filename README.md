# CESARFlix - Catálogo de Filmes
Simulação de catálogo de filmes em Ruby on Rails para o projeto Inova.Ação Afro | CESAR.
### Objetivo: CRUD
------
## Avaliação
- Funcionamento (Será verificado tratamento de exceção);
- Organização;
- Pensamento computacional;
- Variedade dos recursos utilizados do framework Ruby on Rails;
- Verificação de plágios;
---
## Requisitos
### Gerais
- [x] Não necessita de Login nem mesmo sessão de
usuários;
- [x] Não é necessário estilização (css/js) das páginas;
- [x] O sistema precisa apresentar um menu básico para que usuários consigam navegar entre as páginas através de seus respectivos links;
- [x] A página inicial deve listar todos os filmes cadastrados no sistema;
### Entidades
#### Filme
- [x] Título [ obrigatório, único ]
- [x] Ano de lançamento [ obrigatório, válido ]
- [x] Elenco de atores [ obrigatório ]
- [x] Comentários (críticas)
- [x] Devem ser listados no detalhe do filme apenas os comentários aprovados (show)
- [x] Rating (nota) [ opcional da equipe ]

#### Ator
- [x] Ao deletar um ator, remover a referência ao elenco do filme caso exista
- [x] Nome [ obrigatório ]
- [x] Ano de nascimento [ obrigatório ]
- [x] Email [ obrigatório, único ]
- [x] Ator pode estar em vários filmes

#### Comentário (Crítica)
- [x] Apenas comentários não aprovados serão exibidos na lista de comentários
- [x] Campo de texto [ obrigatório ]
- [x] Filme associado [ obrigatório ]
- [x] Deve ser criado como rascunho até que seja revisado e aprovado
- [x] Para cada comentário aprovado, deve-se gerar um log (registro em tabela)

#### Log (registrar as aprovações de comentários)
- [x] Será usada apenas para listar (:index) os logs de aprovação de comentários
- [x] ID do comentário [ obrigatório ]
- [x] Data de aprovação [ obrigatório ]