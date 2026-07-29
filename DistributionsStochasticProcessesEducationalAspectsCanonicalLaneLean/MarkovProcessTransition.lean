import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean

structure MarkovProcessTransitionPackage where
  stateSpace : Type u
  transitionKernel : Type v
  markovPropertyFormulated : Prop
  chapmanKolmogorovProved : Prop
  stationarityDefined : Prop

structure MarkovProcessTransitionEvidence (M : MarkovProcessTransitionPackage) where
  markovPropertyFormulatedClosed : M.markovPropertyFormulated
  chapmanKolmogorovProvedClosed : M.chapmanKolmogorovProved
  stationarityDefinedClosed : M.stationarityDefined

def MarkovProcessTransitionClosed (M : MarkovProcessTransitionPackage) : Prop :=
  M.markovPropertyFormulated ∧ M.chapmanKolmogorovProved ∧ M.stationarityDefined

theorem markov_process_transition_closed_from_evidence (M : MarkovProcessTransitionPackage)
    (E : MarkovProcessTransitionEvidence M) : MarkovProcessTransitionClosed M := by
  exact And.intro E.markovPropertyFormulatedClosed (And.intro E.chapmanKolmogorovProvedClosed E.stationarityDefinedClosed)

end DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean
end HautevilleHouse
