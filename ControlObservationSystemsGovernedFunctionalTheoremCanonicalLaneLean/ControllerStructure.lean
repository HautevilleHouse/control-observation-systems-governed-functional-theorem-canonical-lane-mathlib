import canonicalLaneMathlib.AdmissibleClass
import ControlObservationSystemsGovernedFunctionalTheorem.ControlObservationSystemModel

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedFunctionalTheorem

structure ControllerStructure {S : ControlObservationSystem} (D : ControlledDynamics S) where
  feedbackLaw : S.stateSpace → S.stateSpace
  stabilizationGuarantee : Prop
  robustnessMargin : Prop
  stabilizationGuaranteeClosed : stabilizationGuarantee
  robustnessMarginClosed : robustnessMargin

structure ControllerStructureEvidence {S : ControlObservationSystem} {D : ControlledDynamics S}
    (C : ControllerStructure D) where
  stabilizationGuaranteeSatisfied : C.stabilizationGuarantee
  robustnessMarginSatisfied : C.robustnessMargin

def ControllerStructureClosed {S : ControlObservationSystem} {D : ControlledDynamics S}
    (C : ControllerStructure D) : Prop :=
  C.stabilizationGuarantee ∧ C.robustnessMargin

theorem controller_structure_closed_from_evidence
    {S : ControlObservationSystem} {D : ControlledDynamics S}
    (C : ControllerStructure D) (E : ControllerStructureEvidence C) :
    ControllerStructureClosed C := by
  exact And.intro E.stabilizationGuaranteeSatisfied E.robustnessMarginSatisfied

end ControlObservationSystemsGovernedFunctionalTheorem
end HautevilleHouse