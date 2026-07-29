import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean.MartingalePackage

namespace HautevilleHouse
namespace DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean

structure ConvergencePackage {P : ProbabilitySpacePackage}
    {S : StochasticProcessPackage P} (M : MartingalePackage S) where
  almostSureConvergence : Prop
  LpConvergence : Prop
  convergenceInDistribution : Prop

structure ConvergenceEvidence {P : ProbabilitySpacePackage}
    {S : StochasticProcessPackage P} {M : MartingalePackage S}
    (C : ConvergencePackage M) where
  almostSureConvergenceClosed : C.almostSureConvergence
  LpConvergenceClosed : C.LpConvergence
  convergenceInDistributionClosed : C.convergenceInDistribution

def ConvergenceClosed {P : ProbabilitySpacePackage}
    {S : StochasticProcessPackage P} {M : MartingalePackage S}
    (C : ConvergencePackage M) : Prop :=
  C.almostSureConvergence ∧ C.LpConvergence ∧ C.convergenceInDistribution

theorem convergence_closed_from_evidence {P : ProbabilitySpacePackage}
    {S : StochasticProcessPackage P} {M : MartingalePackage S}
    (C : ConvergencePackage M) (E : ConvergenceEvidence C) :
    ConvergenceClosed C := by
  exact And.intro E.almostSureConvergenceClosed
    (And.intro E.LpConvergenceClosed E.convergenceInDistributionClosed)

end DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean
end HautevilleHouse
