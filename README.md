# author-gender-fairness

1. Download repository.
2. Download the dataset from UCSD goodreads_books_<genre>.json.gz and goodreads_reviews_<genre>.json.gz into the data directory (https://sites.google.com/eng.ucsd.edu/ucsdbookgraph/home)
3. Run 'data/GatherData.Rmd' and 'data/reduce_file_size.sh' to gather and reduce data.
4. Run the genre-specific Rmd files for getting a bootstrapped RecGap. Output will be stored in the 'output' folder.
5. Run 'combine_genres.Rmd' to compare RecGaps from all genres.
