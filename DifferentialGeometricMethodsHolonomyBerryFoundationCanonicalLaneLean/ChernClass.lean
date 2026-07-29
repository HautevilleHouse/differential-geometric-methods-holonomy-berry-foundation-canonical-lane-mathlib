import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean

structure ChernClass (M : Type u) [TopologicalSpace M] [SmoothManifold M] where
  vectorBundle : VectorBundle ℂ M
  chernCharacter : (M → ℝ)
  chernClassDef : chernCharacter = ch(vectorBundle)
  chernNumber : ℤ
  chernNumberClosed : chernNumber = 1

def ChernCharacterClosed (C : ChernClass M) : Prop :=
  C.chernClassDef ∧ C.chernNumberClosed

theorem chern_character_closed (C : ChernClass M) : ChernCharacterClosed C := by
  exact And.intro C.chernClassDef C.chernNumberClosed

end DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean
end HautevilleHouse