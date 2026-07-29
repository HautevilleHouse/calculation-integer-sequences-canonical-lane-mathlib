import CalculationIntegerSequencesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Nat.Basic

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure IntegerSequence where
  carrier : Type
  sequences : ℕ → carrier

structure IntegerSequenceObject where
  seq : IntegerSequence
  closedForm : Prop
  generatingFunction : Prop
  asymptoticEstimate : Prop
  conclusion : closedForm ∧ generatingFunction ∧ asymptoticEstimate

structure IntegerSequenceEndgameState where
  object : IntegerSequenceObject

def IntegerSequenceWitnessClosed (O : IntegerSequenceObject) : Prop :=
  O.closedForm ∧ O.generatingFunction ∧ O.asymptoticEstimate

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse
