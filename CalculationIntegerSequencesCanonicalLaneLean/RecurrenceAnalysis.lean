import HautevilleHouse.CalculationIntegerSequencesCanonicalLaneLean.GeneratingFunction

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

structure RecurrencePackage (S : SequenceSpace) (G : GeneratingFunctionPackage S) where
  order : ℕ
  coefficients : ℕ → S.carrier
  initialValues : List (S.carrier)
  recurrenceProved : Prop
  closedFormDerived : Prop
  recurrenceProvedClosed : recurrenceProved
  closedFormDerivedClosed : closedFormDerived

def RecurrenceClosed (R : RecurrencePackage S G) : Prop :=
  R.recurrenceProved ∧ R.closedFormDerived

theorem recurrence_closed_from_package (R : RecurrencePackage S G) : RecurrenceClosed R := by
  exact And.intro R.recurrenceProvedClosed R.closedFormDerivedClosed

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse