\name{rerefact}
\alias{rerefact}
\title{
Identifies an appropriate permutation matrix for each replication
}
\description{
The rerefact function accomplishes Step 1 thru Step 3 of the algorithm and creates the P that is used in the correct_alpha, correct_beta, correct_gamma, correct_lambda and correct_psi functions to accomplish Step 4 of the algorithm.  
}
\usage{
rerefact(n.factor, n.eta, n.var, pop_lambda, sample_lambda)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n.factor}{
the number of latent variables within eta that may be affected by indeterminacies within eta.}
  \item{n.eta}{
the total number of latent variables within eta.
}
\item{n.var}{
the number of observed endogenous variables with regard to n.factor.
}
  \item{pop_lambda}{
the population pattern coefficient matrix.
}
  \item{sample_lambda}{
a list containing replications of the estimated pattern coefficient matrix.
}
}
\details{
The rerefact function accomplishes Step 1 thru Step 3 of the algorithm. Step 1 determines the total number of equivalent forms of eta that can result from indeterminacies within eta (i.e., I) and provides the result with the n.perm value. Step 2 indexes, i=1,2,..., I, each equivalent form of eta (i.e.,eta_i) via a unique permutation matrix, P (i.e., P_i) and provides the result with the permutation value. Step 3 determines which eta_i each replication follows and provides the result with the correct.permutation value. At the conclusion of Step 3 P is automatically returned and saved as a text file to the designated working directory.
}
\value{
    \item{n.perm}{the total number of equivalent forms of eta that can result from indeterminacies within eta (i.e., I) and provides the result for Step 1 of the algorithm.}
    \item{permutation}{a matrix that indexes within I via a unique, orthogonal permutation matrix for each equivalent form of eta and provides the result for Step 2 of the algorithm.  
}
    \item{correct.permutation}{a matrix that provides the specific equivalent form of eta (within the set indexed in Step 2) that each replication follows and provides the result for Step 3 of the algorithm.}
    \item{replication.permutation}{a table that provides the specific equivalent form of eta (within the set indexed in Step 2) that each replication follows.}
\item{summary.permutation}{a table that provides a count of the number of replications observed within each specific equivalent form of eta (within the set indexed in Step 2). 
}
}
\references{
Myers, N. D., Ahn, S., Lu, M., Celimli, S., Zopluoglu, C. (2016). REREFACT: An R package for reordering and reflecting factors for simulation studies with Exploratory Factor Analysis. Manuscript submitted for publication.
}
\author{
Soyeon Ahn, Cengiz Zopluoglu, Seniz Celimli, Min Lu, & Nicholas D. Myers
}

\seealso{
\code{\link{correct_alpha}}, \code{\link{correct_beta}}, \code{\link{correct_lambda}}, \code{\link{correct_psi}}, \code{\link{correct_gamma}}
}
\examples{
# Dependent packages

require(Matrix)
require(psych)
require(gdata)
require(combinat)

# Load the population pattern coefficient matrix for Example 1 from 
# Myers, Ahn, Lu, Celimli, and Zopluoglu (2016).

data(pop_L_efa)

# Load 200 replications of the estimated pattern coefficient matrix provided by 
# replication numbers 1 through 100 and 4701 through 4800
# in Example 1 from Myers, Ahn, Lu, Celimli, and Zopluoglu (2016). 

data(sample_lambda_efa)

# Specify the following arguments within the rerefact function for Example 1 from 
# Myers, Ahn, Lu, Celimli, and Zopluoglu (2016).

rerefact(n.factor=3, n.eta=3, n.var=10, pop_lambda=pop_L_efa, sample_lambda=sample_lambda_efa)

# Load the population pattern coefficient matrix for Example 2 from 
# Myers, Ahn, Lu, Celimli, and Zopluoglu (2016).

data(pop_L_esem)

# Load 200 replications of the estimated pattern coefficient matrix provided by 
# replication numbers 1 through 100 and 4701 through 4800
# in Example 2 from Myers, Ahn, Lu, Celimli, and Zopluoglu (2016).

data(sample_lambda_esem)

rerefact(n.factor=3, n.eta=4, n.var=10, pop_lambda=pop_L_esem, sample_lambda=sample_lambda_esem)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Permutation matrices }
\keyword{ Simulation }
\keyword{ Exploratory Factor Analysis (EFA) }
\keyword{ Exploratory Structural Equation Modeling (ESEM) }

