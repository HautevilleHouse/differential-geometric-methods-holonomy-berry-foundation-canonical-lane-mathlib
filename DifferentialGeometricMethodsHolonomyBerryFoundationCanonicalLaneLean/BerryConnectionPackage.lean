import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean.HolonomyCurvaturePackage

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean

structure BerryConnectionPackage (H : HolonomyCurvaturePackage) where
  parameterSpace : Type u
  parameterTopology : TopologicalSpace parameterSpace
  eigenvectorFamily : Type v
  berryConnection : Type w
  berryCurvatureDerived : Type x
  adiabaticTransport : Prop
  berryConnectionDefined : Prop
  curvatureFromBerryConnection : Prop
  holonomyFromBerryConnection : Prop

structure BerryConnectionEvidence {H : HolonomyCurvaturePackage}
    (B : BerryConnectionPackage H) where
  adiabaticTransportClosed : B.adiabaticTransport
  berryConnectionDefinedClosed : B.berryConnectionDefined
  curvatureFromBerryConnectionClosed : B.curvatureFromBerryConnection
  holonomyFromBerryConnectionClosed : B.holonomyFromBerryConnection

def BerryConnectionClosed {H : HolonomyCurvaturePackage}
    (B : BerryConnectionPackage H) : Prop :=
  B.adiabaticTransport ∧ B.berryConnectionDefined ∧
  B.curvatureFromBerryConnection ∧ B.holonomyFromBerryConnection

theorem berry_connection_closed_from_evidence
    {H : HolonomyCurvaturePackage} (B : BerryConnectionPackage H)
    (E : BerryConnectionEvidence B) : BerryConnectionClosed B := by
  exact And.intro E.adiabaticTransportClosed
    (And.intro E.berryConnectionDefinedClosed
      (And.intro E.curvatureFromBerryConnectionClosed
        E.holonomyFromBerryConnectionClosed))

end DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean
end HautevilleHouse