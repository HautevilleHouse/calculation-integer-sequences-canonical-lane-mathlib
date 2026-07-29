import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

structure ClosedForm where
  expression : String
  verificationProof : Prop
  domain : Nat

def ClosedFormVerified (C : ClosedForm) : Prop :=
  C.verificationProof

theorem closed_form_verified_from_evidence (C : ClosedForm) (h : ClosedFormVerified C) : C.verificationProof := h

theorem any_closed_form_carries_remainder (C : ClosedForm) : C.verificationProof ∨ ¬C.verificationProof := by
  exact Classical.em C.verificationProof

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse
