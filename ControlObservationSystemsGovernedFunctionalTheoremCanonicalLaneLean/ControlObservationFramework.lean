import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedFunctionalTheoremCanonicalLaneLean

structure ControlledObservableStructure where
  stateSpace : Type u
  observationSpace : Type v
  controlSpace : Type w
  observationOperator : stateSpace → observationSpace
  dynamics : controlSpace → stateSpace → stateSpace
  reachabilityCondition : Prop
  controllabilityCondition : Prop
  observabilityCondition : Prop
  controlLawExistence : Prop
  reachabilityConditionTerm : reachabilityCondition
  controllabilityConditionTerm : controllabilityCondition
  observabilityConditionTerm : observabilityCondition
  controlLawExistenceTerm : controlLawExistence

structure ControlObservationEvidence (C : ControlledObservableStructure) where
  reachabilityClosed : C.reachabilityCondition
  controllabilityClosed : C.controllabilityCondition
  observabilityClosed : C.observabilityCondition
  controlLawExistenceClosed : C.controlLawExistence

def ControlObservationClosed (C : ControlledObservableStructure) : Prop :=
  C.reachabilityCondition ∧ C.controllabilityCondition ∧ C.observabilityCondition ∧ C.controlLawExistence

theorem control_observation_closed_from_evidence (C : ControlledObservableStructure) (E : ControlObservationEvidence C) :
    ControlObservationClosed C := by
  exact And.intro E.reachabilityClosed (And.intro E.controllabilityClosed (And.intro E.observabilityClosed E.controlLawExistenceClosed))

end ControlObservationSystemsGovernedFunctionalTheoremCanonicalLaneLean
end HautevilleHouse