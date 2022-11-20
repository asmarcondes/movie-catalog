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
- [ ] Não necessita de Login nem mesmo sessão de
usuários;
- [ ] Não é necessário estilização (css/js) das páginas;
- [ ] O sistema precisa apresentar um menu básico para que usuários consigam navegar entre as páginas através de seus respectivos links;
- [ ] A página inicial deve listar todos os filmes cadastrados no sistema;
### Entidades
#### Filme
- [ ] Título [ obrigatório, único ]
- [ ] Ano de lançamento [ obrigatório, válido ]
- [ ] Elenco de atores [ obrigatório ]
- [ ] Comentários (críticas)
- [ ] Devem ser listados no detalhe do filme apenas os comentários aprovados (show)
- [ ] Rating (nota) [ opcional da equipe ]

#### Ator
- [ ] Ao deletar um ator, remover a referência ao elenco do filme caso exista
- [ ] Nome [ obrigatório ]
- [ ] Ano de nascimento [ obrigatório ]
- [ ] Email [ obrigatório, único ]
- [ ] Ator pode estar em vários filmes

#### Comentário (Crítica)
- [ ] Apenas comentários não aprovados serão exibidos na lista de comentários
- [ ] Campo de texto [ obrigatório ]
- [ ] Filme associado [ obrigatório ]
- [ ] Deve ser criado como rascunho até que seja revisado e aprovado
- [ ] Para cada comentário aprovado, deve-se gerar um log (registro em tabela)

#### Log (registrar as aprovações de comentários)
- [ ] Será usada apenas para listar (:index) os logs de aprovação de comentários
- [ ] ID do comentário [ obrigatório ]
- [ ] Data de aprovação [ obrigatório ]