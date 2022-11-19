# movie-catalog
Simulação de catálog de filmes em Ruby on Rails para o projeto Inova.Ação Afro | CESAR.

## Objetivo: CRUD

### Entidades
#### Filme
- Título [obrigatório, único]
- Ano de lançamento [obrigatório, válido]
- Elenco de atores [obrigatório]
- Comentário (críticas)
  - Devem ser listados apenas os comentários aprovados no detalhe (show)
  - Rating (nota) [opcional da equipe]

#### Ator
- Ao deletar um ator, remover a referência ao elenc do filme caso exista
- Dados
  - Nome [obrigatório]
  - Ano de nascimento [obrigatório]
  - Email [obrigatório, único]
  - Ator pode estar em vários filmes

#### Comentário (Crítica)
- Apenas comentários não aprovados serão exibidos na lista de comentários
- Dados
  - Campo de texto [obrigatório]
  - Filme associado [obrigatório]
- Deve ser criado como rascunho até que seja revisado e aprovado
- Para cada comentário aprovado, deve-se gerar um log (registro em tabela)

#### Log (registrar as aprovações de comentários)
- Será usada apenas para listar (:index) os logs de aprovação de comentários
- Dados
  - ID do comentário [obrigatório]
  - Data de aprovação [obrigatório]