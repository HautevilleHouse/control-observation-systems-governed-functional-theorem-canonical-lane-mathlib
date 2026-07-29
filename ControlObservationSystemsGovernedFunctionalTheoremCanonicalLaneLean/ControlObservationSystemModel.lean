import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedFunctionalTheorem

structure ControlObservationSystem where
  stateSpace : Type u
  observationSpace : Type v
  dynamics : stateSpace → stateSpace
  observationMap : stateSpace → observationSpace
  deterministic : Prop
  completeObservation : Prop
  deterministicTerm : deterministic
  completeObservationTerm : completeObservation

structure ControlledDynamics (S : ControlObservationSystem) where
  controlAction : S.stateSpace → S.stateSpace
  controlLaw : S.stateSpace → Prop
  invariancePreserved : Prop
  invariancePreservedTerm : invariancePreserved

structure ObservationFilter (S : ControlObservationSystem) where
  filterState : Type w
  predictionStep : filterState → filterState
  correctionStep : filterState → S.observationSpace → filterState
  innovationComputed : Prop
  innovationComputedTerm : innovationComputed

end ControlObservationSystemsGovernedFunctionalTheorem
end HautevilleHouse