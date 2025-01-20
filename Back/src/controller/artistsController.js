const { artists } = require("../../prisma/client");
const {
  createNewArtist,
  getArtistById,
  followArtist,
  unfollowArtist,
  getFollowArtistByUser,
  checkIfUserIsFollowing,
  isUserArtist,
  getArtistByUserId,
} = require("../model/artistsManager");
const { uploadArtistePicture } = require("../multer");
const multer = require("multer");

async function createArtist(req, res) {
  try {
    uploadArtistePicture.single("artistCover")(req, res, async function (err) {
      if (err instanceof multer.MulterError) {
        return res
          .status(400)
          .json({ status: 400, data: "Bad Request: File upload error." });
      } else if (err) {
        return res.status(500).json({ status: 500, data: "Internal Error" });
      }

      const artistCoverPath = req.file ? req.file.path : null;

      const { status, data } = await createNewArtist({
        ...req.body,
        artistCover: artistCoverPath,
      });

      res.status(status).send(data);
    });
  } catch (err) {
    console.error(err);
    res.status(500).json({
      message: "Une erreur s'est produite lors de la création de l'artiste.",
      err,
    });
  }
}

async function getArtists(req, res) {
  try {
    const artistsList = await artists.findMany();
    res.status(201).json(artistsList);
  } catch (err) {
    console.error("Erreur lors de la création de l'artiste :", err);
    res.status(500).json({
      message: "Une erreur s'est produite lors de la création de l'artiste.",
    });
  }
}

async function getOneArtist(req, res) {
  try {
    const { status, data } = await getArtistById(req.params.id);
    res.status(status).send(data);
  } catch (err) {
    res.status(500).json({
      message: "Une erreur s'est produite lors de l'obtention de l'artiste.",
      err,
    });
  }
}

async function getFollowArtistByUserController(req, res) {
  try {
    const { id } = req.params;

    const { status, data } = await getFollowArtistByUser(id);
    res.status(status).json({ message: data });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Erreur interne" });
  }
}

async function followArtistController(req, res) {
  try {
    const { users_id, artists_userId } = req.body;
    const { status, data } = await followArtist(users_id, artists_userId);
    res.status(status).json({ message: data });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Erreur interne" });
  }
}

async function unfollowArtistController(req, res) {
  try {
    const { users_id, artists_userId } = req.body;
    const { status, data } = await unfollowArtist(users_id, artists_userId);
    res.status(status).json({ message: data });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Erreur interne" });
  }
}

const isFollowing = async (req, res) => {
  try {
    const { users_id, artistId } = req.params;

    const isFollowing = await checkIfUserIsFollowing(users_id, artistId);

    res.status(200).json({ isFollowing });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Erreur interne" });
  }
};

const checkUserIsArtistController = async (req, res) => {
  try {
    const { id } = req.params;
    const user_id = id;

    const isArtist = await isUserArtist(user_id);

    return res.json({ isArtist });
  } catch (error) {
    console.error(error);
    return res.status(500).json({ status: 500, data: "Internal Error" });
  }
};

async function getArtistByUserIdController(req, res) {
  try {
    const { id } = req.params;
    const artist = await getArtistByUserId(id);
    if (!artist) {
      return res
        .status(404)
        .json({ message: "Artiste non trouvé pour cet utilisateur" });
    }
    return res.status(200).json({ artist });
  } catch (error) {
    console.error(error);
    return res.status(500).json({ message: "Erreur interne" });
  }
}

module.exports = {
  createArtist,
  getOneArtist,
  getArtists,
  getFollowArtistByUserController,
  followArtistController,
  unfollowArtistController,
  isFollowing,
  checkUserIsArtistController,
  getArtistByUserIdController,
};
