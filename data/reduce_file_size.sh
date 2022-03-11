#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Enter a Genre"
fi

echo "Genre: $1";

# Books
gunzip goodreads_books_$1.json.gz
echo "book_id,isbn,title,author_id" > goodreads_books_$1.csv
jq -rs '.[] | [ .book_id, .isbn, .title, first(.authors[] | .author_id) ] | @csv' goodreads_books_$1.json >> goodreads_books_$1.csv

# Reviews
gunzip goodreads_reviews_$1.json.gz
echo "user_id,book_id,rating" > goodreads_reviews_$1.csv
jq -rs '.[] | [ .user_id, .book_id, .rating ] | @csv' goodreads_reviews_$1.json >> goodreads_reviews_$1.csv
