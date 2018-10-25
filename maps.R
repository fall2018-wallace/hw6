
ggplot(data = merged_data,aes(merged_data$population))+
  geom_histogram(color ='black', fill= 'white')

ggplot(data = merged_data,aes(merged_data$Murder))+
  geom_histogram(color ='black', fill= 'white')

##5)	Create a boxplot for the population, and a different boxplot for the murder rate.

ggplot(data= merged_data,aes(y=merged_data$population , x=as.factor(0)))+
  geom_boxplot()

ggplot(data= merged_data,aes(y=merged_data$Murder , x=as.factor(0)))+
  geom_boxplot()

# Step 6 I woulf prefer histogram over boxplot for visualization as thet are easier to view and understand as compared to box plot. 

##Step C: Which State had the Most Murders - bar charts
##7)	Calculate the number of murders per state

murders <- merged_data$population*merged_data$Murder/10000

##8)	Generate a bar chart, with the number of murders per state 

bar_1 <- ggplot(data = merged_data,aes(y=murders,x=merged_data$stateName))+
 geom_col()
bar_1 <- bar_1 + ggtitle("Total murders")


##9)	Generate a bar chart, with the number of murders per state. Rotate text (on the X axis), so we can see x labels, also add a title named "Total Murders".
bar_1 <- bar_1 + theme(axis.text.x = element_text(angle = 90, hjust = 1))
bar_1

##10)Generate a new bar chart, the same as in the previous step, but also sort the x-axis by the murder rate

bar_2 <-ggplot(data = merged_data,aes(y=murders,x=reorder(stateName,Murder)))+
  geom_col()  
bar_2 <- bar_2 + theme(axis.text.x = element_text(angle = 90, hjust = 1))
bar_2

##11)Generate a third bar chart, the same as the previous step, but also showing percentOver18 as the color of the bar

bar_3 <-ggplot(data = merged_data,aes(y=murders,x=reorder(stateName,Murder), fill = percentOver18))+
  geom_col()  
bar_3 <- bar_3 + theme(axis.text.x = element_text(angle = 90, hjust = 1))
bar_3
##Step D: Explore Murders - scatter chart
##12)	Generate a scatter plot - have population on the X axis, the percent over 18 on the y axis, and the size & color represent the murder rate

scatterplot <- ggplot(merged_data, aes(x = population, y = percentOver18))
scatterplot <- scatterplot + geom_point(aes(size = Murder, color = Murder))
scatterplot
