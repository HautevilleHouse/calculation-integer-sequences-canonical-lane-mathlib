import CalculationIntegerSequencesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

structure AsymptoticAnalysisPackage where
  sequence : IntegerSequence
  growthOrder : Prop
  leadingTerm : Prop
  errorBound : Prop
  proofOfGrowth : growthOrder
  proofOfLeadingTerm : leadingTerm
  proofOfErrorBound : errorBound

def AsymptoticAnalysisClosed (A : AsymptoticAnalysisPackage) : Prop :=
  A.growthOrder ∧ A.leadingTerm ∧ A.errorBound

theorem asymptotic_analysis_closed_from_proof (A : AsymptoticAnalysisPackage) :
    AsymptoticAnalysisClosed A := by
  exact And.intro A.proofOfGrowth (And.intro A.proofOfLeadingTerm A.proofOfErrorBound)

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse
