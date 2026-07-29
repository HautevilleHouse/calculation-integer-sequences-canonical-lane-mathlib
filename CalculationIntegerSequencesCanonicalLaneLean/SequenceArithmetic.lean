import CalculationIntegerSequencesCanonicalLaneLean.AdmissibleClass

/-!
# Sequence Arithmetic Package
-/

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

structure SequenceArithmeticPackage (G : IntegerSequenceObject) where
  additionClosed : Prop
  multiplicationClosed : Prop
  convolutionClosed : Prop

structure SequenceArithmeticEvidence {G : IntegerSequenceObject} (P : SequenceArithmeticPackage G) where
  additionClosedClosed : P.additionClosed
  multiplicationClosedClosed : P.multiplicationClosed
  convolutionClosedClosed : P.convolutionClosed

def SequenceArithmeticClosed {G : IntegerSequenceObject} (P : SequenceArithmeticPackage G) : Prop :=
  P.additionClosed ∧ P.multiplicationClosed ∧ P.convolutionClosed

theorem sequence_arithmetic_closed_from_evidence {G : IntegerSequenceObject} (P : SequenceArithmeticPackage G) (E : SequenceArithmeticEvidence P) :
    SequenceArithmeticClosed P := by
  exact And.intro E.additionClosedClosed (And.intro E.multiplicationClosedClosed E.convolutionClosedClosed)

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse