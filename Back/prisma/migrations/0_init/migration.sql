-- CreateTable
CREATE TABLE `albums` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(250) NOT NULL,
    `albumCover` VARCHAR(500) NOT NULL,
    `genres_id` INTEGER NOT NULL,
    `artistsUserId` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `artists` (
    `userId` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `users_id` INTEGER NOT NULL,
    `artistCover` VARCHAR(500) NOT NULL,

    PRIMARY KEY (`userId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `artists_has_songs` (
    `artists_userId` INTEGER NOT NULL,
    `songs_id` INTEGER NOT NULL,

    PRIMARY KEY (`artists_userId`, `songs_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `follow` (
    `users_id` INTEGER NOT NULL,
    `artists_userId` INTEGER NOT NULL,

    PRIMARY KEY (`users_id`, `artists_userId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `genres` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `categoryName` VARCHAR(50) NOT NULL,
    `categoryColor` VARCHAR(45) NOT NULL,
    `categoryPictures` VARCHAR(45) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `user_likes` (
    `users_id` INTEGER NOT NULL,
    `songs_id` INTEGER NOT NULL,

    PRIMARY KEY (`users_id`, `songs_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `playlistSongs` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `songId` INTEGER NOT NULL,
    `playlistId` INTEGER NOT NULL,
    `playlistOrder` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `playlists` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `users_id` INTEGER NOT NULL,
    `playlistCover` VARCHAR(45) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `playlists_has_users` (
    `playlists_id` INTEGER NOT NULL,
    `users_id` INTEGER NOT NULL,

    PRIMARY KEY (`playlists_id`, `users_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `songs` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(250) NOT NULL,
    `albumName` VARCHAR(191) NOT NULL,
    `duration` VARCHAR(8) NOT NULL,
    `path` VARCHAR(500) NOT NULL,
    `albumOrder` INTEGER NOT NULL,
    `plays` INTEGER NOT NULL,
    `genres_id` INTEGER NOT NULL,
    `songCover` VARCHAR(45) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `songs_has_albums` (
    `songs_id` INTEGER NOT NULL,
    `albums_id` INTEGER NOT NULL,
    `order` INTEGER NOT NULL,

    PRIMARY KEY (`songs_id`, `albums_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `songs_has_playlistSongs` (
    `songs_id` INTEGER NOT NULL,
    `playlistSongs_id` INTEGER NOT NULL,

    PRIMARY KEY (`songs_id`, `playlistSongs_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `users` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(25) NOT NULL,
    `email` VARCHAR(200) NOT NULL,
    `password` VARCHAR(500) NOT NULL,
    `profile_pic` VARCHAR(500) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `albums` ADD CONSTRAINT `fk_albums_genres1` FOREIGN KEY (`genres_id`) REFERENCES `genres`(`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `albums` ADD CONSTRAINT `albums_artistsUserId_fkey` FOREIGN KEY (`artistsUserId`) REFERENCES `artists`(`userId`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `artists` ADD CONSTRAINT `fk_artists_users1` FOREIGN KEY (`users_id`) REFERENCES `users`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `artists_has_songs` ADD CONSTRAINT `fk_artists_has_songs_artists1` FOREIGN KEY (`artists_userId`) REFERENCES `artists`(`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `artists_has_songs` ADD CONSTRAINT `fk_artists_has_songs_songs1` FOREIGN KEY (`songs_id`) REFERENCES `songs`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `follow` ADD CONSTRAINT `fk_users_has_artists_artists1` FOREIGN KEY (`artists_userId`) REFERENCES `artists`(`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `follow` ADD CONSTRAINT `fk_users_has_artists_users1` FOREIGN KEY (`users_id`) REFERENCES `users`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `user_likes` ADD CONSTRAINT `fk_users_has_songs_songs1` FOREIGN KEY (`songs_id`) REFERENCES `songs`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `user_likes` ADD CONSTRAINT `fk_users_has_songs_users1` FOREIGN KEY (`users_id`) REFERENCES `users`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `playlists` ADD CONSTRAINT `fk_playlists_users1` FOREIGN KEY (`users_id`) REFERENCES `users`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `playlists_has_users` ADD CONSTRAINT `fk_playlists_has_users_playlists1` FOREIGN KEY (`playlists_id`) REFERENCES `playlists`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `playlists_has_users` ADD CONSTRAINT `fk_playlists_has_users_users1` FOREIGN KEY (`users_id`) REFERENCES `users`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `songs` ADD CONSTRAINT `fk_songs_genres1` FOREIGN KEY (`genres_id`) REFERENCES `genres`(`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `songs_has_albums` ADD CONSTRAINT `songs_has_albums_songs_id_fkey` FOREIGN KEY (`songs_id`) REFERENCES `songs`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `songs_has_albums` ADD CONSTRAINT `songs_has_albums_albums_id_fkey` FOREIGN KEY (`albums_id`) REFERENCES `albums`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `songs_has_playlistSongs` ADD CONSTRAINT `fk_songs_has_playlistSongs_playlistSongs1` FOREIGN KEY (`playlistSongs_id`) REFERENCES `playlistSongs`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `songs_has_playlistSongs` ADD CONSTRAINT `fk_songs_has_playlistSongs_songs` FOREIGN KEY (`songs_id`) REFERENCES `songs`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

