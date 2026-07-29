import canonicalLaneMathlib.AdmissibleClass
import EarthScienceStructuralGeologyCanonicalLaneLean.BridgeLemmas
import EarthScienceStructuralGeologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EarthScienceStructuralGeologyCanonicalLaneLean

def ConstrainedStructuralGeologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_structural_geology_endgame (A : AdmissibleClass) :
    ConstrainedStructuralGeologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceStructuralGeologyCanonicalLaneLean
end HautevilleHouse