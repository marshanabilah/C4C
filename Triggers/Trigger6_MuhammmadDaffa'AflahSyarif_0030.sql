/*
    Bersama Sequence6 id_barang secara otomatis berurutan saat penambahan data baru
    
    Muhammmad Daffa' Aflah Syarif
    05111840000030
    Manajemen Basis Data E 2020
*/

create or replace trigger insert_barang
before insert on barang
for each row
declare
    new_id varchar(4);
    curr_id number;
begin
    if inserting and :new.id_brg is null then
        curr_id := id_barang.nextval;
        :new.id_brg := new_id;
    end if;
end;