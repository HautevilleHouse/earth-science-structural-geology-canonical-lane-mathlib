import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStructuralGeologyCanonicalLaneLean

structure PaleostressAnalysisPackage where
  faultSlipData : Prop
  stressInversionMethod : Prop
  principalStressOrientations : Prop
  stressRatio : Prop
  qualityAssessment : Prop

structure PaleostressAnalysisEvidence (P : PaleostressAnalysisPackage) where
  faultSlipDataClosed : P.faultSlipData
  stressInversionMethodClosed : P.stressInversionMethod
  principalStressOrientationsClosed : P.principalStressOrientations
  stressRatioClosed : P.stressRatio
  qualityAssessmentClosed : P.qualityAssessment

def PaleostressAnalysisClosed (P : PaleostressAnalysisPackage) : Prop :=
  P.faultSlipData ∧ P.stressInversionMethod ∧ P.principalStressOrientations ∧
  P.stressRatio ∧ P.qualityAssessment

theorem paleostress_analysis_closed_from_evidence (P : PaleostressAnalysisPackage)
    (E : PaleostressAnalysisEvidence P) : PaleostressAnalysisClosed P := by
  exact And.intro E.faultSlipDataClosed
    (And.intro E.stressInversionMethodClosed
      (And.intro E.principalStressOrientationsClosed
        (And.intro E.stressRatioClosed E.qualityAssessmentClosed)))

end EarthScienceStructuralGeologyCanonicalLaneLean
end HautevilleHouse