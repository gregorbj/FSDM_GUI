% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fsdm.R
\name{calcPosteriorRatio}
\alias{calcPosteriorRatio}
\title{Calculate change ratio of posterior concept value}
\usage{
calcPosteriorRatio(Va, Ra, Vp, W)
}
\arguments{
\item{Va}{a numeric value in the interval (0, 100] identifying the
value of the anterior concept.}

\item{Ra}{a numeric value identifying the ratio of the anterior
concept value and its previous value.}

\item{Vp}{a numeric value in the interval (0, 100] identifying the
value of the posterior concept.}

\item{W}{a numeric value in the interval [-1, 1] identify the strength
of the relationship between the anterior and posterior concepts in the
relationship. Negative values denote inverse relationship.}
}
\value{
A numeric value identifying the ratio of the updated posterior
concept value to the starting posterior concept value due to the change in
the anterior concept value.
}
\description{
\code{calcPosteriorRatio} calculates the ratio of the new posterior concept
value to the previous value due to a change in an anterior concept value
}
\details{
This function calculates the ratio of change in the posterior concept value
in a relationship due to the proportional change the anterior concept value
in the relationship where proportional change is defined as (V' / V ) - 1.
The algorithm assumes that the change to the remainder for the posterior
concept is proportional to the change to the remainder for the anterior
concept where the remainder is the difference between the value and the value
limit in the direction of the change. Since the FSDM operates in the range of
0 to 100, the lower limit is 0 and the upper limit is 100. For example if the
anterior concept changes from 20 to 40, the value limit is 100 and the
remainder is 80. The change to the remainder is 20 divided by 80. The change
to the remainder of the posterior concept is equal to the change to the
remainder of the anterior concept multiplied by the relationship weight. For
example if the weight is 0.5, then the change to the remainder of the
posterior concept would be half of the change to the remainder of the
anterior concept. Given this assumption, the proportional change to the
posterior concept due to a change in an anterior concept can be calculated as
a function of the anterior concept value prior to change, the posterior
concept value, the proportional change in the anterior concept value, and the
weight. The calculation of the change to the posterior concept differs
depending on whether the proportional change to the anterior concept is
positive or negative and whether the relationship weight is positive or
negative. If either are 0, the result is 0.
}
