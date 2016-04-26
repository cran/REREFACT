\name{correct_beta}
\alias{correct_beta}
\title{
Re-orders and/or re-signs as needed within the estimated eta on eta regression coefficient matrix for each replication
}
\description{
The correct_beta function accomplishes Step 4 of the algorithm with regard to replications of the estimated eta on eta regression coefficient matrix. More specifically, the correct_beta function re-orders and/or re-signs as needed within the estimated eta on eta regression coefficient matrix for each replication of a simulation study with exploratory factor analysis.
}
\usage{
correct_beta(P_data, rep, n.eta, sample_beta)
}
%- maybe also 'usage' for other objects documented here.
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
  \item{sample_beta}{
a list containing replications of the estimated eta on eta regression coefficient matrix.
}
}
\details{
The correct_beta function uses P to re-order and/or re-sign as needed within the estimated eta on eta regression coefficient matrix for each replication of a simulation study with exploratory factor analysis. This function returns a list, correct_beta, of the re-ordered and/or re-signed estimated eta on eta regression coefficient matrix for each replication and saves the list as a text file to the designated working directory.
}

\references{
Myers, N. D., Ahn, S., Lu, M., Celimli, S., Zopluoglu, C. (2016). REREFACT: An R package for reordering and reflecting factors for simulation studies with Exploratory Factor Analysis. Manuscript submitted for publication. 
}
\author{
Soyeon Ahn, Cengiz Zopluoglu, Seniz Celimli, Min Lu, & Nicholas D. Myers
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{rerefact}}, \code{\link{correct_alpha}}, \code{\link{correct_gamma}}, \code{\link{correct_lambda}},  \code{\link{correct_psi}}
}
\examples{
# Load the P for Example 2 from Myers, Ahn, Lu, Celimli, and Zopluoglu (2016).

data(P_esem)

# Load 200 replications of the estimated eta on eta regression 
# coefficient matrix provided by replication  numbers 1 through 
# 100 and  4701 through 4800 in Example 2 from 
# Myers, Ahn, Lu, Celimli, and Zopluoglu (2016).

data(sample_beta_esem)

# Specify the following arguments within the correct_beta function for Example 2 from 
# Myers, Ahn, Lu, Celimli, and Zopluoglu (2016).

correct_beta(P_data=P_esem, rep=200, n.eta=4, sample_beta=sample_beta_esem)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Permutation matrices }
\keyword{ Simulation }
\keyword{ Exploratory Factor Analysis (EFA) }
\keyword{ Exploratory Structural Equation Modeling (ESEM) }
