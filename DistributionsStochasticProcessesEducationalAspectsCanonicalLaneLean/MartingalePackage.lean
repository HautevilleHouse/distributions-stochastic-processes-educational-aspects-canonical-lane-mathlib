import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean.StochasticProcessPackage

namespace HautevilleHouse
namespace DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean

structure MartingalePackage {P : ProbabilitySpacePackage}
    (S : StochasticProcessPackage P) where
  integrability : Prop
  conditionalExpectationProperty : Prop
  filtrationCompatibility : Prop

structure MartingaleEvidence {P : ProbabilitySpacePackage}
    {S : StochasticProcessPackage P} (M : MartingalePackage S) where
  integrabilityClosed : M.integrability
  conditionalExpectationPropertyClosed : M.conditionalExpectationProperty
  filtrationCompatibilityClosed : M.filtrationCompatibility

def MartingaleClosed {P : ProbabilitySpacePackage}
    {S : StochasticProcessPackage P} (M : MartingalePackage S) : Prop :=
  M.integrability ∧ M.conditionalExpectationProperty ∧ M.filtrationCompatibility

theorem martingale_closed_from_evidence {P : ProbabilitySpacePackage}
    {S : StochasticProcessPackage P} (M : MartingalePackage S)
    (E : MartingaleEvidence M) : MartingaleClosed M := by
  exact And.intro E.integrabilityClosed
    (And.intro E.conditionalExpectationPropertyClosed E.filtrationCompatibilityClosed)

end DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean
end HautevilleHouse
