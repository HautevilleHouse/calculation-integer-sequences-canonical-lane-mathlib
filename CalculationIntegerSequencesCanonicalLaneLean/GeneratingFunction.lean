import CalculationIntegerSequencesCanonicalLaneLean.SloaneOEISPackage

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

structure GeneratingFunctionPackage {S : SloaneOEISPackage} where
  rationalFunction : Prop
  partialFractionDecomposition : Prop
  explicitCoefficientFormula : Prop

structure GeneratingFunctionEvidence {S : SloaneOEISPackage}
    (G : GeneratingFunctionPackage) where
  rationalFunctionClosed : G.rationalFunction
  partialFractionDecompositionClosed : G.partialFractionDecomposition
  explicitCoefficientFormulaClosed : G.explicitCoefficientFormula

def GeneratingFunctionClosed {S : SloaneOEISPackage}
    (G : GeneratingFunctionPackage) : Prop :=
  G.rationalFunction ∧ G.partialFractionDecomposition ∧ G.explicitCoefficientFormula

theorem generating_function_closed_from_evidence {S : SloaneOEISPackage}
    (G : GeneratingFunctionPackage) (E : GeneratingFunctionEvidence G) :
    GeneratingFunctionClosed G :=
  And.intro E.rationalFunctionClosed
    (And.intro E.partialFractionDecompositionClosed E.explicitCoefficientFormulaClosed)

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse
