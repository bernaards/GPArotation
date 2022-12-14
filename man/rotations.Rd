\name{rotations}
\alias{rotations}
\alias{oblimin}
\alias{quartimin}
\alias{targetT}
\alias{targetQ}
\alias{pstT}
\alias{pstQ}
\alias{oblimax}
\alias{entropy}
\alias{quartimax}
\alias{Varimax}
\alias{simplimax}
\alias{bentlerT}
\alias{bentlerQ}
\alias{tandemI}
\alias{tandemII}
\alias{geominT}
\alias{geominQ}
\alias{cfT}
\alias{cfQ}
\alias{infomaxT}
\alias{infomaxQ}
\alias{mccammon}
\alias{bifactorT}
\alias{bifactorQ}

\alias{vgQ.oblimin}
\alias{vgQ.quartimin}
\alias{vgQ.target}
\alias{vgQ.pst}
\alias{vgQ.oblimax}
\alias{vgQ.entropy}
\alias{vgQ.quartimax}
\alias{vgQ.varimax}
\alias{vgQ.simplimax}
\alias{vgQ.bentler}
\alias{vgQ.tandemI}
\alias{vgQ.tandemII}
\alias{vgQ.geomin}
\alias{vgQ.cf}
\alias{vgQ.infomax}
\alias{vgQ.mccammon}
\alias{vgQ.bifactor}

\title{Rotations}
\usage{
    oblimin(L, Tmat=diag(ncol(L)), gam=0, normalize=FALSE, eps=1e-5, maxit=1000)
    quartimin(L, Tmat=diag(ncol(L)), normalize=FALSE, eps=1e-5, maxit=1000)
    targetT(L, Tmat=diag(ncol(L)), Target=NULL, normalize=FALSE, eps=1e-5, maxit=1000)
    targetQ(L, Tmat=diag(ncol(L)), Target=NULL, normalize=FALSE, eps=1e-5, maxit=1000)
    pstT(L, Tmat=diag(ncol(L)), W=NULL, Target=NULL, 
               normalize=FALSE, eps=1e-5, maxit=1000)
    pstQ(L, Tmat=diag(ncol(L)), W=NULL, Target=NULL,
               normalize=FALSE, eps=1e-5, maxit=1000)
    oblimax(L, Tmat=diag(ncol(L)), normalize=FALSE, eps=1e-5, maxit=1000)
    entropy(L, Tmat=diag(ncol(L)), normalize=FALSE, eps=1e-5, maxit=1000)
    quartimax(L, Tmat=diag(ncol(L)), normalize=FALSE, eps=1e-5, maxit=1000)
    Varimax(L, Tmat=diag(ncol(L)), normalize=FALSE, eps=1e-5, maxit=1000)
    simplimax(L, Tmat=diag(ncol(L)), k=nrow(L), 
               normalize=FALSE, eps=1e-5, maxit=1000)
    bentlerT(L, Tmat=diag(ncol(L)), normalize=FALSE, eps=1e-5, maxit=1000)
    bentlerQ(L, Tmat=diag(ncol(L)), normalize=FALSE, eps=1e-5, maxit=1000)
    tandemI(L, Tmat=diag(ncol(L)), normalize=FALSE, eps=1e-5, maxit=1000)
    tandemII(L, Tmat=diag(ncol(L)), normalize=FALSE, eps=1e-5, maxit=1000)
    geominT(L, Tmat=diag(ncol(L)), delta=.01, 
               normalize=FALSE, eps=1e-5, maxit=1000)
    geominQ(L, Tmat=diag(ncol(L)), delta=.01, 
               normalize=FALSE, eps=1e-5, maxit=1000)
    cfT(L, Tmat=diag(ncol(L)), kappa=0, normalize=FALSE, eps=1e-5, maxit=1000)
    cfQ(L, Tmat=diag(ncol(L)), kappa=0, normalize=FALSE, eps=1e-5, maxit=1000)
    infomaxT(L, Tmat=diag(ncol(L)), normalize=FALSE, eps=1e-5, maxit=1000)
    infomaxQ(L, Tmat=diag(ncol(L)), normalize=FALSE, eps=1e-5, maxit=1000)
    mccammon(L, Tmat=diag(ncol(L)), normalize=FALSE, eps=1e-5, maxit=1000)
    bifactorT(L, Tmat=diag(ncol(L)), normalize=FALSE, eps=1e-5, maxit=1000)
    bifactorQ(L, Tmat=diag(ncol(L)), normalize=FALSE, eps=1e-5, maxit=1000)
    
    vgQ.oblimin(L, gam=0)
    vgQ.quartimin(L)
    vgQ.target(L, Target=NULL)
    vgQ.pst(L, W=NULL, Target=NULL)
    vgQ.oblimax(L)
    vgQ.entropy(L)
    vgQ.quartimax(L)
    vgQ.varimax(L)
    vgQ.simplimax(L, k=nrow(L))
    vgQ.bentler(L)
    vgQ.tandemI(L)
    vgQ.tandemII(L)
    vgQ.geomin(L, delta=.01)
    vgQ.cf(L, kappa=0)
    vgQ.infomax(L)
    vgQ.mccammon(L)
    vgQ.bifactor(L)
}
\arguments{
    \item{L}{a factor loading matrix}
    \item{Tmat}{initial rotation matrix.}
    \item{gam}{0=Quartimin, .5=Biquartimin, 1=Covarimin.}
    \item{Target}{rotation target for objective calculation.}
    \item{W}{weighting of each element in target.}
    \item{k}{number of close to zero loadings.}
    \item{delta}{constant added to Lambda^2 in objective calculation.}
    \item{kappa}{see details.}
    \item{normalize}{parameter passed to optimization routine (GPForth or GPFoblq).}
    \item{eps}{parameter passed to optimization routine (GPForth or GPFoblq).}
    \item{maxit}{parameter passed to optimization routine (GPForth or GPFoblq).}
}

