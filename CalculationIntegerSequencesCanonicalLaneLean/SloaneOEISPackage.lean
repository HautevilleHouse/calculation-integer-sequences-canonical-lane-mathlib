import CalculationIntegerSequencesCanonicalLaneLean.IntegerSequenceAdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

structure SloaneOEISPackage where
  entryID : String
  sequence : ℕ → ℤ
  closedForm : Prop
  recurrenceSatisfied : Prop
  generatingFunction : Prop

structure SloaneOEISEvidence (S : SloaneOEISPackage) where
  closedFormClosed : S.closedForm
  recurrenceSatisfiedClosed : S.recurrenceSatisfied
  generatingFunctionClosed : S.generatingFunction

def SloaneOEISClosed (S : SloaneOEISPackage) : Prop :=
  S.closedForm ∧ S.recurrenceSatisfied ∧ S.generatingFunction

theorem sloane_oeis_closed_from_evidence (S : SloaneOEISPackage)
    (E : SloaneOEISEvidence S) : SloaneOEISClosed S :=
  And.intro E.closedFormClosed
    (And.intro E.recurrenceSatisfiedClosed E.generatingFunctionClosed)

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse
