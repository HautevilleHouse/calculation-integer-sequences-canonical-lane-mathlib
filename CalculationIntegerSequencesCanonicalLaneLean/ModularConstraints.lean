import CalculationIntegerSequencesCanonicalLaneLean.IntegerSequenceDefs

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

structure ModularConstraintPackage {S : IntegerSequence} where
  modulus : ℕ
  periodicPattern : Prop
  congruenceClosed : Prop
  patternMatchesTerms : Prop
  modularEvidence : periodicPattern ∧ congruenceClosed ∧ patternMatchesTerms
  modularEvidenceClosed : modularEvidence

def ModularConstraintsClosed {S : IntegerSequence} (M : ModularConstraintPackage S) : Prop :=
  M.modularEvidence

theorem modular_constraints_closed_from_evidence {S : IntegerSequence} (M : ModularConstraintPackage S) : ModularConstraintsClosed M := by
  exact M.modularEvidenceClosed

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse