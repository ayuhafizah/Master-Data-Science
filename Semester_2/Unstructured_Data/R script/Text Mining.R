eg1<-read.table(file.choose(),fill=T,header=F) #Data CG.txt
eg1[1,] #first sentence
eg2<-read.csv(file.choose(),header=F) #Data CG.csv
eg2[1,] #first row represent the whole sentence

#Using tm package
library(tm)
#install.packages("tm")
eg3<-c("Hi!","Welcome to STQD6114","Tuesday, 11-1pm")
mytext<-VectorSource(eg3) #convert into text source as input cource to corpus
mycorpus<-VCorpus(mytext) #collection of doc stored in structured way
inspect(mycorpus)
as.character(mycorpus[[1]])

#Example using VectorSource
eg4<-t(eg1) #transpose example 1
a<-sapply(1:7,function(x)
  trimws(paste(eg4[,x],collapse=" "),"right"))
mytext<-VectorSource(a)
mycorpus<-VCorpus(mytext)
inspect(mycorpus)
as.character(mycorpus[[3]])

eg4b<-t(eg2) #transpose example 2
b<-sapply(1:7,function(x)
  trimws(paste(eg4b[,x],collapse=" "),"right"))
mytext<-VectorSource(b)
mycorpus<-VCorpus(mytext)
inspect(mycorpus)
as.character(mycorpus[[3]])
#note: 7 can change to ncol(eg4b)

eg4c<-read.csv(file.choose(), header = F) #Rise.csv
eg4c<-t(eg4c) #transpose eg4c
c<-sapply(1:ncol(eg4c),function(x)
  trimws(paste(eg4c[,x],collapse=" "),"right"))
mytext<-VectorSource(c)
mycorpus<-VCorpus(mytext)
inspect(mycorpus)
as.character(mycorpus[[1]])

#Example using DataFrameSource
eg5<-read.csv(file.choose(),header=F) #Using doc6.csv
docs<-data.frame(doc_id=c("doc_1","doc_2"),                 
                 text=c(as.character(eg5[1,]),as.character(eg5[2,])),                 
                 dmeta1=1:2,dmeta2=letters[1:2],stringsAsFactors=F)
mytext<-DataframeSource(docs)
mycorpus<-VCorpus(mytext)
inspect(mycorpus)
as.character(mycorpus[[1]])

eg5b<-read.csv(file.choose(), header = F) #data gc.csv
docsb<-data.frame(doc_id = c("doc_1","doc_2","doc_3","doc_4","doc_5","doc_6","doc_7"),
                  text=c(as.character(eg5b[1,]),as.character(eg5b[2,]), as.character(eg5b[3,]),
                         as.character(eg5b[4,]),as.character(eg5b[5,]), as.character(eg5b[6,]),
                         as.character(eg5b[7,])),
                  dmeta1=1:7,dmeta2=letters[1:7],stringsAsFactors=F)
mytext<-DataframeSource(docsb)
mycorpus<-VCorpus(mytext)
inspect(mycorpus)
as.character(mycorpus[[1]])

#Example using DirSource
getwd()
#paste working directory if the current dir is not same as folder path
mytext<-DirSource("C:\\Users\\User\\OneDrive - Universiti Kebangsaan Malaysia\\Desktop\\unstructured\\Attachment 2 - movies-20260316") 
mycorpus<-VCorpus(mytext)
inspect(mycorpus)
as.character(mycorpus[[5]])

### web scrapping ###
library(tm)
library(XML)
library(httr)
library(rvest)

eg6<-readLines("https://en.wikipedia.org/wiki/Data_science")
eg6[grep("\\h2",eg6)]
eg6[grep("\\p",eg6)] #paragraph

#Using library XML
# read a webpage - parse html - extract specific tags like p or h
library(XML)
eg6<-readLines("https://en.wikipedia.org/wiki/Data_science")
doc<-htmlParse(eg6) #tools to restructure and parse content
#read entire doc into R memory
doc.text<-unlist(xpathApply(doc,'//p',xmlValue)) #extract
unlist(xpathApply(doc,'//h2',xmlValue))

#using library httr
#install.packages("httr")
library(httr)
eg7<-GET("https://www.edureka.co/blog/what-is-data-science/")
doc<-htmlParse(eg7)
doc.text<-unlist(xpathApply(doc,'//p',xmlValue))

#Using library rvest
eg8<-read_html("https://www.edureka.co/blog/what-is-data-science/")
nodes<-html_nodes(eg8,'h1') #extract main title from page
texts<-html_text(nodes)
head(texts)

eg9<-read_html("https://en.wikipedia.org/wiki/Unstructured_data")
nodes <- html_nodes(eg9, "#firstHeading, p")
texts <- html_text(nodes)
head(texts)

#Selecting multiple pages
pages<-paste0('https://www.amazon.com/s?k=skincare&crid=2KNTJ6Q5USYC0&sprefix=skincare%2Caps%2C398&ref=nb_sb_noss_2&page=',1:5) #store 6 pages
eg10<-read_html(pages[1]) #get/extact info from the 2nd page
nodes<-html_nodes(eg10,'.a-price-whole , .a-price-symbol')
texts<-html_text(nodes)

#extract pages by using function
Price<-function(page){
  url<-read_html(page) #read any page
  nodes<-html_nodes(url ,'.a-price-whole ')
  html_text(nodes)}

sapply(pages,Price)
do.call("c",lapply(pages,Price))

pages2<-paste0('https://www.zalora.com.my/search?q=makeup&page=',0:5) #store 6 pages
eg11<-read_html(pages2[1]) #get/extact info from the 2nd page
nodes<-html_nodes(eg11,'.font-bold')
texts<-html_text(nodes)
head(texts)

#extract pages by using function
Price<-function(page){
  url<-read_html(page) #read any page
  nodes<-html_nodes(url ,'.font-bold')
  html_text(nodes)}

sapply(pages2,Price)
do.call("c",lapply(pages2,Price))

## another example of how to extract multiple pages from zalora
pages2 <- paste0("https://www.zalora.com.my/search?q=makeup&page=", 1:5)

Price <- function(page){
  url <- read_html(page)
  nodes <- html_nodes(url, ".font-bold")
  html_text(nodes, trim = TRUE)
}

price_list <- lapply(pages2, Price)
all_prices <- do.call("c", price_list)
all_prices

