import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean

structure MartingaleTheory where
  process : StochasticProcessFoundation
  integrability : Prop
  conditionalExpectation : Prop
  martingaleProperty : Prop
  convergenceTheorem : Prop

def MartingaleTheoryClosed (M : MartingaleTheory) : Prop :=
  M.integrability ∧ M.martingaleProperty ∧ M.convergenceTheorem

end DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean
end HautevilleHouse