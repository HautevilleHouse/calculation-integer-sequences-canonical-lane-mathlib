import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculationIntegerSequencesCanonicalLaneLean.IntegerSequenceCore

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

structure AsymptoticPackage (P : IntegerSequencePackage) where
  asymptoticGrowthRate : ℝ
  subexponentialBound : Prop
  polynomialGrowth : Prop

structure AsymptoticEvidence {P : IntegerSequencePackage} (A : AsymptoticPackage P) where
  subexponentialBoundClosed : A.subexponentialBound
  polynomialGrowthClosed : A.polynomialGrowth

def AsymptoticClosed {P : IntegerSequencePackage} (A : AsymptoticPackage P) : Prop :=
  A.subexponentialBound ∧ A.polynomialGrowth

theorem asymptotic_closed_from_evidence {P : IntegerSequencePackage}
    (A : AsymptoticPackage P) (E : AsymptoticEvidence A) : AsymptoticClosed A := by
  exact And.intro E.subexponentialBoundClosed E.polynomialGrowthClosed

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse
