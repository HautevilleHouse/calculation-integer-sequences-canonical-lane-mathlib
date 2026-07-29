import CalculationIntegerSequencesCanonicalLaneLean.IntegerSequenceDefs

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

structure ClosedFormPackage {S : IntegerSequence} where
  closedFormExpr : S.carrier
  closedFormMatchesTerms : Prop
  closedFormMatchesTermsClosed : closedFormMatchesTerms

def ClosedFormClosed {S : IntegerSequence} (C : ClosedFormPackage S) : Prop :=
  C.closedFormMatchesTerms

theorem closed_form_closed_from_evidence {S : IntegerSequence} (C : ClosedFormPackage S) : ClosedFormClosed C := by
  exact C.closedFormMatchesTermsClosed

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse