import EarthScienceStructuralGeologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStructuralGeologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeologicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EarthScienceStructuralGeologyCanonicalLaneLean
end HautevilleHouse