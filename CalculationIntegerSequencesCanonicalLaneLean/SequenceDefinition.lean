import HautevilleHouse.CalculationIntegerSequencesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

structure SequenceSpace where
  carrier : Type
  indexSet : ℕ → Prop
  values : (ℓ : ℕ) → carrier

structure SequenceAdmittedObject where
  space : SequenceSpace
  closedFormDefined : Prop
  generatingFunctionClosed : Prop
  recurrenceProved : Prop
  conclusion : closedFormDefined ∧ generatingFunctionClosed ∧ recurrenceProved

def SequenceWitnessClosed (O : SequenceAdmittedObject) : Prop :=
  O.conclusion

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse