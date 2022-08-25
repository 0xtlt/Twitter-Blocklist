-- CreateTable
CREATE TABLE `BlockList` (
    `id` VARCHAR(191) NOT NULL,
    `ownerId` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    UNIQUE INDEX `BlockList_ownerId_key`(`ownerId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `BlockListItem` (
    `id` VARCHAR(191) NOT NULL,
    `blockListId` VARCHAR(191) NOT NULL,
    `twitterAt` VARCHAR(191) NOT NULL,
    `twitterId` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `BlockList` ADD CONSTRAINT `BlockList_ownerId_fkey` FOREIGN KEY (`ownerId`) REFERENCES `User`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `BlockListItem` ADD CONSTRAINT `BlockListItem_blockListId_fkey` FOREIGN KEY (`blockListId`) REFERENCES `BlockList`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
