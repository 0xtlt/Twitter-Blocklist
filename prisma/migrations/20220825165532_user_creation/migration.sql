-- CreateTable
CREATE TABLE `User` (
    `id` VARCHAR(191) NOT NULL,
    `sessionToken` VARCHAR(191) NOT NULL,
    `twitterAccessToken` VARCHAR(191) NOT NULL,
    `twitterAccessTokenSecret` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    UNIQUE INDEX `User_twitterAccessToken_key`(`twitterAccessToken`),
    UNIQUE INDEX `User_twitterAccessTokenSecret_key`(`twitterAccessTokenSecret`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
