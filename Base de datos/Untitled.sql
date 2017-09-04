
insert into Persona(idPersona, nombre, apPaterno, apMaterno, nacimiento) values(3 , "Sandra" , "Gutierrez" , "Lopez" , '1990-05-23 10:34:09');

insert into Ficha(idFicha, folio, Persona_idPersona) values(2 , "570827" , 3);

#Lanzamos Joins 
select * from Ficha inner join Persona on Persona.idPersona = Ficha.Persona_idPersona;
#Descripcion: Obtiene todas las fichas relacionadas a un id persona

Select * from Ficha left join Persona on Persona.idPersona = Ficha.Persona_idPersona;

Select * from Ficha left join Persona on Persona.idPersona = Ficha.Persona_idPersona where Ficha.persona_idPersona is null;

#Select * from Ficha full outer  join Persona on Persona.idPersona = Ficha.Persona_idPersona;
#Outer Joins
#Outer joins, on the other hand, are for finding records that may not have a match in the other table. As such, you have to specify which side of the join is allowed to have a missing record.

select * from Ficha right join Persona on Persona.idpersona = Ficha.Persona_idPersona;

select * from Ficha right join Persona on Persona.idpersona = Ficha.Persona_idPersona where Persona.idPersona is null;

#select * from Ficha full outer join Persona on Persona.idPersona = Ficha.Persona_idPersona where Persona.idPersona is null or Ficha.idFicha is null;