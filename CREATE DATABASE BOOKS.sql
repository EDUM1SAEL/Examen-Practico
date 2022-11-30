CREATE DATABASE BOOKS 
CREATE TABLE libros1(
    cod_libro varchar(6) NOT NULL PRIMARY KEY,
    cod_autor varchar(4),
    cod_edit varchar(5),
    titulo varchar(15),
    numero_pag int(255),
    tamaño float(5,2),
    precio float (5,2),
    estado varchar(20),
    edicion char(15)
    
    );
    CREATE TABLE editoriales (
        cod_edit varchar(5) NOT NULL  PRIMARY KEY,
        nombre varchar(15),
        direccion bigint(30),
        tel int(8),
        email bigint(30)        
        );
    CREATE TABLE autores(        
  		cod_autor varchar(4) NOT NULL PRIMARY KEY,
        apellido varchar(10),
        nombre_autor varchar(15),
        pais_origen varchar(15)
        );
    CREATE TABLE pais(
        cod_pais varchar (15)NOT NULL  PRIMARY KEY,
        nombre_pais varchar(15)
        );
        
    CREATE TABLE estados(
         cod_estado varchar(20) NOT NULL  PRIMARY KEY,
        nombre_estado varchar(20)
    );
    CREATE TABLE prestamos (
    cod_prestamo varchar(5) NOT NULL PRIMARY KEY,
    cod_libro varchar(6),
    carne varchar(10),
    fecha_de_prestamo date,
    fecha_devolucion date,
    cod_empleado varchar(6)
     );
 CREATE TABLE estudiantes(
     carne varchar(10) NOT NULL PRIMARY KEY,
     nombre varchar (15),
     apellido varchar (15),
     direccion bigint(30),
     tel int (8),
     email bigint(30),
     fecha_nac date,
     cod_grado varchar(5)
     );
  CREATE TABLE empleados(
      cod_empleado varchar (6) NOT NULL PRIMARY KEY,
      nombre varchar(15),
      apellido varchar(15),
      direccion bigint(30),
      email bigint(30)
      );
 CREATE TABLE grados(
     cod_grado varchar(5) NOT NULL PRIMARY KEY,
     nombre varchar(15)
     )
        
        ALTER TABLE libros1
  ADD CONSTRAINT pk_fk_cod_edit FOREIGN KEY (cod_edit) REFERENCES editoriales (cod_edit) ON DELETE CASCADE ON UPDATE CASCADE;
  
  
  ALTER TABLE autores
  ADD CONSTRAINT pk_fk_cod_autor FOREIGN KEY (cod_autor) REFERENCES libros1 (cod_autor) ON DELETE CASCADE ON UPDATE CASCADE;
  ALTER TABLE autores
   ADD CONSTRAINT pk_fk_pais_origen FOREIGN KEY (pais_origen) REFERENCES pais (cod_pais) ON DELETE CASCADE ON UPDATE CASCADE;
   ALTER TABLE libros1 
   ADD CONSTRAINT pk_fk_estado FOREIGN KEY (estado) REFERENCES estados (cod_estado) ON DELETE CASCADE ON UPDATE CASCADE;
  ALTER TABLE prestamos
   ADD CONSTRAINT pk_fk_carne FOREIGN KEY (carne) REFERENCES estudiantes (carne) ON DELETE CASCADE ON UPDATE CASCADE;