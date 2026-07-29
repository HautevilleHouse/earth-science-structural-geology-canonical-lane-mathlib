import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStructuralGeologyCanonicalLaneLean

structure BrittleDuctileTransitionPackage where
  depth : ℝ
  temperature : ℝ
  pressure : ℝ
  strainRate : ℝ
  byerleeLawApplicable : Prop
  dislocationCreepLaw : Prop
  transitionDepthRange : ℝ × ℝ
  transitionAdmissible : Prop

structure BrittleDuctileTransitionEvidence (B : BrittleDuctileTransitionPackage) where
  byerleeLawApplicableClosed : B.byerleeLawApplicable
  dislocationCreepLawClosed : B.dislocationCreepLaw
  transitionAdmissibleClosed : B.transitionAdmissible

def BrittleDuctileTransitionClosed (B : BrittleDuctileTransitionPackage) : Prop :=
  B.byerleeLawApplicable ∧ B.dislocationCreepLaw ∧ B.transitionAdmissible

theorem brittle_ductile_transition_closed_from_evidence (B : BrittleDuctileTransitionPackage)
    (E : BrittleDuctileTransitionEvidence B) : BrittleDuctileTransitionClosed B :=
  And.intro E.byerleeLawApplicableClosed
    (And.intro E.dislocationCreepLawClosed E.transitionAdmissibleClosed)

end EarthScienceStructuralGeologyCanonicalLaneLean
end HautevilleHouse