\value{A list (which includes elements used by \code{factanal}) with:
   \item{loadings}{Lh from \code{GPForth} or \code{GPFoblq}.} 
   \item{Th}{Th from \code{GPForth} or \code{GPFoblq}.}  
   \item{Table}{Table from \code{GPForth} or \code{GPFoblq}.}
   \item{method}{A string indicating the rotation objective function.}
   \item{orthogonal}{A logical indicating if the rotation is orthogonal.}
   \item{convergence}{Convergence indicator from \code{GPForth} or \code{GPFoblq}.}
   \item{Phi}{t(Th) \%*\% Th.  The covariance matrix of the rotated factors.
   This will be the identity matrix for orthogonal
   rotations so is omitted (NULL) for the result from GPForth.}
   }
\description{
   Optimize factor loading rotation objective.
}
\details{
 These functions optimize a rotation objective. They can be used directly or the
 function name can be passed to factor analysis functions like \code{factanal}.
 Several of the function names end in T or Q, which indicates if they are
 orthogonal or oblique rotations (using \code{GPForth} or \code{GPFoblq}
 respectively.  

 The \code{vgQ.*} versions of the code are called by the optimization routine and
 would typically not be used directly, so these methods are not exported
 from the package namespace. (They simply return the function value and gradient
 for a given rotation matrix.) You can print these functions, but the package 
 name needs to be specified since they are not exported. For example, use
 \code{GPArotation:::vgQ.oblimin} to view the function \code{vgQ.oblimin}.
 The T or Q ending on function names should be omitted for the \code{vgQ.*} 
 versions of the code so, for example, use \code{GPArotation:::vgQ.target} to view the target
 criterion calculation.
   
 Rotations which are available are 
\tabular{lll}{

 oblimin   \tab oblique    \tab  oblimin family 			\cr
 quartimin \tab oblique	   \tab         				\cr
 targetT   \tab orthogonal \tab  target rotation			\cr
 targetQ   \tab oblique    \tab  target rotation			\cr
 pstT	   \tab orthogonal \tab  partially specified target rotation	\cr
 pstQ	   \tab oblique    \tab  partially specified target rotation	\cr
 oblimax   \tab oblique	   \tab         				\cr
 entropy   \tab orthogonal \tab  minimum entropy			\cr
 quartimax \tab orthogonal \tab 					\cr
 varimax   \tab orthogonal \tab 					\cr
 simplimax \tab oblique	   \tab         				\cr
 bentlerT  \tab orthogonal \tab  Bentler's invariant pattern simplicity criterion\cr
 bentlerQ  \tab oblique    \tab  Bentler's invariant pattern simplicity criterion\cr
 tandemI   \tab orthogonal \tab  Tandem Criterion		   \cr
 tandemII  \tab orthogonal \tab  Tandem Criterion		   \cr
 geominT   \tab orthogonal \tab 				   \cr
 geominQ   \tab oblique	   \tab         			   \cr
 cfT	   \tab orthogonal \tab  Crawford-Ferguson family	   \cr
 cfQ	   \tab oblique	   \tab  Crawford-Ferguson family	   \cr
 infomaxT  \tab orthogonal \tab 				   \cr
 infomaxQ  \tab oblique	   \tab         			   \cr
 mccammon  \tab orthogonal \tab  McCammon minimum entropy ratio    \cr
 bifactorT \tab orthogonal \tab  Jennrich and Bentler bifactor rotation\cr
 bifactorQ \tab oblique    \tab  Jennrich and Bentler biquartimin rotation\cr
 }

 Also included for convenience are two analytic rotations \code{eiv} 
 and \code{echelon} which do not require \code{GPForth} or \code{GPFoblq}.

 Note that \code{Varimax} defined here uses \code{vgQ.varimax} and 
 is not \code{varimax}
 defined in the \code{stats} package. \code{stats:::varimax} does Kaiser 
 normalization by default whereas \code{Varimax} defined here does not.
 
 The argument \code{kappa} parameterizes the family for the Crawford-Ferguson 
 method. If \code{m} is the number of factors and \code{p} is the number of 
 indicators then \code{kappa} values having special names are 0=Quartimax, 
 1/p=Varimax, m/(2*p)=Equamax, (m-1)/(p+m-2)=Parsimax, 1=Factor parsimony.
 
 New rotation methods can be programmed with a name "vgQ.newmethod". The 
 inputs are the matrix L, and optionally any additional arguments. The
 output should be a list with elements 
\tabular{ll}{
  \code{f}       \tab the value of the criterion at L.\cr
  \code{Gq}      \tab the gradient at L.\cr
  \code{Method}  \tab a string indicating the criterion.\cr
 }
 }
\examples{
  data(ability.cov)
  factanal(factors = 2, covmat = ability.cov, rotation="oblimin")

  data("Harman", package="GPArotation")
  qHarman  <- GPForth(Harman8, Tmat=diag(2), method="quartimax")
  qHarman2 <- quartimax(Harman8) 

  data("WansbeekMeijer", package="GPArotation")
  fa.unrotated  <- factanal(factors = 2, covmat=NetherlandsTV, rotation="none")

  fa.varimax <- factanal(factors = 2, covmat=NetherlandsTV, 
                rotation="varimax", control=list(rotate=list(normalize=TRUE)))
  fa.oblimin <- factanal(factors = 2, covmat=NetherlandsTV,
                rotation="oblimin", control=list(rotate=list(normalize=TRUE)))
  
  cbind(loadings(fa.unrotated), loadings(fa.varimax), loadings(fa.oblimin))

  }
\seealso{
   \code{\link{GPForth}}, 
   \code{\link{GPFoblq}}, 
   \code{\link{WansbeekMeijer}}, 
   \code{\link{eiv}}, 
   \code{\link{echelon}}, 
   \code{\link[stats]{factanal}}, 
   \code{\link[stats]{varimax}}, 
   \code{\link[stats:varimax]{promax}}
}
\references{
  Bernaards, C.A. and Jennrich, R.I. (2005) Gradient Projection Algorithms 
     and Software for Arbitrary Rotation Criteria in Factor Analysis. 
     \emph{Educational and Psychological Measurement}, \bold{65}, 676--696.

   Bifactor rotation, bifactorT and bifactorQ are called bifactor and
      biquartimin in Jennrich, R.I. and Bentler, P.M. 
      (2011) Exploratory bi-factor analysis. \emph{Psychometrika}, \bold{76}. 

   A discussion of rotation objectives can be found in many references,
   for example, 
   
   Tom Wansbeek and Erik Meijer (2000) \emph{Measurement Error and 
   Latent Variables in Econometrics}, Amsterdam: North-Holland.
  }

\author{Coen A. Bernaards and Robert I. Jennrich
        with some R modifications by Paul Gilbert.}
\concept{rotation}
\keyword{multivariate}


