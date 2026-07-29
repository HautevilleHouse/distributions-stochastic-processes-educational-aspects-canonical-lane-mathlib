import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean

structure ProbabilitySpacePackage where
  sampleSpace : Type u
  sigmaAlgebra : Set (Set sampleSpace)
  probabilityMeasure : (Set sampleSpace) → ℝ
  sigmaAlgebraClosedUnderComplements : Prop
  sigmaAlgebraClosedUnderCountableUnions : Prop
  probabilityMeasureNonnegative : Prop
  probabilityMeasureTotal : Prop
  probabilityMeasureCountablyAdditive : Prop

structure ProbabilitySpaceEvidence (P : ProbabilitySpacePackage) where
  sigmaAlgebraClosedUnderComplementsClosed : P.sigmaAlgebraClosedUnderComplements
  sigmaAlgebraClosedUnderCountableUnionsClosed : P.sigmaAlgebraClosedUnderCountableUnions
  probabilityMeasureNonnegativeClosed : P.probabilityMeasureNonnegative
  probabilityMeasureTotalClosed : P.probabilityMeasureTotal
  probabilityMeasureCountablyAdditiveClosed : P.probabilityMeasureCountablyAdditive

def ProbabilitySpaceClosed (P : ProbabilitySpacePackage) : Prop :=
  P.sigmaAlgebraClosedUnderComplements ∧
  P.sigmaAlgebraClosedUnderCountableUnions ∧
  P.probabilityMeasureNonnegative ∧
  P.probabilityMeasureTotal ∧
  P.probabilityMeasureCountablyAdditive

theorem probability_space_closed_from_evidence (P : ProbabilitySpacePackage)
    (E : ProbabilitySpaceEvidence P) : ProbabilitySpaceClosed P := by
  exact And.intro E.sigmaAlgebraClosedUnderComplementsClosed
    (And.intro E.sigmaAlgebraClosedUnderCountableUnionsClosed
      (And.intro E.probabilityMeasureNonnegativeClosed
        (And.intro E.probabilityMeasureTotalClosed
          E.probabilityMeasureCountablyAdditiveClosed)))

end DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean
end HautevilleHouse
