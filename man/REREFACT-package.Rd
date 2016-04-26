\name{REREFACT-package}
\alias{REREFACT-package}
\docType{package}
\title{A post-rotation algorithm that REorders and/or REflects FACTors for each 
replication of a simulation study with exploratory factor analysis}
\description{
The REREFACT package is an open source package for R (R Development Core Team, 2015), which provides user-defined functions for accessing a post-rotation algorithm that REorders and/or REflects FACTors for each replication of a simulation study with exploratory factor analysis.
}
\details{
The purpose of REREFACT is to provide a general algorithm written in freely available software, R, dedicated to addressing the possibility that a non-uniform order and/or sign pattern of the factors may be observed across replications of a simulation study with exploratory factor analysis. The algorithm implemented in REREFACT proceeds in four steps. Step 1 determines the total number of equivalent forms, I, of the vector of factors, eta. Step 2 indexes, i=1,2,..., I, each equivalent form of eta (i.e., eta_i) via a unique permutation matrix, P (i.e., P_i). Step 3 determines which eta_i each replication follows. Step 4 uses the appropriate P_i to reorder and/or re-sign parameter estimates within each replication so that all replications uniformly follow the order and sign pattern defined by the population values. REREFACT is important because simulation studies that combine parameter estimates across replications where the factors do not uniformly follow the order and/or sign pattern defined by the population values may yield misleading results for outcomes commonly of interest in these studies. 
}

\author{
Soyeon Ahn, Cengiz Zopluoglu, Seniz Celimli, Min Lu, & Nicholas D. Myers; 
Maintainer: Soyeon Ahn <s.ahn@miami.edu>
}
\references{
Myers, N. D., Ahn, S., Lu, M., Celimli, S., Zopluoglu, C. (2016). REREFACT: An R package for reordering and reflecting factors for simulation studies with Exploratory Factor Analysis. Manuscript submitted for publication. 
}
\keyword{ package }
\seealso{
\code{\link{rerefact}}, \code{\link{correct_alpha}}, \code{\link{correct_beta}}, \code{\link{correct_lambda}}, \code{\link{correct_psi}}, \code{\link{correct_gamma}}
}