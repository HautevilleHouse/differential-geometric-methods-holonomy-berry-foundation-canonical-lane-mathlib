import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean

structure HolonomyBundlePackage where
  baseManifold : Type u
  totalSpace : Type v
  structureGroup : Type w
  connection : Type x
  curvatureForm : Type y
  parallelTransport : Prop
  holonomyGroup : Prop
  ambjorkRestriction : Prop
  berryPhase : Prop

structure HolonomyBundleEvidence (H : HolonomyBundlePackage) where
  parallelTransportClosed : H.parallelTransport
  holonomyGroupClosed : H.holonomyGroup
  ambjorkRestrictionClosed : H.ambjorkRestriction
  berryPhaseClosed : H.berryPhase

def HolonomyBundleClosed (H : HolonomyBundlePackage) : Prop :=
  H.parallelTransport ∧ H.holonomyGroup ∧ H.ambjorkRestriction ∧ H.berryPhase

theorem holonomy_bundle_closed_from_evidence (H : HolonomyBundlePackage)
    (E : HolonomyBundleEvidence H) : HolonomyBundleClosed H := by
  exact And.intro E.parallelTransportClosed
    (And.intro E.holonomyGroupClosed
      (And.intro E.ambjorkRestrictionClosed E.berryPhaseClosed))

end DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean
end HautevilleHouse