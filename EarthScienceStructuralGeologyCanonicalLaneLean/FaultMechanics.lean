import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStructuralGeologyCanonicalLaneLean

structure FaultMechanicsPackage where
  stressField : Type u
  faultPlaneOrientation : Type v
  slipVector : Type w
  coulombFailureCriterion : Prop
  frictionalCoefficient : ℝ
  cohesion : ℝ
  stressStateAdmissible : Prop

structure FaultMechanicsEvidence (F : FaultMechanicsPackage) where
  coulombFailureCriterionClosed : F.coulombFailureCriterion
  stressStateAdmissibleClosed : F.stressStateAdmissible

def FaultMechanicsClosed (F : FaultMechanicsPackage) : Prop :=
  F.coulombFailureCriterion ∧ F.stressStateAdmissible

theorem fault_mechanics_closed_from_evidence (F : FaultMechanicsPackage)
    (E : FaultMechanicsEvidence F) : FaultMechanicsClosed F :=
  And.intro E.coulombFailureCriterionClosed E.stressStateAdmissibleClosed

end EarthScienceStructuralGeologyCanonicalLaneLean
end HautevilleHouse