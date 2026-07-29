import canonicalLaneMathlib.AdmissibleClass
import EarthScienceStructuralGeologyCanonicalLaneLean.FaultMechanicsBridge

namespace HautevilleHouse
namespace EarthScienceStructuralGeologyCanonicalLaneLean

structure FoldFaultInteractionPackage where
  foldGeometryAdmissible : Prop
  faultKinematicsAdmissible : Prop
  interactionMechanismAdmissible : Prop
  overprintingPreserved : Prop

structure FoldFaultInteractionEvidence (I : FoldFaultInteractionPackage) where
  foldGeometryAdmissibleClosed : I.foldGeometryAdmissible
  faultKinematicsAdmissibleClosed : I.faultKinematicsAdmissible
  interactionMechanismAdmissibleClosed : I.interactionMechanismAdmissible
  overprintingPreservedClosed : I.overprintingPreserved

def FoldFaultInteractionClosed (I : FoldFaultInteractionPackage) : Prop :=
  I.foldGeometryAdmissible ∧ I.faultKinematicsAdmissible ∧
  I.interactionMechanismAdmissible ∧ I.overprintingPreserved

theorem fold_fault_interaction_closed_from_evidence
    (I : FoldFaultInteractionPackage) (E : FoldFaultInteractionEvidence I) :
    FoldFaultInteractionClosed I := by
  exact And.intro E.foldGeometryAdmissibleClosed
    (And.intro E.faultKinematicsAdmissibleClosed
      (And.intro E.interactionMechanismAdmissibleClosed E.overprintingPreservedClosed))

end EarthScienceStructuralGeologyCanonicalLaneLean
end HautevilleHouse
