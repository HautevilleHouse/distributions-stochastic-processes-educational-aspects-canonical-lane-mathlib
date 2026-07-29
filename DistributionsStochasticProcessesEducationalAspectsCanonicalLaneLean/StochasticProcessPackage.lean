import DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean.DistributionSpaces

namespace HautevilleHouse
namespace DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean

structure StochasticProcessPackage (D : DistributionSpace) where
  indexSet : Type
  stateSpace : Type
  samplePaths : Prop
  finiteDimensionalDistributions : Prop
  kolmogorovConsistency : Prop
  measurability : Prop

structure StochasticProcessEvidence {D : DistributionSpace}
    (P : StochasticProcessPackage D) where
  samplePathsClosed : P.samplePaths
  finiteDimensionalDistributionsClosed : P.finiteDimensionalDistributions
  kolmogorovConsistencyClosed : P.kolmogorovConsistency
  measurabilityClosed : P.measurability

def StochasticProcessClosed {D : DistributionSpace}
    (P : StochasticProcessPackage D) : Prop :=
  P.samplePaths ∧ P.finiteDimensionalDistributions ∧
  P.kolmogorovConsistency ∧ P.measurability

theorem stochastic_process_closed_from_evidence {D : DistributionSpace}
    (P : StochasticProcessPackage D) (E : StochasticProcessEvidence P) :
    StochasticProcessClosed P := by
  exact And.intro E.samplePathsClosed
    (And.intro E.finiteDimensionalDistributionsClosed
      (And.intro E.kolmogorovConsistencyClosed E.measurabilityClosed))

end DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean
end HautevilleHouse