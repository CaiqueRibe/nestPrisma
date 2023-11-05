/*
  Warnings:

  - The primary key for the `Description` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `int` on the `Description` table. All the data in the column will be lost.
  - You are about to drop the column `availability` on the `Product` table. All the data in the column will be lost.
  - Added the required column `id` to the `Description` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Description` DROP PRIMARY KEY,
    DROP COLUMN `int`,
    ADD COLUMN `id` INTEGER NOT NULL AUTO_INCREMENT,
    ADD PRIMARY KEY (`id`);

-- AlterTable
ALTER TABLE `Product` DROP COLUMN `availability`,
    ADD COLUMN `availibility` ENUM('IN_STORE', 'ONLINE') NOT NULL DEFAULT 'IN_STORE';
