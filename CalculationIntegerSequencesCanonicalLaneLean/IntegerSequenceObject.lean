import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

structure IntegerSequence where
  carrier : ℕ → ℤ

structure IntegerSequenceAdmittedObject where
  sequence : IntegerSequence
  positive : ∀ n, sequence.carrier n > 0
  conclusion : positive

def IntegerSequenceWitnessClosed (O : IntegerSequenceAdmittedObject) : Prop :=
  O.positive

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse