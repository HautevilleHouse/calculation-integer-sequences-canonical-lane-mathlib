import CalculationIntegerSequencesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

structure IntegerSequence where
  carrier : Type
  terms : ℕ → carrier
  law : Prop

structure AdmittedIntegerSequence where
  seq : IntegerSequence
  closedFormClosed : Prop
  recurrenceClosed : Prop
  conclusion : closedFormClosed ∧ recurrenceClosed

def SequenceWitnessClosed (O : AdmittedIntegerSequence) : Prop :=
  O.conclusion

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse