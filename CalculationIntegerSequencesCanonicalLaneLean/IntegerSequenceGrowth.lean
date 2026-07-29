import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

structure IntegerSequenceGrowthPackage where
  seq : ℕ → ℤ
  growthRate : ℝ
  subExponential : Prop
  polynomialBound : Prop
  exponentialBound : Prop

structure IntegerSequenceGrowthEvidence (G : IntegerSequenceGrowthPackage) where
  subExponentialClosed : G.subExponential
  polynomialBoundClosed : G.polynomialBound
  exponentialBoundClosed : G.exponentialBound

def IntegerSequenceGrowthClosed (G : IntegerSequenceGrowthPackage) : Prop :=
  G.subExponential ∧ G.polynomialBound ∧ G.exponentialBound

theorem integer_sequence_growth_closed_from_evidence
    (G : IntegerSequenceGrowthPackage) (E : IntegerSequenceGrowthEvidence G) :
    IntegerSequenceGrowthClosed G := by
  exact And.intro E.subExponentialClosed
    (And.intro E.polynomialBoundClosed E.exponentialBoundClosed)

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse