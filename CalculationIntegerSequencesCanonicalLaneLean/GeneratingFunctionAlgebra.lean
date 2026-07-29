import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculationIntegerSequencesCanonicalLaneLean.IntegerSequenceCore

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

structure GeneratingFunctionPackage (P : IntegerSequencePackage) where
  ordinaryGeneratingFunction : ℚ⟦X⟧
  exponentialGeneratingFunction : ℚ⟦X⟧
  rationalOrdinary : Prop
  algebraicExponential : Prop

structure GeneratingFunctionEvidence {P : IntegerSequencePackage}
    (G : GeneratingFunctionPackage P) where
  rationalOrdinaryClosed : G.rationalOrdinary
  algebraicExponentialClosed : G.algebraicExponential

def GeneratingFunctionClosed {P : IntegerSequencePackage}
    (G : GeneratingFunctionPackage P) : Prop :=
  G.rationalOrdinary ∧ G.algebraicExponential

theorem generating_function_closed_from_evidence {P : IntegerSequencePackage}
    (G : GeneratingFunctionPackage P) (E : GeneratingFunctionEvidence G) :
    GeneratingFunctionClosed G := by
  exact And.intro E.rationalOrdinaryClosed E.algebraicExponentialClosed

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse
