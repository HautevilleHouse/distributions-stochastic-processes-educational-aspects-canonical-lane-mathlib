import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean

structure StochasticProcessFoundation where
  indexSet : Type u
  stateSpace : Type v
  sigmaAlgebra : σ → Set (stateSpace → ℝ)
  filtration : FilterType
  adaptedness : Prop
  measurability : Prop

def StochasticProcessFoundationClosed (S : StochasticProcessFoundation) : Prop :=
  S.adaptedness ∧ S.measurability

end DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean
end HautevilleHouse