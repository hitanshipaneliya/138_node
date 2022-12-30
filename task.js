  // mongodb+srv://admin:<password>@cluster0.psh4o9r.mongodb.net/test


// Q1) Select all documents from books collection, where no_of_reviews  is 3.
// Q2) Select all documents from the books collection where author profile contains 2 courses?
// Q3) Read all documents from the books collection where 'tags' array contains 'database' element?
// Q4) Select all documents from books collection where tags array is exactly equal to ["language","freeware","programming"].
// Q5) To select all documents from books collection where no_of_reviews is not equal to 3.
// Q6) Select all documents from books collection where the no_of_reviews is greater than 3.
// Q7) Select all documents from books collection where the no_of_reviews is greater than or equal to 3.
// Q8) Select all documents from books collection where the no_of_reviews is less than 3.
// Q9) Select all documents from the books collection where the no_of_reviews is 1 or 4 or 5?
// Q10) Select all documents where either no_of_reviews >3 or tags array contains programming element?
// Q11) Select all documents where either no_of_reviews is less than 3 or downloadable is true or author profile contains atleast 2 books?
// Q12) Select all documents does not conain no_of_reviews and downloadable fields Note: $or results + $nor results = total no of documents
// Q13) Select all documents where the no_of_reviews is  and downloadable is true?
// Q14) update no_of_reviews to 10 where isbn no is 6677
// Q15) update profile to 8 of books Oracle in simple way

1. db.books.find({"no_of_reviews":{$eq:3}})
2.db.books.find({"author.profile.courses":{$eq:2}})
3.db.books.find({"tags":{$eq:"database"}})
4. db.books.find({"tags":{$eq:["language","freeware","programming"]}})
5.db.books.find({"no_of_reviews":{$ne:3}})
6. db.books.find({"no_of_reviews":{$gt:3}})
7.db.books.find({"no_of_reviews":{$gte:3}})
8.db.books.find({"no_of_reviews":{$lt:3}})
9.db.books.find({$or:[{"no_of_reviews":{$eq:1}},{"no_of_reviews":{$eq:4}},{"no_of_reviews":{$eq:5}}]})
10.db.books.find({$or:[{"no_of_reviews":{$gt:3}},{"tags":{$eq:"programming"}}]})
11.db.books.find({$or:[{"no_of_reviews":{$lt:3}},{" downloadable":{$eq:"true"}},{"author.profile.books":{$eq:2}}]})
12.
13.db.books.find({$and:[{"no_of_reviews":{$gte:3}},{"downloadable":{$eq:true}}]})
14.db.books.updateMany({"isbn":6677},{$set:{"no_of_reviews":10}})
15. db.books.updateMany({"title":"Oracle in simple way"},{$set:{"author.profile.books":8}})

{ field: { $type: <BSON type> } }
typeof db.student.findOne( { "name" :"ram" } ).name