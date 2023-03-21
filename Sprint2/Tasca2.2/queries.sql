-- Tenim les taules producto i fabricador, cadascuna amb els següents camps:
-- producto (codigo, nombre, precio, codigo_fabricante)
-- fabricante (codigo, nombre)
-- El camp 'codigo_fabricante' de l'entitat producto es relaciona amb el camp 'codi' de l'entitat fabricante.
-- Si us plau, efectua les següents consultes:

USE tienda;


-- 1. Llista el nom de tots els productes que hi ha en la taula producto.

SELECT nombre FROM producto;

-- 2. Llista els noms i els preus de tots els productes de la taula producto.

SELECT nombre,precio FROM producto;

-- 3. Llista totes les columnes de la taula producto.

SELECT * FROM producto;

-- 4. Llista el nom dels productes, el preu en euros i el preu en dòlars estatunidencs (USD).

SELECT nombre,precio, precio*1.1 as USD FROM producto;

-- 5.Llista el nom dels productes, el preu en euros i el preu en dòlars estatunidencs (USD). Utilitza els següents àlies per a les columnes: nom de producto, euros, dòlars.

SELECT nombre as nombre_producto,precio as precio_Euros, precio*1.1 as USD_price FROM producto;

-- 6. Llista els noms i els preus de tots els productes de la taula producto, convertint els noms a majúscula.

SELECT UPPER(nombre) as nombre_producto,precio as precio_Euros FROM producto;

-- 7. Llista els noms i els preus de tots els productes de la taula producto, convertint els noms a minúscula.

SELECT LOWER(nombre) as nombre_producto,precio as precio_Euros FROM producto;

-- 8. Llista el nom de tots els fabricants en una columna, i en una altra columna obtingui en majúscules els dos primers caràcters del nom del fabricant.

SELECT nombre, UPPER(left(nombre,2)) as Inicio_fabricante FROM fabricante;

-- 9. Llista els noms i els preus de tots els productes de la taula producto, arrodonint el valor del preu.

SELECT nombre, ROUND(precio) FROM producto;

-- 10.Llista els noms i els preus de tots els productes de la taula producto, truncant el valor del preu per a mostrar-lo sense cap xifra decimal.

SELECT nombre, truncate(precio,0) FROM producto;

-- 11.Llista el codi dels fabricants que tenen productes en la taula producto.

SELECT codigo FROM producto;

-- 12. Llista el codi dels fabricants que tenen productes en la taula producto, eliminant els codis que apareixen repetits.

SELECT DISTINCT codigo FROM producto;

-- 13. Llista els noms dels fabricants ordenats de manera ascendent.

SELECT nombre from fabricante ORDER BY nombre;

-- 14. Llista els noms dels fabricants ordenats de manera descendent.

SELECT nombre from fabricante ORDER BY nombre DESC;

-- 15. Llista els noms dels productes ordenats, en primer lloc, pel nom de manera ascendent i, en segon lloc, pel preu de manera descendent.
SELECT nombre from producto ORDER BY nombre,precio DESC;

-- 16. Retorna una llista amb les 5 primeres files de la taula fabricante.

SELECT * FROM fabricante LIMIT 5;

-- 17. Retorna una llista amb 2 files a partir de la quarta fila de la taula fabricante. La quarta fila també s'ha d'incloure en la resposta.

SELECT * FROM fabricante WHERE codigo>3 LIMIT 3;

-- 18. Llista el nom i el preu del producte més barat. (Utilitza solament les clàusules ORDER BY i LIMIT). NOTA: Aquí no podria usar MIN(preu), necessitaria GROUP BY.

SELECT nombre,precio FROM producto ORDER BY precio LIMIT 1;

-- 19. Llista el nom i el preu del producte més car. (Utilitza solament les clàusules ORDER BY i LIMIT). NOTA: Aquí no podria usar MAX(preu), necessitaria GROUP BY.

SELECT nombre,precio FROM producto ORDER BY precio DESC LIMIT 1;

-- 20. Llista el nom de tots els productes del fabricant el codi de fabricant del qual és igual a 2.

SELECT nombre FROM producto WHERE codigo_fabricante= 2;

-- 21. Retorna una llista amb el nom del producte, preu i nom de fabricant de tots els productes de la base de dades.

SELECT p.nombre as nombre_producto,precio,f.nombre as fabricante FROM producto p
JOIN fabricante f
ON f.codigo = p.codigo_fabricante;

