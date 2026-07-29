import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean

structure StochasticCalculusItoPackage where
  brownianMotion : Type u
  itoIntegral : Type v
  itoFormulaProved : Prop
  martingaleRepresentation : Prop
  sdeSolutionDefined : Prop

structure StochasticCalculusItoEvidence (S : StochasticCalculusItoPackage) where
  itoFormulaProvedClosed : S.itoFormulaProved
  martingaleRepresentationClosed : S.martingaleRepresentation
  sdeSolutionDefinedClosed : S.sdeSolutionDefined

def StochasticCalculusItoClosed (S : StochasticCalculusItoPackage) : Prop :=
  S.itoFormulaProved ∧ S.martingaleRepresentation ∧ S.sdeSolutionDefined

theorem stochastic_calculus_ito_closed_from_evidence (S : StochasticCalculusItoPackage)
    (E : StochasticCalculusItoEvidence S) : StochasticCalculusItoClosed S := by
  exact And.intro E.itoFormulaProvedClosed (And.intro E.martingaleRepresentationClosed E.sdeSolutionDefinedClosed)

end DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean
end HautevilleHouse
