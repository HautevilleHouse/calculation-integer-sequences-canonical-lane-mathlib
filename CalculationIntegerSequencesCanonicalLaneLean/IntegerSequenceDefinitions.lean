import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

structure IntegerSequence where
  name : String
  terms : Nat -> Nat
  recurrence : String
  closedForm : Option (Nat -> Nat) := none

definition IntegerSequenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem integer_sequence_closure (A : AdmissibleClass) : IntegerSequenceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse
