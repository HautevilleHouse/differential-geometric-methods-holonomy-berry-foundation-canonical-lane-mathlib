import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean

structure HolonomyCurvaturePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  connection : Type v
  holonomyGroup : Type w
  curvatureTwoForm : Type x
  berryCurvature : Type y
  smoothManifold : Prop
  connectionSmooth : Prop
  holonomyWellDefined : Prop
  curvatureFromConnection : Prop
  berryPhaseDefined : Prop

structure HolonomyCurvatureEvidence (H : HolonomyCurvaturePackage) where
  smoothManifoldClosed : H.smoothManifold
  connectionSmoothClosed : H.connectionSmooth
  holonomyWellDefinedClosed : H.holonomyWellDefined
  curvatureFromConnectionClosed : H.curvatureFromConnection
  berryPhaseDefinedClosed : H.berryPhaseDefined

def HolonomyCurvatureClosed (H : HolonomyCurvaturePackage) : Prop :=
  H.smoothManifold ∧ H.connectionSmooth ∧ H.holonomyWellDefined ∧
  H.curvatureFromConnection ∧ H.berryPhaseDefined

theorem holonomy_curvature_closed_from_evidence
    (H : HolonomyCurvaturePackage) (E : HolonomyCurvatureEvidence H) :
    HolonomyCurvatureClosed H := by
  exact And.intro E.smoothManifoldClosed
    (And.intro E.connectionSmoothClosed
      (And.intro E.holonomyWellDefinedClosed
        (And.intro E.curvatureFromConnectionClosed
          E.berryPhaseDefinedClosed)))

end DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean
end HautevilleHouse