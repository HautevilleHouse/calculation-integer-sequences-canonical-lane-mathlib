import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

inductive RecurrenceType where
  | linearHomogeneous
  | linearInhomogeneous
  | nonLinear

structure RecurrenceClassification where
  recurrenceType : RecurrenceType
  order : Nat
  characteristicPolynomial : Option (List Nat) := none

def RecurrenceClassificationClosed (R : RecurrenceClassification) : Prop :=
  R.recurrenceType = RecurrenceType.linearHomogeneous →
  R.characteristicPolynomial.isSome

theorem recurrence_classification_closed_from_evidence (R : RecurrenceClassification) : RecurrenceClassificationClosed R := by
  intro htype
  cases htype
  exact R.characteristicPolynomial.isSome

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse
