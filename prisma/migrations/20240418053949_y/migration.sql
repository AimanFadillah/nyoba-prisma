-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Barang" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "nama" TEXT NOT NULL,
    "jumlah" INTEGER NOT NULL,
    "user_id" TEXT NOT NULL,
    CONSTRAINT "Barang_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO "new_Barang" ("id", "jumlah", "nama", "user_id") SELECT "id", "jumlah", "nama", "user_id" FROM "Barang";
DROP TABLE "Barang";
ALTER TABLE "new_Barang" RENAME TO "Barang";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
