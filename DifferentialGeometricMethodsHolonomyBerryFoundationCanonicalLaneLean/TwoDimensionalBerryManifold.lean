import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean

structure TwoDimensionalBerryManifold where
  baseManifold : Type u
  topology : TopologicalSpace baseManifold
  fiberBundle : Type v
  hermitianStructure : Type w
  berryConnection : Type x
  berryCurvature : Type y
  firstChernClass : Type z
  adiabaticTheoremHolds : Prop
  berryCurvatureClosed : Prop
  firstChernClassQuantized : Prop
  adiabaticTheoremHoldsTerm : adiabaticTheoremHolds
  berryCurvatureClosedTerm : berryCurvatureClosed
  firstChernClassQuantizedTerm : firstChernClassQuantized
  conclusion : berryCurvatureClosed ∧ firstChernClassQuantized ∧ adiabaticTheoremHolds

end DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean
end HautevilleHouse