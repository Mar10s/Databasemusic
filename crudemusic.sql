use music;
select * from genre;
select * from bands;
select * from liveappearances;
select * from albums;
select * from songs;
select bands.name,albums.name from bands join albums on Bands.idBand = albums.Bands_idBand where bands.name="Metallica";
select songs.name,albums.name from albums join songs on albums.idAlbums = songs.Albums_idAlbums where albums.Bands_idBand=5;