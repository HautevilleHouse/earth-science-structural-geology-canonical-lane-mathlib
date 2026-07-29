import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStructuralGeologyCanonicalLaneLean

structure RheologyAndDeformationPackage where
  strainRate : Type u
  stressStrainRelation : Type v
  viscousConstitutiveLaw : Prop
  powerLawExponent : ℝ
  activationEnergy : ℝ
  temperatureField : Type w
  deformationMechanismMap : Prop

structure RheologyAndDeformationEvidence (R : RheologyAndDeformationPackage) where
  viscousConstitutiveLawClosed : R.viscousConstitutiveLaw
  deformationMechanismMapClosed : R.deformationMechanismMap

def RheologyAndDeformationClosed (R : RheologyAndDeformationPackage) : Prop :=
  R.viscousConstitutiveLaw ∧ R.deformationMechanismMap

theorem rheology_and_deformation_closed_from_evidence (R : RheologyAndDeformationPackage)
    (E : RheologyAndDeformationEvidence R) : RheologyAndDeformationClosed R :=
  And.intro E.viscousConstitutiveLawClosed E.deformationMechanismMapClosed

end EarthScienceStructuralGeologyCanonicalLaneLean
end HautevilleHouse