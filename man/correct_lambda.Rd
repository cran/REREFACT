\name{correct_lambda}
\alias{correct_lambda}
\title{
Re-orders and/or re-signs as needed within the estimated pattern coefficient matrix for each replication
}
\description{
The correct_lambda function accomplishes Step 4 of the algorithm with regard to replications of the estimated pattern coefficient matrix. More specifically, the correct_lambda function re-orders and/or re-signs as needed within the estimated pattern coefficient matrix for each replication of a simulation study with exploratory factor analysis.
}
\usage{
correct_lambda(P_data, rep, n.eta, sample_lambda)
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
  \item{sample_lambda}{
a list containing replications of the estimated pattern coefficient matrix. 
}
}
\details{
The correct_lambda function uses P to re-order and/or re-sign as needed within the estimated pattern coefficient matrix for each replication of a simulation study with exploratory factor analysis. This function returns a list, correct_lambda, of the re-ordered and/or re-signed estimated pattern coefficient matrix for each replication and saves the list as a text file to the designated working directory. 
}

\references{
Myers, N. D., Ahn, S., Lu, M., Celimli, S., Zopluoglu, C. (2016). REREFACT: An R package for reordering and reflecting factors for simulation studies with Exploratory Factor Analysis. Manuscript submitted for publication.
}
\author{
Soyeon Ahn, Cengiz Zopluoglu, Seniz Celimli, Min Lu, & Nicholas D. Myers
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{rerefact}}, \code{\link{correct_alpha}}, \code{\link{correct_beta}}, \code{\link{correct_gamma}}, \code{\link{correct_psi}}
}
\examples{
# Load the P for Example 1 from Myers, Ahn, Lu, Celimli, and Zopluoglu (2016).

data(P_efa)

# Load 200 replications of the estimated pattern coefficient matrix provided by replication 
# numbers 1 through 100 and 4701 through 4800 in Example 1 from 
# Myers, Ahn, Lu, Celimli, and Zopluoglu (2016).

data(sample_lambda_efa)

# Specify the following arguments within the correct_lambda function for Example 1 from 
# Myers, Ahn, Lu, Celimli, and Zopluoglu (2016).

correct_lambda(P_data=P_efa, rep=200, n.eta=3, sample_lambda=sample_lambda_efa)

# Load the P for Example 2 from Myers, Ahn, Lu, Celimli, and Zopluoglu (2016).

data(P_esem)

# Load 200 replications of the estimated pattern coefficient matrix provided by replication 
# numbers 1 through 100 and 4701 through 4800 in Example 2 from 
# Myers, Ahn, Lu, Celimli, and Zopluoglu (2016).

data(sample_lambda_esem)

# Specify the following arguments within the correct_lambda function for Example 2 from 
# Myers, Ahn, Lu, Celimli, and Zopluoglu (2016).

correct_lambda(P_data=P_esem, rep=200,n.eta=4, sample_lambda=sample_lambda_esem)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Permutation matrices }
\keyword{ Simulation }
\keyword{ Exploratory Factor Analysis (EFA) }
\keyword{ Exploratory Structural Equation Modeling (ESEM) }
