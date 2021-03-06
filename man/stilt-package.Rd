\name{stilt-package}
\alias{stilt-package}
\alias{stilt}
\docType{package}
\title{
Separable Gaussian Process Emulator
}
\description{
'Stilt' is used for interpolating multivariate data in multivariate
space. It is tailored to the case of interpolating ("emulating") regularly
spaced time-series of computer model output between the model input
parameters, but can be also used more broadly (e.g., for output in the form of
regularly-spaced spatial 1D transects, or for interpolating time-series
between locations on the Earth's surface). The interpolation technique
relies on a separable Gaussian Process emulator. Package consists of functions to
fit the Gaussian Process emulator, to interpolate to (predict at) a
given model input setting, and to validate the emulator using
cross-validation. In addition, a function is provided to plot model
response surface as generated by the emulator as a function of two model
parameters. The package works both on one and multi-parameter ensembles,
with an exception of the 'rsurface.plot' function, which by definition is
restricted to 2+ parameter ensembles. The emulator is restricted to
multivariate model output and is not designed to work on interpolating a
single scalar.
}

\section{Disclaimer}{
This package is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details. In addition, the authors
   maintain no responsibility for any possible code errors or bugs.} 

\section{Summary of main functions}{
  \describe{
  \item{emulator}{Fits a separable Gaussian Process emulator to ensemble model
    output}
  \item{predict.emul}{Predicts using a Gaussian Process emulator}
  \item{rsurface.plot}{Plots a 2D model response surface}
  \item{test.csv}{Cross-validates an emulator by removing one or many
    model runs, training the emulator on the remaining runs, and then
    predicting at the withheld model runs}
  \item{test.all}{Tests an emulator using leave-one-out cross validation}
  \item{sep.cov}{Constructs time and parameter covariance matrices}
  }
}

\section{Summary of datasets}{
  \describe{
  \item{Data.1D.model and Data.1D.par}{Model output and parameter
    settings for a simple 1-parameter ensemble example}
  \item{emul.1D}{Gaussian Process emulator that has been fit to the
    aforementioned model ensemble output}
  \item{Data.AR1.Korea.model and Data.AR1.Korea.par}{Temperature variability and
    future change for 29 CMIP5 global climate models}
  \item{Data.UVic.model and Data.UVic.par}{Model output and parameter
    settings for temperature anomaly output from 3-parameter ensemble of
    climate model UVic ESCM}
  \item{Data.Sicopolis.model and Data.Sicopolis.par}{Model output and
    parameter settings for ice mass loss output from a 5-parameter
    ensemble of ice sheet model SICOPOLIS}
  \item{emul.Sicopolis}{A Gaussian Process emulator that has been fit
  to the SICOPOLIS ensemble output}
  }
}



\details{
\tabular{ll}{
Package: \tab stilt\cr
Type: \tab Package\cr
Version: \tab 1.3.0\cr
Date: \tab 2017-08-15\cr
License: \tab GPL-3\cr
LazyLoad: \tab no\cr
}
}
\section{Limitations and Caveats}{
  \enumerate{
    \item The emulator (like any other available software packages)
    will not work well for 'jagged' model response
    surfaces (high nugget): predictive uncertainty will be too high. 
    \item The emulator is restricted to output at regular intervals in
    time and space
    \item The code has not been tested under conditions of extreme high
    / extreme low input parameter range, output time(space) coordinates
    range, and output range (an example would be model output ranging
    from -1E20 to 1E20, etc.). In such cases it is recommended to
    re-scale the time(space) coordinates vector, the input parameters,
    and/or the model output.
    \item The emulator will not work on scalar model output -- it
    requires multivariate data
    \item The emulator assumes a separable covariance function, and
    stationarity of the covariance part of the Gaussian process.
    \item The optimization of the emulator parameters degrades
    dramatically (and increases in time) as a function of number of
    free parameters. Hence, the emulator might be of limited use for
    large parameter ensembles
    \item The emulator authors are not responsible for any code errors
    and/or bugs
    }
}
\author{
Roman Olson, Won Chang, Klaus Keller and Murali Haran

Maintainer: Kelsey Ruckert <datamgmt@scrim.psu.edu> 
}
\references{
R. Olson and W. Chang (2013): Mathematical framework for a separable
Gaussian Process Emulator. Tech. Rep., available from \cr
\href{http://www.scrimhub.org/resources/stilt/Olson_and_Chang_2013_Stilt_Emulator_Technical_Report.pdf}{www.scrimhub.org/resources/stilt/Olson_and_Chang_2013_Stilt_Emulator_Technical_Report.pdf}.

C. E. Rasmussen and C. K. I. Williams (2006): Gaussian Processes for
machine learning, the MIT press, available from \url{www.gaussianprocess.org/gpml/}
}
