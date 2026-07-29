import canonicalLaneMathlib.AdmissibleClass
import ControlObservationSystemsGovernedFunctionalTheorem.ControllerStructure

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedFunctionalTheorem

structure SeparationPrinciplePackage {S : ControlObservationSystem}
    (D : ControlledDynamics S) (F : ObservationFilter S) (C : ControllerStructure D) where
  observerBasedController : Prop
  certaintyEquivalenceValid : Prop
  separationHolds : observerBasedController ∧ certaintyEquivalenceValid
  separationHoldsTerm : separationHolds

structure SeparationPrincipleEvidence {S : ControlObservationSystem}
    {D : ControlledDynamics S} {F : ObservationFilter S} {C : ControllerStructure D}
    (P : SeparationPrinciplePackage D F C) where
  observerBasedControllerClosed : P.observerBasedController
  certaintyEquivalenceValidClosed : P.certaintyEquivalenceValid

def SeparationPrincipleClosed {S : ControlObservationSystem}
    {D : ControlledDynamics S} {F : ObservationFilter S} {C : ControllerStructure D}
    (P : SeparationPrinciplePackage D F C) : Prop :=
  P.observerBasedController ∧ P.certaintyEquivalenceValid

theorem separation_principle_closed_from_evidence
    {S : ControlObservationSystem} {D : ControlledDynamics S}
    {F : ObservationFilter S} {C : ControllerStructure D}
    (P : SeparationPrinciplePackage D F C) (E : SeparationPrincipleEvidence P) :
    SeparationPrincipleClosed P := by
  exact And.intro E.observerBasedControllerClosed E.certaintyEquivalenceValidClosed

end ControlObservationSystemsGovernedFunctionalTheorem
end HautevilleHouse