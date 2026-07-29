import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean

structure DistributionSpace where
  testFunctionSpace : Type u
  topology : TopologicalSpace testFunctionSpace
  continuousDual : Type v
  evaluation : testFunctionSpace × continuousDual → ℝ
  linearity : Prop
  continuity : Prop

def DistributionSpaceClosed (D : DistributionSpace) : Prop :=
  D.linearity ∧ D.continuity

end DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean
end HautevilleHouse