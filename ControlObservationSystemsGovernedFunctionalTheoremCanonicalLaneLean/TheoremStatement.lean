import ControlObservationSystemsGovernedFunctionalTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedFunctionalTheoremCanonicalLaneLean

structure ControlObservationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ControlObservationAdmittedObject where
  space : ControlObservationSpace
  controlledSystem : Prop
  observedFunctional : Prop
  governingLaw : Prop
  conclusion : governingLaw

def ControlObservationWitnessClosed (O : ControlObservationAdmittedObject) : Prop :=
  O.governingLaw

end ControlObservationSystemsGovernedFunctionalTheoremCanonicalLaneLean
end HautevilleHouse