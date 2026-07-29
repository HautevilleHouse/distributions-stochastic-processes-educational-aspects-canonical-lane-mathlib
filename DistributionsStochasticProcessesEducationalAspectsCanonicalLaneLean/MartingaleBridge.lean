import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean

structure MartingalePackage {D : DistributionSpace} where
  process : Type u
  integrability : Prop
  conditionalExpectation : Prop
  martingaleProperty : Prop

structure MartingaleEvidence {D : DistributionSpace}
    (M : MartingalePackage D) where
  integrabilityClosed : M.integrability
  conditionalExpectationClosed : M.conditionalExpectation
  martingalePropertyClosed : M.martingaleProperty

def MartingaleClosed {D : DistributionSpace} (M : MartingalePackage D) : Prop :=
  M.integrability ∧ M.conditionalExpectation ∧ M.martingaleProperty

theorem martingale_closed_from_evidence
    {D : DistributionSpace} (M : MartingalePackage D) (E : MartingaleEvidence M) :
    MartingaleClosed M := by
  exact And.intro E.integrabilityClosed (And.intro E.conditionalExpectationClosed E.martingalePropertyClosed)

end DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean
end HautevilleHouse
