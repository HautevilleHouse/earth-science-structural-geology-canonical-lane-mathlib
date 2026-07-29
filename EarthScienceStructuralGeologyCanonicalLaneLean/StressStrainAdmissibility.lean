import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStructuralGeologyCanonicalLaneLean

structure StressStrainAdmissibleClass where
  object : StructuralAdmittedObject
  stressEquilibrium : Prop
  strainCompatibility : Prop
  constitutiveLaw : stressEquilibrium → strainCompatibility → Prop
  gateWitness : (stressEquilibrium ∧ strainCompatible) ∨ (remainderRecorded)
  stressEquilibriumTerm : stressEquilibrium
  strainCompatibilityTerm : strainCompatibility
  strainCompatible : Prop

end EarthScienceStructuralGeologyCanonicalLaneLean
end HautevilleHouse
