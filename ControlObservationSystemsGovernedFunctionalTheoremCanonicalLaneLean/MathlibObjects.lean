import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedFunctionalTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ControlObservationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ControlObservationAdmittedObject where
  space : ControlObservationSpace
  controlledDynamics : Prop
  observationMap : Prop
  functionalTheorem : Prop
  endpointModel : Type
  endpointTopology : TopologicalSpace endpointModel
  governingFunctionalReachable : Prop
  conclusion : governingFunctionalReachable

def ControlObservationWitnessClosed (O : ControlObservationAdmittedObject) : Prop :=
  O.governingFunctionalReachable

end ControlObservationSystemsGovernedFunctionalTheoremCanonicalLaneLean
end HautevilleHouse