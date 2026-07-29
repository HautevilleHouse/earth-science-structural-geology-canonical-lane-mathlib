import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStructuralGeologyCanonicalLaneLean

def gateClosed (A : StressStrainAdmissibleClass) : Prop :=
  A.stressEquilibrium ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : StressStrainAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EarthScienceStructuralGeologyCanonicalLaneLean
end HautevilleHouse
