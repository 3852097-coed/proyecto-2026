--mostramos los suarios de la tabla usuarios.
SELECT * FROM usuarios;
--insertamos los datos de los usuarios.
INSERT INTO usuarios(nombre_usuario,pass,email) 
VALUES
('Administrador','12345','administrador@gmail.com'),
('vendedor','12345','vendedor@gmail.com'),
('invitado','12345','invitado@gmail.com');