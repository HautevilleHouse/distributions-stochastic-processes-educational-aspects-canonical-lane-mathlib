import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean

structure StochasticCalculusPackage {D : DistributionSpace}
    {S : StochasticProcessPackage D} where
  itoIntegral : Type u
  quadraticVariation : Prop
  itoFormula : Prop
  sdeWellPosedness : Prop

structure StochasticCalculusEvidence {D : DistributionSpace}
    {S : StochasticProcessPackage D} (C : StochasticCalculusPackage S) where
  quadraticVariationClosed : C.quadraticVariation
  itoFormulaClosed : C.itoFormula
  sdeWellPosednessClosed : C.sdeWellPosedness

def StochasticCalculusClosed {D : DistributionSpace}
    {S : StochasticProcessPackage D} (C : StochasticCalculusPackage S) : Prop :=
  C.quadraticVariation ∧ C.itoFormula ∧ C.sdeWellPosedness

theorem stochastic_calculus_closed_from_evidence
    {D : DistributionSpace} {S : StochasticProcessPackage D}
    (C : StochasticCalculusPackage S) (E : StochasticCalculusEvidence C) :
    StochasticCalculusClosed C := by
  exact And.intro E.quadraticVariationClosed (And.intro E.itoFormulaClosed E.sdeWellPosednessClosed)

end DistributionsStochasticProcessesEducationalAspectsCanonicalLaneLean
end HautevilleHouse
