import DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def distributionsProjection : Projection DistributionsEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem distributions_projection_idempotent (x : DistributionsEndgameState) :
    distributionsProjection.toFun (distributionsProjection.toFun x) = distributionsProjection.toFun x := by
  exact distributionsProjection.idempotent x

end DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean
end HautevilleHouse