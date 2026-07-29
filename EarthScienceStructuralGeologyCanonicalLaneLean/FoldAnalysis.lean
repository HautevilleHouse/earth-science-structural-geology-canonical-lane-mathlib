import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStructuralGeologyCanonicalLaneLean

structure FoldAnalysisPackage where
  foldGeometry : Prop
  axialSurfaceOrientation : Prop
  interlimbAngle : Prop
  hingeLine : Prop
  foldStyle : Prop

structure FoldAnalysisEvidence (F : FoldAnalysisPackage) where
  foldGeometryClosed : F.foldGeometry
  axialSurfaceOrientationClosed : F.axialSurfaceOrientation
  interlimbAngleClosed : F.interlimbAngle
  hingeLineClosed : F.hingeLine
  foldStyleClosed : F.foldStyle

def FoldAnalysisClosed (F : FoldAnalysisPackage) : Prop :=
  F.foldGeometry ∧ F.axialSurfaceOrientation ∧ F.interlimbAngle ∧
  F.hingeLine ∧ F.foldStyle

theorem fold_analysis_closed_from_evidence (F : FoldAnalysisPackage)
    (E : FoldAnalysisEvidence F) : FoldAnalysisClosed F := by
  exact And.intro E.foldGeometryClosed
    (And.intro E.axialSurfaceOrientationClosed
      (And.intro E.interlimbAngleClosed
        (And.intro E.hingeLineClosed E.foldStyleClosed)))

end EarthScienceStructuralGeologyCanonicalLaneLean
end HautevilleHouse