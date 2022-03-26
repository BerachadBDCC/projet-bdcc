/*
  Warnings:

  - You are about to drop the `_articletocategory` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `_articletocategory` DROP FOREIGN KEY `_articletocategory_ibfk_1`;

-- DropForeignKey
ALTER TABLE `_articletocategory` DROP FOREIGN KEY `_articletocategory_ibfk_2`;

-- DropTable
DROP TABLE `_articletocategory`;

-- CreateTable
CREATE TABLE `categories_articles` (
    `articleId` INTEGER NOT NULL,
    `categoryId` INTEGER NOT NULL,

    PRIMARY KEY (`articleId`, `categoryId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `categories_articles` ADD CONSTRAINT `categories_articles_articleId_fkey` FOREIGN KEY (`articleId`) REFERENCES `articles`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `categories_articles` ADD CONSTRAINT `categories_articles_categoryId_fkey` FOREIGN KEY (`categoryId`) REFERENCES `categories`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
