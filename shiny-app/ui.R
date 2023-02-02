# ui.R
# Author: Emmanuel I. Benyeogor
# Date: 31-JAN-2023
# Description: Shiny UI, Coursera Data Science Capstone Final Project
# GitHub: https://github.com/chidemannie/repo

library(shiny)
library(shinythemes)
library(markdown)
library(dplyr)
library(tm)

shinyUI(
  navbarPage("PreDictor X",
             theme = shinytheme("spacelab"),
             tabPanel("Home",
                      fluidPage(
                        titlePanel("Home"),
                        sidebarLayout(
                          sidebarPanel(
                            textInput("userInput",
                                      "Enter a word or phrase:",
                                      value =  "",
                                      placeholder = "Enter text here"),
                            br(),
                            sliderInput("numPredictions", "Number of Predictions:",
                                        value = 1.0, min = 1.0, max = 3.0, step = 1.0)
                          ),
                          mainPanel(
                            h4("Input text"),
                            verbatimTextOutput("userSentence"),
                            br(),
                            h4("Predicted words"),
                            verbatimTextOutput("prediction1"),
                            verbatimTextOutput("prediction2"),
                            verbatimTextOutput("prediction3")
                          )
                        )
                      )
             ),
             tabPanel("About",
                      h3("About PreDictor X"),
                      br(),
                      div("PreDictor X is a Shiny app that uses a text
                            prediction algorithm to predict the next word(s)
                            based on text entered by a user.",
                          br(),
                          br(),
                          "The predicted next word will be shown when the app
                            detects that you have finished typing one or more
                            words. When entering text, please allow a few
                            seconds for the output to appear.",
                          br(),
                          br(),
                          "Use the slider tool to select up to three next
                            word predictions. The top prediction will be
                            shown first followed by the second and third likely
                            next words.",
                          br(),
                          br(),
                          "The source code for this application can be found
                            on GitHub:",
                          br(),
                          br(),
                          img(src = "github.png"),
                          a(target = "_blank", href = "https://github.com/chidemannie/repo/tree/master/shiny-app/",
                            "Next Word Predict")),
                      br(),
                      h3("About Me"),
                      br(),
                      div("My name is Emmanuel I. Benyeogor and I am a
                            DrPH candidate at Nagasaki Univeristy, Japan and an Epidemiologist
                            with ",
                          a(target = "_blank", href = "https://www.ncdc.gov.ng/", "Nigeria CDC"),".",
                          "I am Prince2 and Cobit 2019 certified, Data scientist, Public Health Emergency Manager
                            and Planetary Health enthuse with over 10 years of experience working
                            with R, MySQL, SPSS, and PostgreSQL
                            database technologies.",
                          br(),
                          br(),
                          "My work includes coordinating emergency response using incident management system, using R
                            and SQL programming, developing highly available
                            database solutions, capacity planning and building, critical thinking and solution using system thinking design.",
                          br(),
                          br(),
                          "My other specialties include Planetary Health, Ecosystem appraoches for vulnerability reduction,
                            developing statistical models, predictive analytics
                            and statistical data analysis in R and Python.",
                          br(),
                          br(),
                          "I am a Flemingfund fellow from Denmark Technical University in
                            Antimicrobial Resistance and Young African Leadership Initiative fellow. I graduated from 
                            College of Medicine, University of Lagos with MSc in Public Health (Epidemiology track)
                            and University of Benin, BSc in Biochemistry.",
                          br(),
                          br(),
                          img(src = "linkedin.png"),
                          a(target = "_blank", href="https://www.linkedin.com/in/emmanuelbenyeogor/", "Emmanuel Benyogor"),
                          br(),
                          img(src = "twitter.png"),
                          a(target = "_blank", href="https://twitter.com/eibenyeogor/", "Emmanuel Benyeogor"))
             )
  )
)
