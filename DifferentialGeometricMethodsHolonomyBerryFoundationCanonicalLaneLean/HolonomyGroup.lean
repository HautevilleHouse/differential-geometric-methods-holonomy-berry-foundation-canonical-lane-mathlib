import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean

structure HolonomyPackage where
  baseManifold : Type u
  topology : TopologicalSpace baseManifold
  connection : Type v
  holonomyGroup : Type w
  restrictedHolonomy : Type x
  parallelTransport : Prop
  loopComposition : Prop
  holonomyInvariant : Prop
  reductionTheorem : Prop

structure HolonomyEvidence (H : HolonomyPackage) where
  parallelTransportClosed : H.parallelTransport
  loopCompositionClosed : H.loopComposition
  holonomyInvariantClosed : H.holonomyInvariant
  reductionTheoremClosed : H.reductionTheorem

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.parallelTransport ∧ H.loopComposition ∧ H.holonomyInvariant ∧ H.reductionTheorem

theorem holonomy_closed_from_evidence (H : HolonomyPackage) (E : HolonomyEvidence H) :
    HolonomyClosed H := by
  exact And.intro E.parallelTransportClosed
    (And.intro E.loopCompositionClosed
      (And.intro E.holonomyInvariantClosed E.reductionTheoremClosed))

end DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean
end HautevilleHouse