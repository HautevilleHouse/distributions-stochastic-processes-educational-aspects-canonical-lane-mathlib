import DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean

structure AdmissibleClass where
  object : DistributionsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DistributionsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean
end HautevilleHouse