-- 22. Retorna una llista amb el nom del producte, preu i nom de fabricant de tots els productes de la base de dades. Ordena el resultat pel nom del fabricant, per ordre alfabètic.

SELECT p.nombre as nombre_producto,precio,f.nombre as fabricante FROM producto p
JOIN fabricante f
ON f.codigo = p.codigo_fabricante
ORDER BY f.nombre;


-- 23. Retorna una llista amb el codi del producte, nom del producte, codi del fabricador i nom del fabricador, de tots els productes de la base de dades.

SELECT p.codigo as codigo_producto,p.nombre as nombre_producto,f.codigo as codigo_fabricante ,f.nombre as nombre_fabricante FROM fabricante f
JOIN producto p
ON f.codigo = p.codigo_fabricante;

-- 24. Retorna el nom del producte, el seu preu i el nom del seu fabricant, del producte més barat.

SELECT p.nombre as producto_mas_barato, p.precio, f.nombre as nombre_fabricante FROM fabricante f
JOIN producto p
ON f.codigo = p.codigo_fabricante
ORDER BY precio LIMIT 1;

-- 25. Retorna el nom del producte, el seu preu i el nom del seu fabricant, del producte més car.

SELECT p.nombre as producto_mas_caro, p.precio, f.nombre as nombre_fabricante FROM fabricante f
JOIN producto p
ON f.codigo = p.codigo_fabricante
ORDER BY precio DESC LIMIT 1;

-- 26. Retorna una llista de tots els productes del fabricant Lenovo.

SELECT p.nombre as nombre_producto FROM fabricante f
JOIN producto p
ON f.codigo = p.codigo_fabricante
WHERE f.nombre ='Lenovo';

-- 27. Retorna una llista de tots els productes del fabricant Crucial que tinguin un preu major que 200€.

SELECT p.nombre as nombre_producto FROM fabricante f
JOIN producto p
ON f.codigo = p.codigo_fabricante
WHERE f.nombre ='Crucial' AND p.precio>200;

-- 28. Retorna un llistat amb tots els productes dels fabricants Asus, Hewlett-Packardy Seagate. Sense utilitzar l'operador IN.

SELECT p.nombre as nombre_producto FROM fabricante f
JOIN producto p
ON f.codigo = p.codigo_fabricante
WHERE f.nombre ='Asus' OR f.nombre ='Hewlett-Packard' OR f.nombre='Seagate';

-- 29. Retorna un llistat amb tots els productes dels fabricants Asus, Hewlett-Packardy Seagate. Fent servir l'operador IN.

SELECT p.nombre as nombre_producto FROM fabricante f
JOIN producto p
ON f.codigo = p.codigo_fabricante
WHERE f.nombre IN ('Asus','Hewlett-Packard','Seagate');


-- 30. Retorna un llistat amb el nom i el preu de tots els productes dels fabricants el nom dels quals acabi per la vocal e.

SELECT p.nombre as nombre_producto, p.precio FROM fabricante f
JOIN producto p
ON f.codigo = p.codigo_fabricante
WHERE f.nombre LIKE '%e';


-- 31. Retorna un llistat amb el nom i el preu de tots els productes el nom de fabricant dels quals contingui el caràcter w en el seu nom.

SELECT p.nombre as nombre_producto, p.precio FROM fabricante f
JOIN producto p
ON f.codigo = p.codigo_fabricante
WHERE f.nombre LIKE '%w%';

-- 32.Retorna un llistat amb el nom de producte, preu i nom de fabricant, de tots els productes que tinguin un preu major o igual a 180 €. Ordena el resultat, en primer lloc, pel preu (en ordre descendent) i, en segon lloc, pel nom (en ordre ascendent).

SELECT p.nombre as nombre_producto, p.precio,f.nombre as nombre_fabricante FROM fabricante f
JOIN producto p
ON f.codigo = p.codigo_fabricante
WHERE p.precio>=180
ORDER BY p.precio DESC,p.nombre;

-- 33. Retorna un llistat amb el codi i el nom de fabricant, solament d'aquells fabricants que tenen productes associats en la base de dades.

SELECT p.codigo_fabricante,f.nombre FROM fabricante f
JOIN producto p
ON f.codigo = p.codigo_fabricante
GROUP BY p.codigo_fabricante;


-- 34. Retorna un llistat de tots els fabricants que existeixen en la base de dades, juntament amb els productes que té cadascun d'ells. El llistat haurà de mostrar també aquells fabricants que no tenen productes associats.

