import CalculationIntegerSequencesCanonicalLaneLean.RecurrencePackage

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

structure EnumerationBijectionPackage {S : SloaneOEISPackage} where
  combinatorialInterpretation : Prop
  bijectionExists : Prop
  cardinalityMatch : Prop

structure EnumerationBijectionEvidence {S : SloaneOEISPackage}
    (E : EnumerationBijectionPackage) where
  combinatorialInterpretationClosed : E.combinatorialInterpretation
  bijectionExistsClosed : E.bijectionExists
  cardinalityMatchClosed : E.cardinalityMatch

def EnumerationBijectionClosed {S : SloaneOEISPackage}
    (E : EnumerationBijectionPackage) : Prop :=
  E.combinatorialInterpretation ∧ E.bijectionExists ∧ E.cardinalityMatch

theorem enumeration_bijection_closed_from_evidence {S : SloaneOEISPackage}
    (E : EnumerationBijectionPackage) (Ev : EnumerationBijectionEvidence E) :
    EnumerationBijectionClosed E :=
  And.intro Ev.combinatorialInterpretationClosed
    (And.intro Ev.bijectionExistsClosed Ev.cardinalityMatchClosed)

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse
