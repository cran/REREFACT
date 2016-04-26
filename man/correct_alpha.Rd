\name{correct_alpha}
\alias{correct_alpha}
\title{
Re-orders and/or re-signs as needed within the estimated intercept or mean vector for each replication
} 
\description{
The correct_alpha function accomplishes Step 4 of the algorithm with regard to replications of the estimated intercept or mean vector. More specifically, the correct_alpha function re-orders and/or re-signs as needed within the estimated intercept or mean vector for each replication so that all replications uniformly follow the order and sign pattern defined by the population values.  
}
\usage{
correct_alpha(P_data, rep, n.eta, sample_alpha)
}
\arguments{
  \item{P_data}{
a list containing the correct permutation matrix, P_i, for each replication.

}
  \item{rep}{
the number of replications. 
}
  \item{n.eta}{
the total number of latent variables within eta.
}
  \item{sample_alpha}{
a list containing replications of the estimated intercept or mean vector. 
}
}
\details{
The correct_alpha function uses P to re-order and/or re-sign as needed within the estimated intercept or mean vector for each replication of a simulation study with exploratory factor analysis. This function returns a list, correct_alpha, of the re-ordered and/or re-signed estimated intercept or mean vector for each replication and saves the list as a text file to the designated working directory.     
}

\references{
Myers, N. D., Ahn, S., Lu, M., Celimli, S., Zopluoglu, C. (2016). REREFACT: An R package for reordering and reflecting factors for simulation studies with Exploratory Factor Analysis. Manuscript submitted for publication.
}
\author{
Soyeon Ahn, Cengiz Zopluoglu, Seniz Celimli, Min Lu, & Nicholas D. Myers
}

\seealso{
\code{\link{rerefact}}, \code{\link{correct_beta}}, \code{\link{correct_lambda}}, \code{\link{correct_psi}}, \code{\link{correct_gamma}}
}
\examples{
# Load the P for Example 2 from Myers, Ahn, Lu, Celimli, and Zopluoglu (2016).

data(P_esem)

# Load 200 replications of the estimated intercept or mean vector provided by replication 
# numbers 1 through 100 and 4701 through 4800 in Example 2 from 
# Myers, Ahn, Lu, Celimli, and Zopluoglu (2016).

data(sample_alpha_esem)

# Specify the following arguments within the correct_alpha function for Example 2 from 
# Myers, Ahn, Lu, Celimli, and Zopluoglu (2016).

correct_alpha(P_data=P_esem, rep=200, n.eta=4, sample_alpha=sample_alpha_esem)

}

\keyword{ Permutation matrices }
\keyword{ Simulation }
\keyword{ Exploratory Factor Analysis (EFA) }
\keyword{ Exploratory Structural Equation Modeling (ESEM) }