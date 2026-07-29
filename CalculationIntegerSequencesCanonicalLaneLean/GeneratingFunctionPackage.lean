import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

structure GeneratingFunction where
  formalPowerSeries : String
  rationalForm : Bool
  closedExpression : Option String := none

structure GeneratingFunctionEvidence (G : GeneratingFunction) where
  formalPowerSeriesClosed : G.formalPowerSeries ≠ ""
  rationalFormClosed : G.rationalForm

def GeneratingFunctionClosed (G : GeneratingFunction) : Prop :=
  G.formalPowerSeries ≠ "" ∧ G.rationalForm

theorem generating_function_closed_from_evidence (G : GeneratingFunction) (E : GeneratingFunctionEvidence G) : GeneratingFunctionClosed G := by
  exact And.intro E.formalPowerSeriesClosed E.rationalFormClosed

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse
