import CalculationIntegerSequencesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

structure GeneratingFunctionPackage where
  sequence : IntegerSequence
  closedFormExpression : Prop
  rationalGenerating : Prop
  combinatorialInterpretation : Prop
  proofOfClosedForm : closedFormExpression
  proofOfRational : rationalGenerating
  proofOfInterpretation : combinatorialInterpretation

def GeneratingFunctionClosed (P : GeneratingFunctionPackage) : Prop :=
  P.closedFormExpression ∧ P.rationalGenerating ∧ P.combinatorialInterpretation

theorem generating_function_closed_from_proof (P : GeneratingFunctionPackage) :
    GeneratingFunctionClosed P := by
  exact And.intro P.proofOfClosedForm (And.intro P.proofOfRational P.proofOfInterpretation)

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse
