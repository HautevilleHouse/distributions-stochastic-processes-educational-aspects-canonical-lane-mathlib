import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean

structure ConvergenceInDistributionPackage where
  sequenceOfDistributions : Type u
  targetDistribution : Type v
  convergenceDefined : Prop
  portmanteauLemmasProved : Prop
  continuousMappingTheoremProved : Prop

structure ConvergenceInDistributionEvidence (C : ConvergenceInDistributionPackage) where
  convergenceDefinedClosed : C.convergenceDefined
  portmanteauLemmasProvedClosed : C.portmanteauLemmasProved
  continuousMappingTheoremProvedClosed : C.continuousMappingTheoremProved

def ConvergenceInDistributionClosed (C : ConvergenceInDistributionPackage) : Prop :=
  C.convergenceDefined ∧ C.portmanteauLemmasProved ∧ C.continuousMappingTheoremProved

theorem convergence_in_distribution_closed_from_evidence (C : ConvergenceInDistributionPackage)
    (E : ConvergenceInDistributionEvidence C) : ConvergenceInDistributionClosed C := by
  exact And.intro E.convergenceDefinedClosed (And.intro E.portmanteauLemmasProvedClosed E.continuousMappingTheoremProvedClosed)

end DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean
end HautevilleHouse
