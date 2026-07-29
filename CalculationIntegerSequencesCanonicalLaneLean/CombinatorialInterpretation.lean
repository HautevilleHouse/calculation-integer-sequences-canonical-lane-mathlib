import CalculationIntegerSequencesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

structure CombinatorialInterpretationPackage where
  sequence : IntegerSequence
  combinatorialModel : Prop
  bijectionProof : Prop
  enumerationFormula : Prop
  proofOfModel : combinatorialModel
  proofOfBijection : bijectionProof
  proofOfEnumeration : enumerationFormula

def CombinatorialInterpretationClosed (C : CombinatorialInterpretationPackage) : Prop :=
  C.combinatorialModel ∧ C.bijectionProof ∧ C.enumerationFormula

theorem combinatorial_interpretation_closed_from_proof (C : CombinatorialInterpretationPackage) :
    CombinatorialInterpretationClosed C := by
  exact And.intro C.proofOfModel (And.intro C.proofOfBijection C.proofOfEnumeration)

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse
