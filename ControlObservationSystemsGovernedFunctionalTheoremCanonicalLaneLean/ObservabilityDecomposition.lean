import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedFunctionalTheoremCanonicalLaneLean

structure ObservabilityDecompositionPackage where
  observableSubspace : Prop
  unobservableSubspace : Prop
  detectabilityCondition : Prop
  observabilityGramian : Prop

structure ObservabilityDecompositionEvidence (D : ObservabilityDecompositionPackage) where
  observableSubspaceClosed : D.observableSubspace
  unobservableSubspaceClosed : D.unobservableSubspace
  detectabilityConditionClosed : D.detectabilityCondition
  observabilityGramianClosed : D.observabilityGramian

def ObservabilityDecompositionClosed (D : ObservabilityDecompositionPackage) : Prop :=
  D.observableSubspace ∧ D.unobservableSubspace ∧
  D.detectabilityCondition ∧ D.observabilityGramian

theorem observability_decomposition_closed_from_evidence
    (D : ObservabilityDecompositionPackage) (E : ObservabilityDecompositionEvidence D) :
    ObservabilityDecompositionClosed D := by
  exact And.intro E.observableSubspaceClosed
    (And.intro E.unobservableSubspaceClosed
      (And.intro E.detectabilityConditionClosed E.observabilityGramianClosed))

end ControlObservationSystemsGovernedFunctionalTheoremCanonicalLaneLean
end HautevilleHouse