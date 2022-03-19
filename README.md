# author-gender-fairness
This repo is meant to investigate the gender bias of collaborative filter algorithms in the book domain.
Data about books, authors and ratings rely on the datasets created by Wan et al. (2018), from Goodreads data scraped in 2017. We used datasets corresponding to five genres:
1. Comics (89,411 books, 542,338 detailed reviews)
2. Mystery/Thriller/Crime (219,235 books, 1,849,236 detailed reviews)
3. Fantasy/paranormal (258,585 books, 3,424,641 detailed reviews)
4. History/Biography (302,935 books, 2,066,193 detailed reviews)
5. Children’s books (124,082 books, 734,640 detailed reviews)

Data processing is inspired by the work of Melchiorre et al., (2021).

# Contents
1. Data folder contains scripts for data gathering and filtering.
2. Output folder is needed for saving results
3. genre_bootstrap.rmd file processes one genre from the data folder. It computes the difference in performance (RecGap) for UBCF, IBCF and pop by gender and saves its results into the output folder.
4. combine_genres.Rmd combines the outputs for comparison.

# Instruction
1. Download repository.
2. Download the dataset from UCSD goodreads_books_<genre>.json.gz and goodreads_reviews_<genre>.json.gz into the data directory (https://sites.google.com/eng.ucsd.edu/ucsdbookgraph/home)
3. Run 'data/GatherData.Rmd' and 'data/reduce_file_size.sh' to gather and reduce data.
4. Run the genre-specific Rmd files for getting a bootstrapped RecGap. Output will be stored in the 'output' folder.
5. Run 'combine_genres.Rmd' to compare RecGaps from all genres.
  
# Literature
Melchiorre, A. B., Rekabsaz, N., Parada-Cabaleiro, E., Brandl, S., Lesota, O., Schedl,
M. (2021). Investigating gender fairness of recommendation algorithms in the music
domain.Information Processing Management,58(5), 102666.

Wan, M., McAuley, J. (2018, September). Item recommendation on monotonic behavior
chains. InProceedings of the 12th ACM conference on recommender systems(pp.
86-94).



