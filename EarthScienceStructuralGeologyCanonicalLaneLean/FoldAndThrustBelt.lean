import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStructuralGeologyCanonicalLaneLean

structure FoldAndThrustBeltPackage where
  layerGeometry : Type u
  shorteningDirection : Type v
  foldWavelength : ℝ
  thrustAngle : ℝ
  criticalWedgeTheoryApplicable : Prop
  taperAngle : ℝ
  deformationAdmissible : Prop

structure FoldAndThrustBeltEvidence (B : FoldAndThrustBeltPackage) where
  criticalWedgeTheoryApplicableClosed : B.criticalWedgeTheoryApplicable
  deformationAdmissibleClosed : B.deformationAdmissible

def FoldAndThrustBeltClosed (B : FoldAndThrustBeltPackage) : Prop :=
  B.criticalWedgeTheoryApplicable ∧ B.deformationAdmissible

theorem fold_and_thrust_belt_closed_from_evidence (B : FoldAndThrustBeltPackage)
    (E : FoldAndThrustBeltEvidence B) : FoldAndThrustBeltClosed B :=
  And.intro E.criticalWedgeTheoryApplicableClosed E.deformationAdmissibleClosed

end EarthScienceStructuralGeologyCanonicalLaneLean
end HautevilleHouse