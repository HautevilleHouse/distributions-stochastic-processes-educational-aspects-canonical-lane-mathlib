import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean

structure EducationalAspects where
  curriculumLevel : String
  prerequisites : List String
  learningObjectives : List String
  assessmentCriteria : List String

def EducationalAspectsClosed (E : EducationalAspects) : Prop :=
  (E.curriculumLevel ≠ "") ∧ (E.prerequisites ≠ []) ∧ (E.learningObjectives ≠ [])

end DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean
end HautevilleHouse