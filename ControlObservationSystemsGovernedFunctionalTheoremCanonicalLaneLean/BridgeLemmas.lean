import ControlObservationSystemsGovernedFunctionalTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedFunctionalTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ControlObservationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ControlObservationSystemsGovernedFunctionalTheoremCanonicalLaneLean
end HautevilleHouse