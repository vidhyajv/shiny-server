library(shiny)
	
	shinyUI(
	  navbarPage("mtcars dataset",
	             tabPanel("Detail",
	                      h2("Motor Car Road Tests"),
	                      hr(),
	                      h3("Description"),
	                      helpText("The data was extracted from the Motor Trend US magazine,",
	                               " and comprises fuel consumption and 10 aspects of automobile design and performance",
	                               " for 22 automobiles (1973–74 models)."),
	                      h3("Format"),
	                      p("A data frame with 25 observations on 11 variables."),
	                        
	                      p("  [, 1]   mpg	 Miles/(US) gallon"),
	                      p("  [, 2]	 cyl	 Number of cylinders"),
	
	
	                      p("  [, 3]	 drat	 Rear axle ratio"),
	
	                      p("  [, 4]	 qsec	 1/4 mile time"),
	                      p("  [, 5]	 vs	 V/S"),
	
	                      p("  [,6]	 gear	 Number of forward gears"),
	                      p("  [,7]	 carb	 Number of carburetors"),
	                      
	                      h3("Source"),
	                      
	                      p("Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391–411.")
	             ),
	             tabPanel("Analysis",
	                      fluidPage(
	                        titlePanel("The relationship between variables and miles per gallon (MPG)"),
	                        sidebarLayout(
	                          sidebarPanel(
	                            selectInput("variable", "Variable:",
	                                        c("Number of cylinders" = "cyl",
	                                         
	      
	                                          "Rear axle ratio" = "drat",
	                                       
	                                          "1/4 mile time" = "qsec",
	                                          "V/S" = "vs",
	                                          
	                                          "Number of forward gears" = "gear",
	                                          "Number of carburetors" = "carb"
	                                        )),
	                            
	                            checkboxInput("outliers", "Show BoxPlot's outliers", FALSE)
	                          ),
	                          
	                          mainPanel(
	                            h3(textOutput("caption")),
	                            
	                            tabsetPanel(type = "tabs", 
	                                        tabPanel("BoxPlot", plotOutput("mpgBoxPlot")),
	                                        tabPanel("Regression model", 
	                                                 plotOutput("mpgPlot"),
	                                                 verbatimTextOutput("fit")
	                                        )
	                            )
	                          )
	                        )
	                      )
	             ),
	             tabPanel("SourceCode",
	                      p("part1_devdataprod-shiny"),
	                      a("https://github.com/vidhyajv")
	             ),
	             tabPanel("Special",
	                      a("http://swhgoon.github.io/vidhyajv"),
	                      hr(),
	                      tags$iframe(src="part0_regmods-mtcars.html", 
	                                  width="100%", height=600, frameborder=0, 
	                                  seamless=NA)
	             )
	  )
	)

