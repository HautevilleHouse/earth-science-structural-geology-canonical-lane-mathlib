import EarthScienceStructuralGeologyCanonicalLaneLean.GeologyAdmissibleObjects

namespace HautevilleHouse
namespace EarthScienceStructuralGeologyCanonicalLaneLean

structure StructuralFormationPackage where
  hostRock : Type u
  stressField : Type v
  faultNetwork : Type w
  foldGeometry : Type x
  threeDimensionalEmbedding : Prop
  stressFieldSmooth : Prop
  faultKinematicsWellDefined : Prop
  foldAxialSurfaceContinuous : Prop

structure StructuralFormationEvidence (G : StructuralFormationPackage) where
  threeDimensionalEmbeddingClosed : G.threeDimensionalEmbedding
  stressFieldSmoothClosed : G.stressFieldSmooth
  faultKinematicsWellDefinedClosed : G.faultKinematicsWellDefined
  foldAxialSurfaceContinuousClosed : G.foldAxialSurfaceContinuous

def StructuralFormationClosed (G : StructuralFormationPackage) : Prop :=
  G.threeDimensionalEmbedding ∧ G.stressFieldSmooth ∧
  G.faultKinematicsWellDefined ∧ G.foldAxialSurfaceContinuous

theorem structural_formation_closed_from_evidence
    (G : StructuralFormationPackage) (E : StructuralFormationEvidence G) :
    StructuralFormationClosed G := by
  exact And.intro E.threeDimensionalEmbeddingClosed
    (And.intro E.stressFieldSmoothClosed
      (And.intro E.faultKinematicsWellDefinedClosed E.foldAxialSurfaceContinuousClosed))

end EarthScienceStructuralGeologyCanonicalLaneLean
end HautevilleHouse