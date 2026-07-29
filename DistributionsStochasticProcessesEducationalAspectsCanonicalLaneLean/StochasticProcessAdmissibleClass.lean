import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean

structure StochasticProcessAdmittedObject where
  stochasticProcessModel : Type u
  filtration : Type v
  adapted : Prop
  markovProperty : Prop
  stoppedProcesses : Prop
  conclusion : markovProperty

structure AdmissibleClass where
  object : StochasticProcessAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  StochasticProcessWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean
end HautevilleHouse