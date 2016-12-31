setwd('~/Downloads/final/en_US/')
library(ngram)
library(stringr)

## Load twitter file data
con <- file("en_US.twitter.txt", "r")
lines_tweets <- readLines(con)
close(con)

# Generate bigram csv file
Sys.time()
training_tweet <- concatenate(lines_tweets)
ngram2Model_tweet <- ngram(training_tweet, n=2)
print("2 gram table tweet")
Sys.time()
ngram2df_tweet <- get.phrasetable(ngram2Model_tweet)
write.csv2(ngram2df_tweet, file="ngram2df_tweet.csv")

# Generate trigram csv file
ngram3Model_tweet <- ngram(training_tweet, n=3)
print("3 gram table tweet")
Sys.time()
ngram3df_tweet <- get.phrasetable(ngram3Model_tweet)
write.csv2(ngram3df_tweet, file="ngram3df_tweet.csv")

# Generate 4-gram csv file
ngram4Model_tweet <- ngram(training_tweet, n=4)
print("4 gram table tweet")
Sys.time()
ngram4df_tweet <- get.phrasetable(ngram4Model_tweet)
write.csv2(ngram4df_tweet, file="ngram4df_tweet.csv")

## Load news file data
con <- file("en_US.news.txt", "r")
lines_news <- readLines(con, 710242)
close(con)

# Generate bigram csv file
Sys.time()
training_news <- concatenate(lines_news)
ngram2Model_news <- ngram(training_news, n=2)
print("2 gram table news")
Sys.time()
ngram2df_news <- get.phrasetable(ngram2Model_news)
write.csv2(ngram2df_news, file="ngram2df_news.csv")

# Generate trigram csv file
Sys.time()
training_news <- concatenate(lines_news)
ngramModel_news <- ngram(training_news, n=3)
print("3 gram table news")
Sys.time()
ngram3df_news <- get.phrasetable(ngramModel_news)
write.csv2(ngram3df_news, file="ngram3df_news.csv")

# Generate 4-gram csv file
Sys.time()
training_news <- concatenate(lines_news)
ngram4Model_news <- ngram(training_news, n=4)
print("4 gram table news")
Sys.time()
ngram4df_news <- get.phrasetable(ngram4Model_news)
write.csv2(ngram4df_news, file="ngram4df_news.csv")


## Load blogs file data
con <- file("en_US.blogs.txt", "r")
lines_tweets <- readLines(con)
close(con)

# Generate bigram csv file
Sys.time()
training_blogs <- concatenate(lines_blogs)
ngram2Model_blogs <- ngram(training_blogs, n=2)
print("2 gram table blogs")
Sys.time()
ngram2df_blogs <- get.phrasetable(ngram2Model_blogs)
write.csv2(ngram2df_blogs, file="ngram2df_blogs.csv")

# Generate trigram csv file
Sys.time()
training_blogs <- concatenate(lines_blogs)
ngram3Model_blogs <- ngram(training_blogs, n=3)
print("3 gram table blogs")
Sys.time()
ngram3df_blogs <- get.phrasetable(ngram3Model_blogs)
write.csv2(ngram3df_blogs, file="ngram3df_blogs.csv")

# Generate 4-gram csv file
Sys.time()
training_blogs <- concatenate(lines_blogs)
ngram4Model_blogs <- ngram(training_blogs, n=4)
print("4 gram table blogs")
Sys.time()
ngram4df_blogs <- get.phrasetable(ngram4Model_blogs)
write.csv2(ngram4df_blogs, file="ngram4df_blogs.csv")

print("Ready for prediction")
