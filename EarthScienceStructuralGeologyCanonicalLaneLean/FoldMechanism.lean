import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStructuralGeologyCanonicalLaneLean

structure FoldMechanismPackage where
  bucklingInstability : Prop
  foldGeometry : Prop
  hingeZoneProcesses : Prop
  limbRotationKinematics : Prop

structure FoldMechanismEvidence (F : FoldMechanismPackage) where
  bucklingInstabilityClosed : F.bucklingInstability
  foldGeometryClosed : F.foldGeometry
  hingeZoneProcessesClosed : F.hingeZoneProcesses
  limbRotationKinematicsClosed : F.limbRotationKinematics

def FoldMechanismClosed (F : FoldMechanismPackage) : Prop :=
  F.bucklingInstability ∧ F.foldGeometry ∧
  F.hingeZoneProcesses ∧ F.limbRotationKinematics

theorem fold_mechanism_closed_from_evidence (F : FoldMechanismPackage)
    (E : FoldMechanismEvidence F) : FoldMechanismClosed F := by
  exact And.intro E.bucklingInstabilityClosed
    (And.intro E.foldGeometryClosed
      (And.intro E.hingeZoneProcessesClosed E.limbRotationKinematicsClosed))

end EarthScienceStructuralGeologyCanonicalLaneLean
end HautevilleHouse