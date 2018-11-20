df <- read.csv("E:/ENMs/Tables and Figures for disso/new_calibrations_aucs.csv", header = TRUE)

##Create difference columns for each disease
df$YF_diff <- df$YF_test - df$YF_train
df$Mal_diff <- df$Mal_test - df$Mal_train
df$Wnv_diff <- df$WNV_test - df$WNV_train
df$Chik_diff <- df$Chik_test - df$Chik_train
df$Zika_diff <- df$Zika_test - df$Zika_train
df$Deng_diff <- df$Dengue_test - df$Dengue_train

#create a new df with just these columns
df1 <- df[13:18]
df <- df[0:12]

write.csv(df1, "E:/ENMs/Tables and Figures for disso/diff_aucs.csv", row.names = FALSE)

aa <- read.csv("E:/ENMs/Tables and Figures for disso/cali_aucs_formatted_for_plots.csv")


disease <- c("Chikungunya", "Dengue", "Malaria", "WNV", "YellowFever", "Zika")
diff_aucs <- c(0.0085, 0.005, 0.0115, 0.0133, 0.0123, 0.0085)
diff_data <- data.frame(disease, diff_aucs)

##boxplots

library(ggplot2)
library(ggpubr)

AUC_plot <- ggplot(aa, aes(x=D, y=AUC, fill = Disease))+
  geom_boxplot(alpha = 0.9)+
  labs(tag = "2a)")+
  theme_bw()+
  theme(axis.title.x = element_blank(),
        legend.title = element_blank(),
        legend.background = element_blank(),
        legend.box.background = element_rect(colour = "black"),
        legend.position = c(0.95,0.9))+
  scale_colour_brewer(palette = "Set1",
                    name = NULL,
                    direction = 1)+
                    #breaks = c("test", "train"),
                    #labels = c("Test AUC", "Train AUC"))+
  scale_fill_brewer(palette = "Set1", direction = 1)

diff_plot <- ggplot(diff_data, aes(x=disease, y= diff_aucs))+
  geom_col(alpha = 0.6)+
  labs(tag = "2b)")+
  ylab("Difference in AUC")+
  scale_y_continuous(limits = c(0,0.015), expand = c(0,0))+
  theme_bw()+
  theme(axis.title.x = element_blank())


ggarrange(AUC_plot, diff_plot, ncol = 1, nrow = 2, heights = c(2,1))