SELECT * FROM fabricante f
LEFT JOIN producto p
ON f.codigo = p.codigo_fabricante;


-- 35. Retorna un llistat on només apareguin aquells fabricants que no tenen cap producte associat.

SELECT * FROM fabricante f
LEFT JOIN producto p
ON f.codigo = p.codigo_fabricante
WHERE p.codigo IS NULL;

-- 36. Retorna tots els productes del fabricador Lenovo. (Sense utilitzar INNER JOIN).

SELECT p.nombre FROM fabricante f
LEFT JOIN producto p
ON f.codigo = p.codigo_fabricante
WHERE f.nombre ='Lenovo';


-- 37. Retorna totes les dades dels productes que tenen el mateix preu que el producte més car del fabricant Lenovo. (Sense usar INNER JOIN).

SELECT * FROM producto p
WHERE p.precio LIKE(SELECT MAX(p.precio) FROM producto p
LEFT JOIN fabricante f
ON p.codigo_fabricante = f.codigo
WHERE f.nombre ='Lenovo');

-- 38. Llista el nom del producte més car del fabricant Lenovo.

SELECT p.nombre FROM producto p
WHERE p.precio LIKE(SELECT MAX(p.precio) FROM producto p
LEFT JOIN fabricante f
ON p.codigo_fabricante = f.codigo
WHERE f.nombre ='Lenovo');


-- 39. Llista el nom del producte més barat del fabricant Hewlett-Packard.

SELECT p.nombre FROM producto p
WHERE p.precio LIKE(SELECT MIN(p.precio) FROM producto p
LEFT JOIN fabricante f
ON p.codigo_fabricante = f.codigo
WHERE f.nombre ='Hewlett-Packard');

-- 40. Retorna tots els productes de la base de dades que tenen un preu major o igual al producte més car del fabricant Lenovo.

SELECT p.nombre FROM producto p
WHERE p.precio >=(SELECT MAX(p.precio) FROM producto p
LEFT JOIN fabricante f
ON p.codigo_fabricante = f.codigo
WHERE f.nombre ='Lenovo') AND NOT p.codigo_fabricante =2;

-- 41. Llesta tots els productes del fabricant Asus que tenen un preu superior al preu mitjà de tots els seus productes.
SELECT p.nombre FROM producto p
WHERE p.precio >(SELECT AVG(p.precio) FROM producto p
LEFT JOIN fabricante f
ON p.codigo_fabricante = f.codigo
WHERE f.nombre ='Asus');

-- Base de dades Universidad

-- Si us plau, descàrrega la base de dades del fitxer schema_universidad.sql, visualitza el diagrama E-R en un editor i efectua les següents consultes:

USE universidad;

-- 42. Retorna un llistat amb el primer cognom, segon cognom i el nom de tots els/les alumnes. El llistat haurà d'estar ordenat alfabèticament de menor a major pel primer cognom, segon cognom i nom.

SELECT persona.apellido1,persona.apellido2,persona.nombre  FROM persona
WHERE tipo ='alumno'
ORDER BY persona.apellido1,persona.apellido2,persona.nombre;


-- 43. Esbrina el nom i els dos cognoms dels alumnes que no han donat d'alta el seu número de telèfon en la base de dades.

SELECT persona.apellido1,persona.apellido2,persona.nombre  FROM persona
WHERE tipo ='alumno' AND persona.telefono IS NULL;


-- 44. Retorna el llistat dels alumnes que van néixer en 1999.
SELECT apellido1,apellido2,nombre FROM persona
WHERE tipo ='alumno' AND fecha_nacimiento BETWEEN '1999-01-01' AND '1999-12-31';

-- 45. Retorna el llistat de professors/es que no han donat d'alta el seu número de telèfon en la base de dades i a més el seu NIF acaba en K.
SELECT apellido1,apellido2,nombre  FROM persona
WHERE tipo ='profesor' AND telefono IS NULL AND nif LIKE '%K';

-- 46. Retorna el llistat de les assignatures que s'imparteixen en el primer quadrimestre, en el tercer curs del grau que té l'identificador 7.

SELECT nombre  FROM asignatura
WHERE cuatrimestre ='1' AND curso='3' AND id_grado='7';

-- 47. Retorna un llistat dels professors/es juntament amb el nom del departament al qual estan vinculats. El llistat ha de retornar quatre columnes, primer cognom, segon cognom, nom i nom del departament. El resultat estarà ordenat alfabèticament de menor a major pels cognoms i el nom.

