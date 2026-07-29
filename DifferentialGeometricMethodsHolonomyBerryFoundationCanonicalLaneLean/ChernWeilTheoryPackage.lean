import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean.BerryConnectionPackage

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean

structure ChernWeilTheoryPackage {H : HolonomyCurvaturePackage}
    (B : BerryConnectionPackage H) where
  characteristicClasses : Type u
  chernForms : Type v
  chernNumbers : Type w
  chernWeilTheorem : Prop
  curvatureInvariants : Prop
  topologicalQuantization : Prop
  chernWeilTheoremClosed : chernWeilTheorem
  curvatureInvariantsClosed : curvatureInvariants
  topologicalQuantizationClosed : topologicalQuantization

structure ChernWeilTheoryEvidence {H : HolonomyCurvaturePackage}
    {B : BerryConnectionPackage H} (C : ChernWeilTheoryPackage B) where
  chernWeilTheoremClosed : C.chernWeilTheorem
  curvatureInvariantsClosed : C.curvatureInvariants
  topologicalQuantizationClosed : C.topologicalQuantization

def ChernWeilTheoryClosed {H : HolonomyCurvaturePackage}
    {B : BerryConnectionPackage H} (C : ChernWeilTheoryPackage B) : Prop :=
  C.chernWeilTheorem ∧ C.curvatureInvariants ∧ C.topologicalQuantization

theorem chern_weil_theory_closed_from_evidence
    {H : HolonomyCurvaturePackage} {B : BerryConnectionPackage H}
    (C : ChernWeilTheoryPackage B) (E : ChernWeilTheoryEvidence C) :
    ChernWeilTheoryClosed C := by
  exact And.intro E.chernWeilTheoremClosed
    (And.intro E.curvatureInvariantsClosed E.topologicalQuantizationClosed)

end DifferentialGeometricMethodsHolonomyBerryFoundationCanonicalLaneLean
end HautevilleHouse