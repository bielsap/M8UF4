# M8UF4
test

Documentació del projecte.

*****Estructura de la base de dades*****

4 taules:
1. Canciones: id (PK), titulo, artista, genero, url
2. Listas: id (PK), nombre
3. Usuarios: id (PK), usuari, pass
4. cancion_lista_usuario:id (PK), id_cancion, id_lista, id_usuari (Aquesta taula fa de relació de les altres 3.
Alhora de fer les consultes, gracies a la taula de les relacions es poden obtenir les cançons en funció de l'usuri que es loga.

Exemple de consulta per obtenir les cançons:
 select c.titulo, c.artista, c.genero, c.url from canciones c, listas l, usuarios u, cancion_lista_usuario r where c.id = r.id_cancion and l.id = r.id_lista and u.id = r.usuari and r.usuari = 1

