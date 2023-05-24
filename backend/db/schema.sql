CREATE TABLE palavras (
  id SERIAL PRIMARY KEY,
  titulo VARCHAR(255),
  conteudo TEXT,
  aplicacao1 VARCHAR(255),
  aplicacao2 VARCHAR(255),
  aplicacao3 VARCHAR(255),
  aplicacao4 VARCHAR(255),
  aplicacao5 VARCHAR(255)
);

INSERT INTO palavras (titulo, conteudo, aplicacao1, aplicacao2, aplicacao3, aplicacao4, aplicacao5)
VALUES ('Exemplo 1', 'Conteúdo do exemplo 1', 'Aplicação 1-1', 'Aplicação 1-2', 'Aplicação 1-3', 'Aplicação 1-4', 'Aplicação 1-5'),
       ('Exemplo 2', 'Conteúdo do exemplo 2', 'Aplicação 2-1', 'Aplicação 2-2', 'Aplicação 2-3', 'Aplicação 2-4', 'Aplicação 2-5'),
       ('Exemplo 3', 'Conteúdo do exemplo 3', 'Aplicação 3-1', 'Aplicação 3-2', 'Aplicação 3-3', 'Aplicação 3-4', 'Aplicação 3-5');