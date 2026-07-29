import DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean.MartingaleTheory

namespace HautevilleHouse
namespace DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean

structure CentralLimitTheoremPackage where
  iidSequence : Prop
  finiteVariance : Prop
  cltStatement : Prop
  rateOfConvergence : Prop
  applications : List String

structure CentralLimitTheoremEvidence (C : CentralLimitTheoremPackage) where
  iidSequenceClosed : C.iidSequence
  finiteVarianceClosed : C.finiteVariance
  cltStatementClosed : C.cltStatement
  rateOfConvergenceClosed : C.rateOfConvergence

def CentralLimitTheoremClosed (C : CentralLimitTheoremPackage) : Prop :=
  C.iidSequence ∧ C.finiteVariance ∧ C.cltStatement ∧ C.rateOfConvergence

theorem central_limit_theorem_closed_from_evidence
    (C : CentralLimitTheoremPackage) (E : CentralLimitTheoremEvidence C) :
    CentralLimitTheoremClosed C := by
  exact And.intro E.iidSequenceClosed
    (And.intro E.finiteVarianceClosed
      (And.intro E.cltStatementClosed E.rateOfConvergenceClosed))

end DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean
end HautevilleHouse