SELECT p.nombre, p.apellido1,d.nombre as departamento_nombre FROM persona p
JOIN profesor pr
ON pr.id_profesor = p.id
JOIN departamento d
ON d.id = pr.id_departamento;


-- 48. Retorna un llistat amb el nom de les assignatures, any d'inici i any de fi del curs escolar de l'alumne/a amb NIF 26902806M.

SELECT a.nombre,ce.anyo_inicio,ce.anyo_fin FROM persona p
JOIN alumno_se_matricula_asignatura asma
ON asma.id_alumno = p.id
JOIN asignatura a 
ON a.id = asma.id_asignatura
JOIN curso_escolar ce
ON ce.id = asma.id_curso_escolar
WHERE p.nif = '26902806M';

-- 49. Retorna un llistat amb el nom de tots els departaments que tenen professors/es que imparteixen alguna assignatura en el Grau en Enginyeria Informàtica (Pla 2015).

SELECT d.nombre FROM departamento d
JOIN profesor pr 
ON pr.id_departamento = d.id
JOIN persona p 
ON pr.id_profesor = p.id
JOIN asignatura a
ON pr.id_profesor = a.id_profesor 
JOIN grado g
ON a.id_grado = g.id
WHERE g.id='4'
GROUP BY d.nombre;

-- 50. Retorna un llistat amb tots els alumnes que s'han matriculat en alguna assignatura durant el curs escolar 2018/2019.

SELECT p.nombre FROM persona p
JOIN alumno_se_matricula_asignatura asma
ON asma.id_alumno = p.id
WHERE asma.id_curso_escolar ='5'
GROUP BY p.nombre;

-- Resol les 6 següents consultes utilitzant les clàusules LEFT JOIN i RIGHT JOIN.

-- 51. Retorna un llistat amb els noms de tots els professors/es i els departaments que tenen vinculats. El llistat també ha de mostrar aquells professors/es que no tenen cap departament associat. El llistat ha de retornar quatre columnes, nom del departament, primer cognom, segon cognom i nom del professor/a. El resultat estarà ordenat alfabèticament de menor a major pel nom del departament, cognoms i el nom.

SELECT d.nombre, p.apellido1,p.apellido2,p.nombre FROM persona p
RIGHT JOIN profesor pr 
ON p.id = pr.id_profesor
RIGHT JOIN departamento d
ON d.id = pr.id_departamento;

-- 52. Retorna un llistat amb els professors/es que no estan associats a un departament.

SELECT p.apellido1,p.apellido2,p.nombre FROM persona p
LEFT JOIN profesor pr 
ON p.id = pr.id_profesor
LEFT JOIN departamento d
ON d.id = pr.id_departamento
WHERE p.tipo = 'profesor' AND pr.id_profesor IS NULL;

-- 53. Retorna un llistat amb els departaments que no tenen professors/es associats.

SELECT d.nombre FROM departamento d 
LEFT JOIN profesor pr 
ON d.id = pr.id_departamento
WHERE pr.id_departamento IS NULL;

-- 54 .Retorna un llistat amb els professors/es que no imparteixen cap assignatura.

SELECT p.nombre,p.apellido1 FROM persona p
INNER JOIN profesor pr 
ON pr.id_profesor = p.id
LEFT JOIN asignatura a 
ON pr.id_profesor = a.id_profesor
WHERE a.id_profesor IS NULL;

-- 55. Retorna un llistat amb les assignatures que no tenen un professor/a assignat.

SELECT a.nombre FROM asignatura a
LEFT JOIN profesor pr 
ON pr.id_profesor = a.id_profesor
WHERE a.id_profesor IS NULL;

-- 56. Retorna un llistat amb tots els departaments que no han impartit assignatures en cap curs escolar.

LEFT JOIN profesor pr 
ON pr.id_departamento = d.id
LEFT JOIN asignatura a 
ON a.id_profesor = pr.id_profesor
WHERE a.id IS NULL
GROUP BY d.nombre;

-- Consultes resum:

-- 57. Retorna el nombre total d'alumnes que hi ha.

SELECT COUNT(id) as 'Total alumnos' FROM persona
WHERE tipo = 'alumno';


-- 58. Calcula quants alumnes van néixer en 1999.

SELECT COUNT(id) as 'Total alumnos' FROM persona
WHERE tipo = 'alumno' AND fecha_nacimiento BETWEEN '1999-01-01' AND '1999-12-31';

