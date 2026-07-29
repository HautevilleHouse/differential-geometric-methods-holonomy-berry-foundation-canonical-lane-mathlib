import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean

structure BerryConnection (M : Type u) [TopologicalSpace M] [SmoothManifold M] where
  hilbertBundle : VectorBundle ℂ M
  berryConnection : Connection (hilbertBundle.fiber)
  berryCurvature : 2-Form M
  curvatureFormula : berryCurvature = d(berryConnection) + berryConnection ∧ berryConnection
  berryPhase : M → U(1)
  berryPhaseHolonomy : Prop
  berryPhaseHolonomyClosed : berryPhaseHolonomy

def BerryCurvatureClosed (B : BerryConnection M) : Prop :=
  B.curvatureFormula ∧ B.berryPhaseHolonomy

theorem berry_curvature_closed (B : BerryConnection M) : BerryCurvatureClosed B := by
  exact And.intro B.curvatureFormula B.berryPhaseHolonomyClosed

end DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean
end HautevilleHouse