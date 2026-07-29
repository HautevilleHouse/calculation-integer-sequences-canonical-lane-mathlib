import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

structure IntegerSequence where
  terms : ℕ → ℤ
  indexStart : ℕ

structure SequenceAdmittedObject where
  sequence : IntegerSequence
  termwiseProperty : Prop
  convergenceProperty : Prop
  conclusion : Prop

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse
