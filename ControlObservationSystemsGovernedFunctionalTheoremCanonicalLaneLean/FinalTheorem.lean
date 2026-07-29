import canonicalLaneMathlib.AdmissibleClass
import ControlObservationSystemsGovernedFunctionalTheorem.SeparationPrinciple

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedFunctionalTheorem

def ConstrainedControlObservationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_control_observation_endgame (A : AdmissibleClass) :
    ConstrainedControlObservationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ControlObservationSystemsGovernedFunctionalTheorem
end HautevilleHouse