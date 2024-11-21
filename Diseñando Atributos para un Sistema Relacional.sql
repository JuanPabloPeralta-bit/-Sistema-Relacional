-- Insertar Datos en la tabla Artista
INSERT INTO Artista (Nombre, Apellido, Fecha_Nacimiento, Nacionalidad) VALUES 
('Freddie', 'Mercury', '1946-09-05', 'Británico'),
('David', 'Bowie', '1947-01-08', 'Británico');

-- Insertar Datos en la tabla Género
INSERT INTO Género (Nombre_Género) VALUES 
('Rock'),
('Pop'),
('Jazz');

-- Insertar Datos en la tabla Álbum
INSERT INTO Álbum (Título, Fecha_Lanzamiento, ID_Artista, ID_Género) VALUES 
('A Night at the Opera', '1975-11-21', 1, 1),
('Heroes', '1977-09-14', 2, 1);

-- Insertar Datos en la tabla Productor
INSERT INTO Productor (Nombre, Apellido) VALUES 
('Brian', 'May'),
('Tony', 'Visconti');

-- Insertar Datos en la tabla Composición
INSERT INTO Composición (ID_Artista, ID_Produtor) VALUES 
(1, 1),  -- Freddie Mercury con Brian May como productor
(2, 2);  -- David Bowie con Tony Visconti como productor

-- Insertar Datos en la tabla Canción
INSERT INTO Canción (Título, Duración, ID_Álbum, ID_Composición) VALUES 
('Bohemian Rhapsody', '00:05:55', 1, 1),
('Under Pressure', '00:04:00', 1, 1),
('Heroes', '00:03:35', 2, 2);

-- Insertar Datos en la tabla Venta
INSERT INTO Venta (ID_Canción, Fecha_Venta, Precio, Cantidad) VALUES 
(1, '2023-10-01', 1.29, 3),   -- Venta de Bohemian Rhapsody
(3, '2023-10-02', 1.29, 2);   -- Venta de Heroes
2. Consultas SELECT
Aquí tienes ejemplos de consultas que podrías ejecutar para obtener información sobre los artistas, álbumes, canciones y ventas.

-- Consultar todos los artistas
SELECT * FROM Artista;

-- Consultar todos los álbumes de un artista específico, por ID
SELECT * FROM Álbum WHERE ID_Artista = 1;

-- Consultar todas las canciones de un álbum específico, por ID
SELECT * FROM Canción WHERE ID_Álbum = 1;

-- Consultar ventas por canción
SELECT c.Título AS Canción, v.Fecha_Venta, v.Precio, v.Cantidad 
FROM Venta v 
JOIN Canción c ON v.ID_Canción = c.ID_Canción;
-- Insertar Datos en la tabla Artista
INSERT INTO Artista (Nombre, Apellido, Fecha_Nacimiento, Nacionalidad) VALUES 
('Freddie', 'Mercury', '1946-09-05', 'Británico'),
('David', 'Bowie', '1947-01-08', 'Británico');

-- Insertar Datos en la tabla Género
INSERT INTO Género (Nombre_Género) VALUES 
('Rock'),
('Pop'),
('Jazz');

-- Insertar Datos en la tabla Álbum
INSERT INTO Álbum (Título, Fecha_Lanzamiento, ID_Artista, ID_Género) VALUES 
('A Night at the Opera', '1975-11-21', 1, 1),
('Heroes', '1977-09-14', 2, 1);

-- Insertar Datos en la tabla Productor
INSERT INTO Productor (Nombre, Apellido) VALUES 
('Brian', 'May'),
('Tony', 'Visconti');

-- Insertar Datos en la tabla Composición
INSERT INTO Composición (ID_Artista, ID_Produtor) VALUES 
(1, 1),  -- Freddie Mercury con Brian May como productor
(2, 2);  -- David Bowie con Tony Visconti como productor

-- Insertar Datos en la tabla Canción
INSERT INTO Canción (Título, Duración, ID_Álbum, ID_Composición) VALUES 
('Bohemian Rhapsody', '00:05:55', 1, 1),
('Under Pressure', '00:04:00', 1, 1),
('Heroes', '00:03:35', 2, 2);

-- Insertar Datos en la tabla Venta
INSERT INTO Venta (ID_Canción, Fecha_Venta, Precio, Cantidad) VALUES 
(1, '2023-10-01', 1.29, 3),   -- Venta de Bohemian Rhapsody
(3, '2023-10-02', 1.29, 2);   -- Venta de Heroes
-- Consultar todos los artistas
SELECT * FROM Artista;

-- Consultar todos los álbumes de un artista específico, por ID
SELECT * FROM Álbum WHERE ID_Artista = 1;

-- Consultar todas las canciones de un álbum específico, por ID
SELECT * FROM Canción WHERE ID_Álbum = 1;

-- Consultar ventas por canción
SELECT c.Título AS Canción, v.Fecha_Venta, v.Precio, v.Cantidad 
FROM Venta v 
JOIN Canción c ON v.ID_Canción = c.ID_Canción;
-- Actualizar el apellido de un artista
UPDATE Artista 
SET Apellido = 'Bulsara' 
WHERE ID_Artista = 1;

-- Actualizar el precio de una canción en una venta específica
UPDATE Venta 
SET Precio = 1.50 
WHERE ID_Venta = 1;
-- Eliminar una canción específica
DELETE FROM Canción 
WHERE ID_Canción = 2;  -- Eliminar "Under Pressure"

-- Eliminar un álbum
DELETE FROM Álbum 
WHERE ID_Álbum = 2;  -- Eliminar el álbum "Heroes"