import CalculationIntegerSequencesCanonicalLaneLean.ConvergenceClosedForm

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SequenceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion.1

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse