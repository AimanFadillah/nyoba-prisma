const {PrismaClient} = require("@prisma/client")

const prisma = new PrismaClient()

// await prisma.user.create({
//     data:{
//         nama:"budi"
//     }
// })

// await prisma.user.update({
//     where:{id:"2501a8d4-6d64-4c7c-9931-30fc6539f430"},
//     data:{nama:"naruto"}
// })

// await prisma.user.delete({where:{id:"fb55d32b-2f8e-444f-8d72-f96823f1e51d"}})

// const barang = await prisma.barang.create({
//     data:{
//         nama:"apple",
//         jumlah:100,
//         user_id:"fb55d32b-2f8e-444f-8d72-f96823f1e51d"
//     }
// })

// const barang = await prisma.barang.update({
//     where:{
//         id:"966e1690-10ef-4dc6-8881-c63ee50e2428"
//     },
//     data:{
//         nama:"apple",
//         jumlah:100
//     }
// })

// console.log(barang)
