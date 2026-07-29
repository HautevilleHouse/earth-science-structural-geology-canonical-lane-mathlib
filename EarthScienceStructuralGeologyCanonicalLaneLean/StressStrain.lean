import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStructuralGeologyCanonicalLaneLean

structure StressStrainPackage where
  stressTensor : Prop
  strainTensor : Prop
  constitutiveLaw : Prop
  elasticityModulus : Prop
  plasticDeformation : Prop

structure StressStrainEvidence (S : StressStrainPackage) where
  stressTensorClosed : S.stressTensor
  strainTensorClosed : S.strainTensor
  constitutiveLawClosed : S.constitutiveLaw
  elasticityModulusClosed : S.elasticityModulus
  plasticDeformationClosed : S.plasticDeformation

def StressStrainClosed (S : StressStrainPackage) : Prop :=
  S.stressTensor ∧ S.strainTensor ∧ S.constitutiveLaw ∧
  S.elasticityModulus ∧ S.plasticDeformation

theorem stress_strain_closed_from_evidence (S : StressStrainPackage)
    (E : StressStrainEvidence S) : StressStrainClosed S := by
  exact And.intro E.stressTensorClosed
    (And.intro E.strainTensorClosed
      (And.intro E.constitutiveLawClosed
        (And.intro E.elasticityModulusClosed E.plasticDeformationClosed)))

end EarthScienceStructuralGeologyCanonicalLaneLean
end HautevilleHouse