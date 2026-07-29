import canonicalLaneMathlib.AdmissibleClass
import ControlObservationSystemsGovernedFunctionalTheorem.ControlObservationSystemModel

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedFunctionalTheorem

structure FunctionalObservabilityPackage where
  observableSubspace : Prop
  unobservableRemainder : Prop
  detectabilityCondition : Prop
  observabilityGramianRank : Prop
  observableSubspaceClosed : observableSubspace
  unobservableRemainderClosed : unobservableRemainder
  detectabilityConditionClosed : detectabilityCondition
  observabilityGramianRankClosed : observabilityGramianRank

structure FunctionalObservabilityEvidence (P : FunctionalObservabilityPackage) where
  observableSubspaceCovered : P.observableSubspace
  unobservableRemainderCarried : P.unobservableRemainder
  detectabilityConditionSatisfied : P.detectabilityCondition
  observabilityGramianRankFull : P.observabilityGramianRank

def FunctionalObservabilityClosed (P : FunctionalObservabilityPackage) : Prop :=
  P.observableSubspace ∧ P.unobservableRemainder ∧ P.detectabilityCondition ∧ P.observabilityGramianRank

theorem functional_observability_closed_from_evidence
    (P : FunctionalObservabilityPackage) (E : FunctionalObservabilityEvidence P) :
    FunctionalObservabilityClosed P := by
  exact And.intro E.observableSubspaceCovered
    (And.intro E.unobservableRemainderCarried
      (And.intro E.detectabilityConditionSatisfied E.observabilityGramianRankFull))

end ControlObservationSystemsGovernedFunctionalTheorem
end HautevilleHouse