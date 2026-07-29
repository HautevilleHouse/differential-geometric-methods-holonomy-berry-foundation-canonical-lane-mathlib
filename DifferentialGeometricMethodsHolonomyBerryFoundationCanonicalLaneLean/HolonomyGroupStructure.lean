import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean

structure HolonomyGroupStructure where
  manifold : Type u
  topology : TopologicalSpace manifold
  connection : Type v
  holonomyGroup : Type w
  reducedHolonomyGroup : Type x
  AmbroseSingerTheorem : Prop
  holonomyInvariantSubspace : Prop
  curvatureGeneratesHolonomy : Prop
  AmbroseSingerTheoremTerm : AmbroseSingerTheorem
  holonomyInvariantSubspaceTerm : holonomyInvariantSubspace
  curvatureGeneratesHolonomyTerm : curvatureGeneratesHolonomy
  conclusion : AmbroseSingerTheorem ∧ holonomyInvariantSubspace ∧ curvatureGeneratesHolonomy

end DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean
end HautevilleHouse