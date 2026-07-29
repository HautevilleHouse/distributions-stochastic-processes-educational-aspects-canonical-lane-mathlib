import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean.ProbabilitySpacePackage

namespace HautevilleHouse
namespace DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean

structure RandomVariablePackage (P : ProbabilitySpacePackage) where
  codomain : Type u
  codomainSigmaAlgebra : Set (Set codomain)
  measurable : Prop
  distribution : Set codomain → ℝ
  distributionDefined : Prop

structure RandomVariableEvidence {P : ProbabilitySpacePackage}
    (R : RandomVariablePackage P) where
  measurableClosed : R.measurable
  distributionDefinedClosed : R.distributionDefined

def RandomVariableClosed {P : ProbabilitySpacePackage}
    (R : RandomVariablePackage P) : Prop :=
  R.measurable ∧ R.distributionDefined

theorem random_variable_closed_from_evidence {P : ProbabilitySpacePackage}
    (R : RandomVariablePackage P) (E : RandomVariableEvidence R) :
    RandomVariableClosed R := by
  exact And.intro E.measurableClosed E.distributionDefinedClosed

end DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean
end HautevilleHouse
