import CalculationIntegerSequencesCanonicalLaneLean.IntegerSequenceAdmissibleClass

namespace HautevilleHouse
namespace CalculationIntegerSequencesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end CalculationIntegerSequencesCanonicalLaneLean
end HautevilleHouse