-- 59. Calcula quants professors/es hi ha en cada departament. El resultat només ha de mostrar dues columnes, una amb el nom del departament i una altra amb el nombre de professors/es que hi ha en aquest departament. El resultat només ha d'incloure els departaments que tenen professors/es associats i haurà d'estar ordenat de major a menor pel nombre de professors/es.

SELECT d.nombre AS departamento , COUNT(id_profesor) as 'Total_profesores' FROM profesor pr
RIGHT JOIN departamento d
ON d.id = pr.id_departamento
GROUP BY d.nombre
HAVING COUNT(id_profesor)>0
ORDER BY total_profesores DESC;

-- 60. Retorna un llistat amb tots els departaments i el nombre de professors/es que hi ha en cadascun d'ells. Tingui en compte que poden existir departaments que no tenen professors/es associats. Aquests departaments també han d'aparèixer en el llistat.

SELECT d.nombre AS departamento , COUNT(id_profesor) as 'Total_profesores' FROM profesor pr
RIGHT JOIN departamento d
ON d.id = pr.id_departamento
GROUP BY d.nombre
ORDER BY total_profesores DESC;

-- 61. Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun. Tingues en compte que poden existir graus que no tenen assignatures associades. Aquests graus també han d'aparèixer en el llistat. El resultat haurà d'estar ordenat de major a menor pel nombre d'assignatures.

SELECT g.nombre as 'Grados Nombre', COUNT(a.id) as Numero_Asignaturas FROM grado g
LEFT JOIN asignatura a 
ON g.id = a.id_grado
GROUP BY g.id 
ORDER BY Numero_Asignaturas DESC;

-- 62. Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun, dels graus que tinguin més de 40 assignatures associades.

SELECT g.nombre as 'Grados Nombre', COUNT(a.id) as Numero_Asignaturas FROM grado g
LEFT JOIN asignatura a 
ON g.id = a.id_grado
GROUP BY g.id 
HAVING Numero_Asignaturas >=40
ORDER BY Numero_Asignaturas DESC;

-- 63. Retorna un llistat que mostri el nom dels graus i la suma del nombre total de crèdits que hi ha per a cada tipus d'assignatura. El resultat ha de tenir tres columnes: nom del grau, tipus d'assignatura i la suma dels crèdits de totes les assignatures que hi ha d'aquest tipus.

SELECT g.nombre ,SUM(a.creditos) as Numero_Creditos, a.tipo FROM grado g
RIGHT JOIN asignatura a
ON g.id = a.id_grado
GROUP BY g.nombre,a.tipo;



-- 64. Retorna un llistat que mostri quants alumnes s'han matriculat d'alguna assignatura en cadascun dels cursos escolars. El resultat haurà de mostrar dues columnes, una columna amb l'any d'inici del curs escolar i una altra amb el nombre d'alumnes matriculats.

SELECT ce.anyo_inicio,COUNT(asma.id_alumno) as 'Alumnos matriculados' from alumno_se_matricula_asignatura asma
RIGHT JOIN curso_escolar ce
ON ce.id = asma.id_curso_escolar
GROUP BY ce.anyo_inicio;

-- 65. Retorna un llistat amb el nombre d'assignatures que imparteix cada professor/a. El llistat ha de tenir en compte aquells professors/es que no imparteixen cap assignatura. El resultat mostrarà cinc columnes: id, nom, primer cognom, segon cognom i nombre d'assignatures. El resultat estarà ordenat de major a menor pel nombre d'assignatures.


SELECT p.id , p.nombre,p.apellido1, p.apellido2,COUNT(a.id_profesor) as Asignaturas_Profesor from persona p
RIGHT JOIN profesor pr
ON pr.id_profesor = p.id
LEFT JOIN asignatura a
ON a.id_profesor =pr.id_profesor
GROUP BY  p.id , p.nombre,p.apellido1, p.apellido2
ORDER BY Asignaturas_Profesor DESC;

-- 66. Retorna totes les dades de l'alumne/a més jove.

SELECT * FROM persona
WHERE tipo = 'alumno'
ORDER BY fecha_nacimiento DESC
LIMIT 1;

-- 67. Retorna un llistat amb els professors/es que tenen un departament associat i que no imparteixen cap assignatura.

SELECT p.nombre FROM profesor pr 
JOIN departamento d ON pr.id_departamento = d.id 
LEFT JOIN asignatura a ON pr.id_profesor = a.id_profesor 
INNER JOIN persona p ON pr.id_profesor = p.id 
WHERE pr.id_departamento IS NOT NULL AND a.id_profesor IS NULL;
