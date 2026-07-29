import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean

structure ConnectionPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  tangentBundle : Type v
  connectionForm : Type w
  curvatureForm : Type x
  smoothManifold : Prop
  connectionSmooth : Prop
  curvatureFromConnection : Prop
  structuralEquation : Prop
  torsionFree : Prop

structure ConnectionEvidence (C : ConnectionPackage) where
  smoothManifoldClosed : C.smoothManifold
  connectionSmoothClosed : C.connectionSmooth
  curvatureFromConnectionClosed : C.curvatureFromConnection
  structuralEquationClosed : C.structuralEquation
  torsionFreeClosed : C.torsionFree

def ConnectionClosed (C : ConnectionPackage) : Prop :=
  C.smoothManifold ∧ C.connectionSmooth ∧ C.curvatureFromConnection ∧
  C.structuralEquation ∧ C.torsionFree

theorem connection_closed_from_evidence (C : ConnectionPackage) (E : ConnectionEvidence C) :
    ConnectionClosed C := by
  exact And.intro E.smoothManifoldClosed
    (And.intro E.connectionSmoothClosed
      (And.intro E.curvatureFromConnectionClosed
        (And.intro E.structuralEquationClosed E.torsionFreeClosed)))

end DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean
end HautevilleHouse