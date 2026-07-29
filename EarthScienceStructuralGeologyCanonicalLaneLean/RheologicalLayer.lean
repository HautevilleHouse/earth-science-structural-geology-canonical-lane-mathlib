import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStructuralGeologyCanonicalLaneLean

structure RheologicalLayerPackage where
  layerGeometry : Prop
  stressStrainRelation : Prop
  viscosityStructure : Prop
  yieldCriterion : Prop

structure RheologicalLayerEvidence (R : RheologicalLayerPackage) where
  layerGeometryClosed : R.layerGeometry
  stressStrainRelationClosed : R.stressStrainRelation
  viscosityStructureClosed : R.viscosityStructure
  yieldCriterionClosed : R.yieldCriterion

def RheologicalLayerClosed (R : RheologicalLayerPackage) : Prop :=
  R.layerGeometry ∧ R.stressStrainRelation ∧
  R.viscosityStructure ∧ R.yieldCriterion

theorem rheological_layer_closed_from_evidence (R : RheologicalLayerPackage)
    (E : RheologicalLayerEvidence R) : RheologicalLayerClosed R := by
  exact And.intro E.layerGeometryClosed
    (And.intro E.stressStrainRelationClosed
      (And.intro E.viscosityStructureClosed E.yieldCriterionClosed))

end EarthScienceStructuralGeologyCanonicalLaneLean
end HautevilleHouse