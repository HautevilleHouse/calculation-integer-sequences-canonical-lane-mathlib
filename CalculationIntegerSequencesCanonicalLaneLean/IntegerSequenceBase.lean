import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

structure IntegerSequence where
  natToInt : Nat → ℤ

structure GeneratingFunction where
  formalSeries : Type u
  expansionMatchesSequence : Prop
  closedFormExpression : Type v

structure LinearRecurrence where
  order : Nat
  coefficients : List ℤ
  initialTerms : List ℤ
  recurrenceHolds : Prop

structure ClosedForm where
  expression : String
  isValid : Prop
  equivalentToSequence : Prop

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse