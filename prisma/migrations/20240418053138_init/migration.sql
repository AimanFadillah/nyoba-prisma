/*
  Warnings:

  - Added the required column `user_id` to the `Barang` table without a default value. This is not possible if the table is not empty.

*/
-- CreateTable
CREATE TABLE "User" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "nama" TEXT NOT NULL
);

-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Barang" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "nama" TEXT NOT NULL,
    "jumlah" INTEGER NOT NULL,
    "user_id" TEXT NOT NULL,
    CONSTRAINT "Barang_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Barang" ("id", "jumlah", "nama") SELECT "id", "jumlah", "nama" FROM "Barang";
DROP TABLE "Barang";
ALTER TABLE "new_Barang" RENAME TO "Barang";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
