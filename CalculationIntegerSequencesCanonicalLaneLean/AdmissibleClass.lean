import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

structure AdmissibleClass where
  object : IntegerSequenceObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  IntegerSequenceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse
