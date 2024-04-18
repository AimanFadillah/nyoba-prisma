-- CreateTable
CREATE TABLE "Kategori" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "nama" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "kategoriOnBarang" (
    "barang_id" TEXT NOT NULL,
    "kategori_id" TEXT NOT NULL,
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY ("barang_id", "kategori_id"),
    CONSTRAINT "kategoriOnBarang_barang_id_fkey" FOREIGN KEY ("barang_id") REFERENCES "Barang" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "kategoriOnBarang_kategori_id_fkey" FOREIGN KEY ("kategori_id") REFERENCES "Kategori" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);
