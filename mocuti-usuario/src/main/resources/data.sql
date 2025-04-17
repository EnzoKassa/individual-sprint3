INSERT INTO Usuario (id_usuario, nome_completo, cpf, telefone, email, data_nascimento, genero, senha, is_ativo, dt_desativacao, is_autenticado, cargo_int)
VALUES
(DEFAULT, 'João Silva', '123.456.789-00', '+55 11 98765-4321', 'joao.silva@email.com', '1990-05-15', 'Masculino', 'senha123', TRUE, DEFAULT, FALSE, 1), -- Mantenedor 1
(DEFAULT, 'Maria Oliveira', '987.654.321-00', '+55 21 91234-5678', 'maria.oliveira@email.com', '1985-03-22', 'Feminino', 'senha456', TRUE, DEFAULT, FALSE, 2), -- Mantenedor 2
(DEFAULT, 'Carlos Santos', '456.789.123-00', '+55 31 99876-5432', 'carlos.santos@email.com', '1992-07-10', 'Masculino', 'senha789', TRUE, DEFAULT, FALSE, 2), -- Mantenedor 2
(DEFAULT, 'Ana Costa', '321.654.987-00', '+55 41 98765-1234', 'ana.costa@email.com', '1988-11-05', 'Feminino', 'senha101', TRUE, DEFAULT, FALSE, 2), -- Mantenedor 2
(DEFAULT, 'Pedro Lima', '654.321.987-00', '+55 51 91234-8765', 'pedro.lima@email.com', '1995-01-15', 'Masculino', 'senha202', TRUE, DEFAULT, FALSE, 2), -- Mantenedor 2
(DEFAULT, 'Juliana Alves', '789.123.456-00', '+55 61 99876-4321', 'juliana.alves@email.com', '1993-09-30', 'Feminino', 'senha303', TRUE, DEFAULT, FALSE, 2), -- Mantenedor 2
(DEFAULT, 'Rafael Souza', '159.753.486-00', '+55 71 98765-6789', 'rafael.souza@email.com', '1991-06-25', 'Masculino', 'senha404', TRUE, DEFAULT, FALSE, 3), -- Beneficiário
(DEFAULT, 'Fernanda Rocha', '258.456.789-00', '+55 81 91234-5678', 'fernanda.rocha@email.com', '1987-12-12', 'Feminino', 'senha505', TRUE, DEFAULT, FALSE, 3), -- Beneficiário
(DEFAULT, 'Lucas Martins', '369.258.147-00', '+55 91 99876-5432', 'lucas.martins@email.com', '1994-04-18', 'Masculino', 'senha606', TRUE, DEFAULT, FALSE, 3), -- Beneficiário
(DEFAULT, 'Patrícia Mendes', '741.852.963-00', '+55 11 98765-4321', 'patricia.mendes@email.com', '1990-08-08', 'Feminino', 'senha707', TRUE, DEFAULT, FALSE, 3);