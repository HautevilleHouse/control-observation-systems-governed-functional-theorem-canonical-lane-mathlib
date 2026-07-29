import canonicalLaneMathlib.AdmissibleClass
import ControlObservationSystemsGovernedFunctionalTheorem.ControllerStructure

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedFunctionalTheorem

structure OptimalControlBarrierPackage {S : ControlObservationSystem}
    (D : ControlledDynamics S) (C : ControllerStructure D) where
  costFunctional : Type u
  barrierFunction : S.stateSpace → ℝ
  barrierSuperMartingale : Prop
  barrierSuperMartingaleTerm : barrierSuperMartingale

structure OptimalControlBarrierEvidence {S : ControlObservationSystem}
    {D : ControlledDynamics S} {C : ControllerStructure D}
    (B : OptimalControlBarrierPackage D C) where
  barrierSuperMartingaleClosed : B.barrierSuperMartingale

def OptimalControlBarrierClosed {S : ControlObservationSystem}
    {D : ControlledDynamics S} {C : ControllerStructure D}
    (B : OptimalControlBarrierPackage D C) : Prop :=
  B.barrierSuperMartingale

theorem optimal_control_barrier_closed_from_evidence
    {S : ControlObservationSystem} {D : ControlledDynamics S}
    {C : ControllerStructure D} (B : OptimalControlBarrierPackage D C)
    (E : OptimalControlBarrierEvidence B) : OptimalControlBarrierClosed B := by
  exact E.barrierSuperMartingaleClosed

end ControlObservationSystemsGovernedFunctionalTheorem
end HautevilleHouse