import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStructuralGeologyCanonicalLaneLean

structure FoldGeometryPackage where
  hingeLine : Type u
  axialSurface : Type v
  limbDipAngles : Prop
  interlimbAngle : Prop
  foldStyle : Prop

structure FoldGeometryEvidence (F : FoldGeometryPackage) where
  hingeLineClosed : F.hingeLine
  axialSurfaceClosed : F.axialSurface
  limbDipAnglesClosed : F.limbDipAngles
  interlimbAngleClosed : F.interlimbAngle
  foldStyleClosed : F.foldStyle

def FoldGeometryClosed (F : FoldGeometryPackage) : Prop :=
  F.hingeLine ∧ F.axialSurface ∧ F.limbDipAngles ∧ F.interlimbAngle ∧ F.foldStyle

theorem fold_geometry_closed_from_evidence (F : FoldGeometryPackage) (E : FoldGeometryEvidence F) :
    FoldGeometryClosed F := by
  exact And.intro E.hingeLineClosed
    (And.intro E.axialSurfaceClosed
      (And.intro E.limbDipAnglesClosed
        (And.intro E.interlimbAngleClosed E.foldStyleClosed)))

end EarthScienceStructuralGeologyCanonicalLaneLean
end HautevilleHouse