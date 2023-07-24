
# CONSTRAINTS 
-- NOT NULL 
-- UNIQUE 
-- PRIMARY KEY 
-- AUTO_INCREMENT 
-- FOREIGN KEY 


# NOT NULL 
CREATE TABLE pessoas ( 
  nome VARCHAR(255) NOT NULL,
  idade INT 
 );
 
 SELECT * FROM pessoas;
 
 INSERT INTO pessoas (nome, idade) VALUES ("veida", 18); 
 INSERT INTO pessoas (nome, idade) VALUES ("", 18);
 INSERT INTO pessoas (nome, idade) VALUES (NULL, 18); -- ERRO
 INSERT INTO pessoas (nome) VALUES ("josé");
 
 # UNIQUE 
 ALTER TABLE pessoas ADD COLUMN email VARCHAR(50) UNIQUE; 
 INSERT INTO pessoas (nome, idade, email) VALUES ("josé", 51, "josé@gatinho.com");
 INSERT INTO pessoas (nome, idade, email) VALUES ("josé da silva", 50, "josé@gatinho1.com");

 
 
 # PRIMARY KEY 
 CREATE TABLE produtos(
   id INT NOT NULL,
   nome VARCHAR(100),
   sku VARCHAR(10),
   PRIMARY KEY (id)
   );
   
   SELECT * FROM produtos; 
   INSERT INTO produtos(id, nome, sku) VALUES (1, "batedeira", "123poiuy"); 
   INSERT INTO produtos(id, nome, sku) VALUES (NULL, "batedeira", "4569poiuy"); -- ERRO
   INSERT INTO produtos(id, nome, sku) VALUES (1, "batedeira", "4569poiuy"); -- ERRO
   INSERT INTO produtos(id, nome, sku) VALUES (2, "batedeira", "123poiuy");
   
   
   # AUTO_INCREMENT 
   CREATE TABLE frutas( 
     id INT PRIMARY KEY AUTO_INCREMENT not NULL,
     nome VARCHAR(50)
   );
   
   SELECT * FROM frutas;
   INSERT INTO frutas (nome) VALUES ("mamão"); 
   INSERT INTO frutas (nome) VALUES ("morango");
   INSERT INTO frutas (nome) VALUES ("laranja");
   
   # FOREIGN KEY 
   
  CREATE TABLE funcionarios(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100),
    idade  INT  NOT NULL
    );
    
CREATE TABLE  endereço(
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  logradouro VARCHAR(255) NOT NULL,
  numero VARCHAR(5),
  funcionario_id INT NOT NULL,
  FOREIGN KEY (funcionario_id) REFERENCES funcionarios(id) 
  );
  
  SELECT * FROM funcionarios;
  SELECT * FROM endereço;
  INSERT INTO funcionarios (nome, idade)
  INSERT INTO endereço ()
  
  
 