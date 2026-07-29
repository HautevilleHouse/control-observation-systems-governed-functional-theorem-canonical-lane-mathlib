import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedFunctionalTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AdmissibleClass where
  object : ControlledObservableStructure
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ControlObservationClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ControlObservationSystemsGovernedFunctionalTheoremCanonicalLaneLean
end HautevilleHouse