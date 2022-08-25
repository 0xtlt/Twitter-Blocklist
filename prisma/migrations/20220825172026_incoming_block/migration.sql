-- CreateTable
CREATE TABLE `IncomingBlock` (
    `id` VARCHAR(191) NOT NULL,
    `userId` VARCHAR(191) NOT NULL,
    `blockListItemId` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `IncomingBlock` ADD CONSTRAINT `IncomingBlock_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `IncomingBlock` ADD CONSTRAINT `IncomingBlock_blockListItemId_fkey` FOREIGN KEY (`blockListItemId`) REFERENCES `BlockListItem`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
