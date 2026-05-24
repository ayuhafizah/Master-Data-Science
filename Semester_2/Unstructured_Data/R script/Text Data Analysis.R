### Text Analysis I: LDA
library(tidytext)
library(topicmodels)
library(tidyr)
library(ggplot2)
library(dplyr)

data("AssociatedPress") #dataset inside topicmodels has built in dtm

ap_lda<-LDA(AssociatedPress,k=3,control=list(seed=1234)) #create two-topic LDA model
ap_lda

ap_topics<-tidy(ap_lda,matrix="beta") #Extract the per-topic-per-word-probabilities
ap_topics

#Find terms that are most common within each topics
ap_top_terms <- ap_topics %>% 
  group_by(topic) %>% 
  top_n(15,beta) %>% 
  ungroup () %>% 
  arrange (topic, -beta)

ap_top_terms%>% mutate(term=reorder(term,beta))%>%
  ggplot(aes(term,beta,fill=factor(topic)))+geom_col(show.legend=FALSE)+
  facet_wrap(~topic,scales="free")+coord_flip() #visualize the above

#identify greatest difference between topics
beta_spread <- ap_topics %>% mutate (topic=paste0("topic",topic)) %>% spread(topic,beta) %>%
  filter (topic1>0.002 | topic2 > 0.002) %>% mutate(log_ratio = log2(topic2/topic1))
beta_spread2 <- ap_topics %>% mutate (topic=paste0("topic",topic)) %>% spread(topic,beta) %>%
  filter (topic1>0.002 | topic3 > 0.002) %>% mutate(log_ratio = log2(topic3/topic1))
beta_spread3 <- ap_topics %>% mutate (topic=paste0("topic",topic)) %>% spread(topic,beta) %>%
  filter (topic3>0.002 | topic2 > 0.002) %>% mutate(log_ratio = log2(topic3/topic1))

beta_spread%>% mutate(term=reorder(term,log_ratio))%>%
  ggplot(aes(term,log_ratio))+geom_col(show.legend=FALSE)+coord_flip()
beta_spread2%>% mutate(term=reorder(term,log_ratio))%>%
  ggplot(aes(term,log_ratio))+geom_col(show.legend=FALSE)+coord_flip()
beta_spread3%>% mutate(term=reorder(term,log_ratio))%>%
  ggplot(aes(term,log_ratio))+geom_col(show.legend=FALSE)+coord_flip()

ap_documents<-tidy(ap_lda,matrix="gamma") #Extract the per-document-per-topic-probabilities
ap_documents

tidy(AssociatedPress)%>%filter(document==2)%>%arrange(desc(count)) #Check the most common words in the document, eg
#######################################################################
mytext<-DirSource("C:\\Users\\PC 21\\Desktop\\P162895-STQD6114\\TextMining-20260330")

