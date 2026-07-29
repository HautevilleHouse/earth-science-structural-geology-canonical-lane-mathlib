import EarthScienceStructuralGeologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStructuralGeologyCanonicalLaneLean

structure GeologicSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GeologicAdmittedObject where
  space : GeologicSpace
  domainBoundary : Prop
  structuralStrain : Prop
  faultModel : Type
  faultTopology : TopologicalSpace faultModel
  deformationCompatible : Prop
  conclusion : deformationCompatible

structure GeologicEndgameState where
  object : GeologicAdmittedObject

def GeologicWitnessClosed (O : GeologicAdmittedObject) : Prop :=
  O.deformationCompatible

end EarthScienceStructuralGeologyCanonicalLaneLean
end HautevilleHouse