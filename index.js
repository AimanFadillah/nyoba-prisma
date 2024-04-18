const {PrismaClient} = require("@prisma/client")

const prisma = new PrismaClient()

const buah = await prisma.barang.findFirst({include:{kategori:{include:{kategori:true}}}})
console.log(buah.kategori)

// await prisma.kategoriOnBarang.create({
//     data:{
//         barang_id:"94499595-8636-47df-9d59-5c1d9a05daa4",
//         kategori_id:"7b9b9eed-e06a-433b-83f1-dba718334de1",
//     }
// })

// await prisma.kategori.create({
//     data:{nama:"sehat"}
// })

// const user = await prisma.user.findFirst({where:{id:"8bf917dc-3c8b-4c67-8578-bedbca79e69e"},include:{barangs:true}})
// console.log(user)

// await prisma.user.create({
//     data:{
//         nama:"budi"
//     }
// })

// await prisma.user.update({
//     where:{id:"2501a8d4-6d64-4c7c-9931-30fc6539f430"},
//     data:{nama:"naruto"}
// })

// // await prisma.user.delete({where:{id:"fb55d32b-2f8e-444f-8d72-f96823f1e51d"}})

// const barang = await prisma.barang.create({
//     data:{
//         nama:"jeruk",
//         jumlah:12,
//         user_id:"8bf917dc-3c8b-4c67-8578-bedbca79e69e"
//     }
// })

