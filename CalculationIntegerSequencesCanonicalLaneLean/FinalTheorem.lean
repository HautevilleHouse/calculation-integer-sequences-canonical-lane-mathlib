import CalculationIntegerSequencesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

def ConstrainedIntegerSequenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_integer_sequence_endgame (A : AdmissibleClass) :
    ConstrainedIntegerSequenceClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse
