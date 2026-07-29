import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStructuralGeologyCanonicalLaneLean

structure ShearZoneAnalysisPackage where
  shearZoneGeometry : Type u
  shearZoneWidth : ℝ
  shearStrain : ℝ
  simpleShearModel : Prop
  kinematicVorticity : ℝ
  deformationLocalization : Prop
  shearZoneAdmissible : Prop

structure ShearZoneAnalysisEvidence (S : ShearZoneAnalysisPackage) where
  simpleShearModelClosed : S.simpleShearModel
  shearZoneAdmissibleClosed : S.shearZoneAdmissible

def ShearZoneAnalysisClosed (S : ShearZoneAnalysisPackage) : Prop :=
  S.simpleShearModel ∧ S.shearZoneAdmissible

theorem shear_zone_analysis_closed_from_evidence (S : ShearZoneAnalysisPackage)
    (E : ShearZoneAnalysisEvidence S) : ShearZoneAnalysisClosed S :=
  And.intro E.simpleShearModelClosed E.shearZoneAdmissibleClosed

end EarthScienceStructuralGeologyCanonicalLaneLean
end HautevilleHouse