import EarthScienceStructuralGeologyCanonicalLaneLean.StructuralFormation

namespace HautevilleHouse
namespace EarthScienceStructuralGeologyCanonicalLaneLean

structure FoldMechanismsPackage {G : StructuralFormationPackage} where
  axialSurface : Type u
  hingeLine : Type v
  interlimbAngle : Prop
  foldStyle : Prop
  bucklingOrBending : Prop

structure FoldMechanismsEvidence {G : StructuralFormationPackage}
    (F : FoldMechanismsPackage G) where
  interlimbAngleClosed : F.interlimbAngle
  foldStyleClosed : F.foldStyle
  bucklingOrBendingClosed : F.bucklingOrBending

def FoldMechanismsClosed {G : StructuralFormationPackage}
    (F : FoldMechanismsPackage G) : Prop :=
  F.interlimbAngle ∧ F.foldStyle ∧ F.bucklingOrBending

theorem fold_mechanisms_closed_from_evidence
    {G : StructuralFormationPackage} (F : FoldMechanismsPackage G)
    (E : FoldMechanismsEvidence F) : FoldMechanismsClosed F := by
  exact And.intro E.interlimbAngleClosed
    (And.intro E.foldStyleClosed E.bucklingOrBendingClosed)

end EarthScienceStructuralGeologyCanonicalLaneLean
end HautevilleHouse