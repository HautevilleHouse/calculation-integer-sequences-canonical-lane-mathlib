import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

structure OEISEntry where
  id : String
  name : String
  firstTerms : List Nat
  knownProperties : List String

def OEISEntryKnown (E : OEISEntry) : Prop :=
  E.knownProperties.length > 0

theorem oeis_entry_known_from_evidence (E : OEISEntry) (h : OEISEntryKnown E) : E.knownProperties.length > 0 := h

structure OEISBridge where
  sourceId : String
  leanReference : String
  crossReferences : List String

def OEISBridgeClosed (B : OEISBridge) : Prop :=
  B.sourceId ≠ "" ∧ B.leanReference ≠ ""

theorem oeis_bridge_closed_from_evidence (B : OEISBridge) (h : OEISBridgeClosed B) : B.sourceId ≠ "" ∧ B.leanReference ≠ "" := h

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse
