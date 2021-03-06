% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/detectionQuality.R
\name{qualityStatistics}
\alias{qualityStatistics}
\title{qualityStatistics}
\usage{
qualityStatistics(edObject, reference)
}
\arguments{
\item{edObject}{The eventdetection object you obtain by running 'detectEvents'}

\item{reference}{true/false vector, reference vector based on labeled data: which datapoints are real events.}
}
\value{
list, Confusion Matrix and Statistics
}
\description{
Wrapper function for caret::confusionMatrix.
qualityStatistics calculates statistics for judging the quality of the eventDetection based on the
fitted edModel and a reference dataset
}
\examples{
train <- geccoIC2018Train[15000:18000,]
edObject <- detectEvents(train[,-c(1,11)],windowSize = 500,
                nIterationsRefit = 200,verbosityLevel = 2,
                postProcessorControl = list(nStandardDeviationsEventThreshhold = 3))
qualityStatistics(edObject, train$EVENT)
}
