import CalculationIntegerSequencesCanonicalLaneLean.GeneratingFunction

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

structure RecurrencePackage {S : SloaneOEISPackage} where
  order : ℕ
  linearRecurrence : ℕ → ℤ
  characteristicPolynomial : Prop
  closedFormSolution : Prop

structure RecurrenceEvidence {S : SloaneOEISPackage}
    (R : RecurrencePackage) where
  linearRecurrenceClosed : R.linearRecurrence 0 = 0 -- placeholder
  characteristicPolynomialClosed : R.characteristicPolynomial
  closedFormSolutionClosed : R.closedFormSolution

def RecurrenceClosed {S : SloaneOEISPackage}
    (R : RecurrencePackage) : Prop :=
  R.characteristicPolynomial ∧ R.closedFormSolution

theorem recurrence_closed_from_evidence {S : SloaneOEISPackage}
    (R : RecurrencePackage) (E : RecurrenceEvidence R) :
    RecurrenceClosed R :=
  And.intro E.characteristicPolynomialClosed E.closedFormSolutionClosed

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse
