import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean

structure HolonomyBerryAdmittedObject where
  manifold : Type u
  topology : TopologicalSpace manifold
  connection : Type v
  holonomyGroup : Type w
  berryPhase : Type x
  curvatureInvariant : Type y
  parallelTransportDefined : Prop
  holonomyClosedLoopCondition : Prop
  berryPhaseGeometricInterpretation : Prop
  curvatureInvariantDerived : Prop
  conclusion : holonomyClosedLoopCondition ∧ berryPhaseGeometricInterpretation ∧ curvatureInvariantDerived

structure HolonomyBerryWitnessClosed (O : HolonomyBerryAdmittedObject) : Prop where
  holonomyClosed : O.holonomyClosedLoopCondition
  berryClosed : O.berryPhaseGeometricInterpretation
  curvatureClosed : O.curvatureInvariantDerived

def HolonomyBerryWitnessClosed (O : HolonomyBerryAdmittedObject) : Prop :=
  O.holonomyClosedLoopCondition ∧ O.berryPhaseGeometricInterpretation ∧ O.curvatureInvariantDerived

end DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean
end HautevilleHouse