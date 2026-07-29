import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStructuralGeologyCanonicalLaneLean

structure ShearZonePackage where
  shearZoneWidth : Type u
  shearStrainProfile : Type v
  vorticityNumber : Prop
  kinematicVorticity : Prop
  pureShearRatio : Prop

structure ShearZoneEvidence (S : ShearZonePackage) where
  shearZoneWidthClosed : S.shearZoneWidth
  shearStrainProfileClosed : S.shearStrainProfile
  vorticityNumberClosed : S.vorticityNumber
  kinematicVorticityClosed : S.kinematicVorticity
  pureShearRatioClosed : S.pureShearRatio

def ShearZoneClosed (S : ShearZonePackage) : Prop :=
  S.shearZoneWidth ∧ S.shearStrainProfile ∧ S.vorticityNumber ∧ S.kinematicVorticity ∧ S.pureShearRatio

theorem shear_zone_closed_from_evidence (S : ShearZonePackage) (E : ShearZoneEvidence S) :
    ShearZoneClosed S := by
  exact And.intro E.shearZoneWidthClosed
    (And.intro E.shearStrainProfileClosed
      (And.intro E.vorticityNumberClosed
        (And.intro E.kinematicVorticityClosed E.pureShearRatioClosed)))

end EarthScienceStructuralGeologyCanonicalLaneLean
end HautevilleHouse