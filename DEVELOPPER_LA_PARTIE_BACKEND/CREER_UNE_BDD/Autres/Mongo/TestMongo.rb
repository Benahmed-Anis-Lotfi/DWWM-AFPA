Lancement via Terminal

mangosh

-- Requetes création, insertion, suppression via drop()

test> use jarditou
switched to db jarditou
jarditou> db.createCollection("rayon")
{ ok: 1 }
jarditou> db.rayon.remove()
DeprecationWarning: Collection.remove() is deprecated. Use deleteOne, deleteMany, findOneAndDelete, or bulkWrite.
MongoshInvalidInputError: [COMMON-10001] Missing required argument at position 0 (Collection.remove)
jarditou> db.rayon.remove()
MongoshInvalidInputError: [COMMON-10001] Missing required argument at position 0 (Collection.remove)
jarditou> db.rayon.remove("rayon")
MongoServerError: BSON field 'delete.deletes.q' is the wrong type 'string', expected type 'object'
jarditou> db.rayon.drop()
true
jarditou> db.createCollection ("produit")
{ ok: 1 }
jarditou> db.produit.insert({"pro_ref" : "HCR102", "pro_nom" : "Hâche", "pro_price" : "25€", "pro_marque" : "Biz", })

-- Requetes selection 

jarditou> db.produit.find()
[
  {
    _id: ObjectId("6149e267737cd66b52e8c612"),
    pro_ref: 'HCR102',
    pro_nom: 'Hâche',
    pro_price: '25€',
    pro_marque: 'Biz'
  },
  {
    _id: ObjectId("6149e3f3737cd66b52e8c613"),
    pro_ref: 'HCR102',
    pro_nom: 'Hâche',
    pro_price: 25,
    pro_marque: 'Biz'
  }
]

jarditou> db.produit.find(ObjectId("6149e3f3737cd66b52e8c613"))
[
  {
    _id: ObjectId("6149e3f3737cd66b52e8c613"),
    pro_ref: 'HCR102',
    pro_nom: 'Hâche',
    pro_price: 25,
    pro_marque: 'Biz'
  }
]


-- Requetes modification

jarditou> db.produit.update( { pro_ref: "HCR102" },{ $set: { pro_ref: "HCR103" } })
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
