import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean

def ConstrainedStochasticProcessClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_stochastic_process_endgame (A : AdmissibleClass) :
    ConstrainedStochasticProcessClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean
end HautevilleHouse