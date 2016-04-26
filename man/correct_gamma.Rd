\name{correct_gamma}
\alias{correct_gamma}
\title{
Re-orders and/or re-signs as needed within the estimated eta on x regression coefficient matrix for each replication
}
\description{
The correct_gamma function accomplishes Step 4 of the algorithm with regard to replications of the estimated eta on x regression coefficient matrix. More specifically, the correct_gamma function re-orders and/or re-signs as needed within the estimated eta on x regression coefficient matrix for each replication of a simulation study with exploratory factor analysis.
}
\usage{
correct_gamma(P_data, rep, n.eta, sample_gamma)
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
  \item{sample_gamma}{
a list containing replications of the estimated eta on eta regression coefficient matrix. 
}
}
\details{
The correct_gamma function uses P to re-order and/or re-sign as needed within the estimated eta on x regression coefficient matrix for each replication of a simulation study with exploratory factor analysis. This function returns a list, correct_gamma, of the re-ordered and/or re-signed estimated eta on x regression coefficient matrix for each replication and saves the list as a text file to the designated working directory. 
}

\references{
Myers, N. D., Ahn, S., Lu, M., Celimli, S., Zopluoglu, C. (2016). REREFACT: An R package for reordering and reflecting factors for simulation studies with Exploratory Factor Analysis. Manuscript submitted for publication. 
}
\author{
Soyeon Ahn, Cengiz Zopluoglu, Seniz Celimli, Min Lu, & Nicholas D. Myers
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{rerefact}}, \code{\link{correct_alpha}}, \code{\link{correct_beta}}, \code{\link{correct_lambda}}, \code{\link{correct_psi}}
}
\examples{
# Load the P for Example 2 from Myers, Ahn, Lu, Celimli, and Zopluoglu (2016).

data(P_esem)

# Load 200 replications of the estimated eta on x regression 
# coefficient matrix provided by replication 
# numbers 1 through 100 and 4701 through 4800 in Example 2 from 
# Myers, Ahn, Lu, Celimli, and Zopluoglu (2016).

data(sample_gamma_esem)

# Specify the following arguments within the correct_gamma function for Example 2 from 
# Myers, Ahn, Lu, Celimli, and Zopluoglu (2016).

correct_gamma(P_data=P_esem, rep=200, n.eta=4, sample_gamma=sample_gamma_esem)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Permutation matrices }
\keyword{ Simulation }
\keyword{ Exploratory Factor Analysis (EFA) }
\keyword{ Exploratory Structural Equation Modeling (ESEM) }
