import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStructuralGeologyCanonicalLaneLean

def bridgeClosed (A : StressStrainAdmissibleClass) : Prop :=
  A.stressEquilibrium ∧ A.strainCompatibility

theorem bridge_from_admissible_class (A : StressStrainAdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.stressEquilibriumTerm A.strainCompatibilityTerm

end EarthScienceStructuralGeologyCanonicalLaneLean
end HautevilleHouse
