
const songsHasAlbumsModel = require('../model/songManager');

const songsHasAlbumsController = {
  associateSongWithAlbum: async (songId, albumId, order) => {
    try {
      const data = {
        songs_id: songId,
        albums_id: albumId,
        order: order || 0, 
      };
      await songsHasAlbumsModel.create(data);
      return { status: 200, data: 'Association réussie' };
    } catch (error) {
      console.error(error);
      return { status: 500, data: 'Erreur interne' };
    }
  },
};

module.exports = songsHasAlbumsController;
