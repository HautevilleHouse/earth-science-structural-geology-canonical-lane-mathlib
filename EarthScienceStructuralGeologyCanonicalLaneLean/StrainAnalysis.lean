import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStructuralGeologyCanonicalLaneLean

structure StrainEllipsoidPackage where
  principalStretches : Type u
  orientationAngles : Type v
  volumeChange : Prop
  shapeFactor : Prop
  finiteStrainTensor : Prop

structure StrainEllipsoidEvidence (S : StrainEllipsoidPackage) where
  principalStretchesDefined : S.principalStretches
  orientationAnglesDefined : S.orientationAngles
  volumeChangeClosed : S.volumeChange
  shapeFactorClosed : S.shapeFactor
  finiteStrainTensorClosed : S.finiteStrainTensor

def StrainEllipsoidClosed (S : StrainEllipsoidPackage) : Prop :=
  S.principalStretches ∧ S.orientationAngles ∧ S.volumeChange ∧ S.shapeFactor ∧ S.finiteStrainTensor

theorem strain_ellipsoid_closed_from_evidence (S : StrainEllipsoidPackage) (E : StrainEllipsoidEvidence S) :
    StrainEllipsoidClosed S := by
  exact And.intro E.principalStretchesDefined
    (And.intro E.orientationAnglesDefined
      (And.intro E.volumeChangeClosed
        (And.intro E.shapeFactorClosed E.finiteStrainTensorClosed)))

end EarthScienceStructuralGeologyCanonicalLaneLean
end HautevilleHouse