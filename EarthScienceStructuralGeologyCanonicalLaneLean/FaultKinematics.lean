import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStructuralGeologyCanonicalLaneLean

structure FaultSlipVector where
  strikeSlipRate : ℚ
  dipSlipRate : ℚ
  faultPlaneOrientation : Prop
  slipConsistency : Prop

structure FaultKinematicsPackage where
  faultPlaneGeometry : Prop
  slipVectorDefined : Prop
  kinematicBoundaryCondition : Prop
  displacementGradientCompatible : Prop

structure FaultKinematicsEvidence (F : FaultKinematicsPackage) where
  faultPlaneGeometryClosed : F.faultPlaneGeometry
  slipVectorDefinedClosed : F.slipVectorDefined
  kinematicBoundaryConditionClosed : F.kinematicBoundaryCondition
  displacementGradientCompatibleClosed : F.displacementGradientCompatible

def FaultKinematicsClosed (F : FaultKinematicsPackage) : Prop :=
  F.faultPlaneGeometry ∧ F.slipVectorDefined ∧
  F.kinematicBoundaryCondition ∧ F.displacementGradientCompatible

theorem fault_kinematics_closed_from_evidence (F : FaultKinematicsPackage)
    (E : FaultKinematicsEvidence F) : FaultKinematicsClosed F := by
  exact And.intro E.faultPlaneGeometryClosed
    (And.intro E.slipVectorDefinedClosed
      (And.intro E.kinematicBoundaryConditionClosed
        E.displacementGradientCompatibleClosed))

end EarthScienceStructuralGeologyCanonicalLaneLean
end HautevilleHouse