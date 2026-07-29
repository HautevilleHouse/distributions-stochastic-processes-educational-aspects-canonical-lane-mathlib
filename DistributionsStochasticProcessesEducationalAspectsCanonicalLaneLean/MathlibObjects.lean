import DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DistributionsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DistributionsAdmittedObject where
  space : DistributionsSpace
  probabilityMeasure : Prop
  distributionFamily : Prop
  convergenceInDistribution : Prop
  conclusion : convergenceInDistribution

structure DistributionsEndgameState where
  object : DistributionsAdmittedObject

def DistributionsWitnessClosed (O : DistributionsAdmittedObject) : Prop :=
  O.convergenceInDistribution

end DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean
end HautevilleHouse