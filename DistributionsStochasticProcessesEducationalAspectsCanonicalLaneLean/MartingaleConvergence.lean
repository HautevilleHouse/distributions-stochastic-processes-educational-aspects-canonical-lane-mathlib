import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean

structure MartingaleConvergencePackage {D : DistributionSpace}
    {M : MartingalePackage D} where
  upcrossingInequality : Prop
  almostSureConvergence : Prop
  limitIntegrability : Prop

structure MartingaleConvergenceEvidence {D : DistributionSpace}
    {M : MartingalePackage D} (C : MartingaleConvergencePackage M) where
  upcrossingInequalityClosed : C.upcrossingInequality
  almostSureConvergenceClosed : C.almostSureConvergence
  limitIntegrabilityClosed : C.limitIntegrability

def MartingaleConvergenceClosed {D : DistributionSpace}
    {M : MartingalePackage D} (C : MartingaleConvergencePackage M) : Prop :=
  C.upcrossingInequality ∧ C.almostSureConvergence ∧ C.limitIntegrability

theorem martingale_convergence_closed_from_evidence
    {D : DistributionSpace} {M : MartingalePackage D}
    (C : MartingaleConvergencePackage M) (E : MartingaleConvergenceEvidence C) :
    MartingaleConvergenceClosed C := by
  exact And.intro E.upcrossingInequalityClosed
    (And.intro E.almostSureConvergenceClosed E.limitIntegrabilityClosed)

end DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean
end HautevilleHouse
