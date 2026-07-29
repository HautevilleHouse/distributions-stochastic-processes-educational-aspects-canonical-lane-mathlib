import DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean

structure DistributionSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  linearStructure : Prop
  smoothFunctions : Type
  dualSpace : Type
  continuityOfDual : Prop

structure DistributionSpaceEvidence (D : DistributionSpace) where
  linearStructureClosed : D.linearStructure
  continuityOfDualClosed : D.continuityOfDual

def DistributionSpaceClosed (D : DistributionSpace) : Prop :=
  D.linearStructure ∧ D.continuityOfDual

theorem distribution_space_closed_from_evidence (D : DistributionSpace)
    (E : DistributionSpaceEvidence D) : DistributionSpaceClosed D := by
  exact And.intro E.linearStructureClosed E.continuityOfDualClosed

end DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean
end HautevilleHouse