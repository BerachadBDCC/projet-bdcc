/*
  Warnings:

  - You are about to drop the column `titre` on the `articles` table. All the data in the column will be lost.
  - Added the required column `title` to the `articles` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `articles` DROP COLUMN `titre`,
    ADD COLUMN `title` VARCHAR(191) NOT NULL;
