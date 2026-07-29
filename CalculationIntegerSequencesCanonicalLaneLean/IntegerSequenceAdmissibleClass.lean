import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

structure IntegerSequenceObject where
  sequence : ℕ → ℤ
  property : Prop
  conclusion : property

structure AdmissibleClass where
  object : IntegerSequenceObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse
