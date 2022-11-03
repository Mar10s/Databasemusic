use music;
select * from genre;
select * from bands;
select * from liveappearances;
select * from albums;
select * from songs;
select bands.name,albums.name from bands join albums on Bands.idBand = albums.Bands_idBand where bands.name="Metallica";
select songs.name,albums.name from albums join songs on albums.idAlbums = songs.Albums_idAlbums where albums.Bands_idBand=5;

select * from
genre join bands join albums join liveappearances join songs
on genre.id = bands.Genre_id 
and bands.idband=liveappearances.bands_idband
and bands.idband=albums.Bands_idBand
and albums.idAlbums = songs.Albums_idAlbums;

/*Transaction is a way to group statements,check what the output will be before commiting(especially when working with others in the same database) and also check for errors in your code and correct them*/
START TRANSACTION;
insert into genre(Type,Region,Year) /*Here we see what the transaction will output if we decide to commit  */
values ("Jazz","USA",1920),
("Country","USA",1922);
select * from genre;
ROLLBACK;

delete from genre where ID=5;
